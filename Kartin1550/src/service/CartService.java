package service;

import entity.Cart;
import entity.Product;
import entity.User;

public interface CartService {

	Cart remFromCart(User user, String productId);

	Cart addToCart(User user, String productId);

	Cart showCart(String cartId);

}
