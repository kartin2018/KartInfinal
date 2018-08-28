package repo;

import entity.Cart;
import entity.Product;
import entity.User;

public interface CartRepo {

	

	Cart remFromCart(User user, String productId);


	Cart addToCart(User user, String productId);


	Cart showCart(String cartId);
}