package ctrl;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Cart;
import entity.Product;
import entity.User;
import service.CartService;
import service.ProductService;

@Controller
public class CartController {
@Autowired
private CartService service;

@Autowired
private ProductService service2;

	@RequestMapping("products.do")
	public String addToCart(@RequestParam("productId") String productId,Map model,HttpSession session) {
		
		//getting user from session and getting cart from user
		User user = (User) session.getAttribute("User");
		
		
		//redirecting to service for adding to cart 
		Cart cart = service.addToCart(user,productId);
		
		model.put("Added", "added successfully");
		String id = productId;
		model.put("SingleProduct", service2.displaysingleProduct(id));
		return "single";
		
}
	@RequestMapping("remproduct.do")
	public String remFromCart(@RequestParam("productId") String productId,Map model,HttpSession session) {
		
		//getting user from session and getting cart from user
		User user = (User) session.getAttribute("User");
		
		
		//redirecting to service for removing from cart 
		Cart cart = service.remFromCart(user,productId);
		model.put("removed", "Removed successfully");
	
		model.put("Cart", service.showCart(user.getCart().getCartId()));
		return "cart";
		
}
	@RequestMapping("cart.do")
	public String showCart(Map model, HttpSession session) {
		User user = (User) session.getAttribute("User");
		model.put("Cart", service.showCart(user.getCart().getCartId()));
	
		return "cart";
	}
/*
	@RequestMapping("guestproducts.do")
	public String redirection(@RequestParam("productId") String product, Map model, HttpSession session) {
		session.setAttribute("guestproduct", product);
		return "login";
	}*/
}
