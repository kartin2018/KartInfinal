package repo;

import java.util.Date;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entity.Cart;
import entity.Orders;
import entity.Product;
import entity.User;

@Repository
public class OrderRepoImpl implements OrderRepo {

	@Autowired
	private SessionFactory factory;

	@Override
	public Orders placeOrder(User user,	String payment) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		System.out.println("session start");
		Cart cart = user.getCart();
		/* Product product= (Product) session.get(Product.class, productId); */
		Random random = new Random();
		int count = random.nextInt(900000) + 100000;
		Orders order = new Orders();
		order.setOrderId("OR0" + Integer.toString(count));
		order.setPaymentMode(payment);
		order.setTStamp(new Date());

		int totalcost=0;
		  for(Product products: cart.getProductsCart()) {
			 
			  totalcost += products.getProductPrice();
		  }
		order.setOrderPrice(totalcost);
		order.setUser(user);
		user.getOrder().add(order);

		Set<Product> product = new HashSet<Product>();
		cart.setProductsCart(product);

		session.save(order);
		session.update(user);
		txn.commit();
		session.close();
		return order;

	}

}
