package ctrl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Cart;
import entity.Orders;
import entity.Product;
import entity.User;
import service.CartService;
import service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService service;

	@RequestMapping("order.do")
	public String placeOrder (@RequestParam("payment")String payment, Map model, HttpSession session) {
		/*if(payment==null)
		 payment="card";*/
		// getting user from session and getting cart from user
		User user = (User) session.getAttribute("User");
		System.out.println("UserId is" + user.getEmail());
		Cart cart = user.getCart();
		System.out.println("Cart Id is" + cart.getCartId());
		
		Set<Product> products = new HashSet<Product>();
		products = cart.getProductsCart();
		
		System.out.println("Cart products are:"+products);
		if(!products.isEmpty())
		session.setAttribute("Orderprod", products);
		
		Orders order = service.placeOrder(user, payment);
		String o = Integer.toString(order.getOrderPrice());

		session.setAttribute("oid", order.getOrderId());
		session.setAttribute("oprice", o);
		session.setAttribute("mno", user.getContact());

		return "order";

	}
	


	@RequestMapping("invoice.do")
	public String pdf(Map model, HttpSession session) {
		User user = (User) session.getAttribute("User");
		Orders order = (Orders) session.getAttribute("Order");
		List<Orders> oList = new ArrayList<Orders>();
		oList = user.getOrder();
		// order.getOrderId();
		System.out.println(oList.get(oList.size() - 1));
		model.put("Order", oList.get(oList.size() - 1));

		return "invoice";

	}
	
	@RequestMapping("orderpayment.do")
	public String orderpayment (Map model, HttpSession session) {
		// getting user from session and getting cart from user
		User user = (User) session.getAttribute("User");
		Cart cart = user.getCart();
		int totalcost=0;
		 for(Product products: cart.getProductsCart()) {
			   totalcost += products.getProductPrice();
		 }
		 if(totalcost!=0)
		 session.setAttribute("Totalcost", totalcost);
		
		return "payment";
	}
}
