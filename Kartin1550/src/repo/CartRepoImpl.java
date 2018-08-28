package repo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entity.Cart;
import entity.Product;
import entity.User;

@Repository
public class CartRepoImpl implements CartRepo {

	@Autowired
	private SessionFactory factory;

	@Override
	public Cart addToCart(User user, String productId) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		System.out.println("session start");
		Cart cart = user.getCart();
		Product product = (Product) session.get(Product.class, productId);
		System.out.println("Before Cart Products: " + cart.getProductsCart());

		for (Product product1 : cart.getProductsCart()) {
			if (product1.equals(product)) {
				System.out.println("product already present in cart");
				return cart;
			}
		}

		cart.getProductsCart().add(product);
		System.out.println("After Cart Products: " + cart.getProductsCart());

		session.update(user);
		txn.commit();

		session.close();
		return cart;

	}

	@Override
	public Cart remFromCart(User user, String productId) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		System.out.println("session start");
		Cart cart = user.getCart();
		Product p1 = new Product();
		Product product = (Product) session.get(Product.class, productId);
		System.out.println("Before Cart Products: " + cart.getProductsCart());
		for (Product product1 : cart.getProductsCart()) {
			if (product1.equals(product)) {
				cart.getProductsCart().remove(product);
				System.out.println("Product removed");
				break;
			}else
			{
				System.out.println("product not found");
			}
		}
		System.out.println("abc");
		System.out.println("After Cart Products: " + cart.getProductsCart());
		session.update(user);
		txn.commit();

		session.close();

		return cart;
	}

	@Override
	public Cart showCart(String cartId) {
		System.out.println(cartId);
		Session session = factory.openSession();
		Cart cart = (Cart) session.get(Cart.class, cartId);
		return cart;
	}
}