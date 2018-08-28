package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.Cart;
import entity.Product;
import entity.User;
import repo.CartRepo;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartRepo repo;

	@Override
	public Cart addToCart(User user, String productId) {
		return repo.addToCart(user, productId);

	}

	@Override
	public Cart remFromCart(User user, String productId) {
		return repo.remFromCart(user, productId);
	}
	@Override
	public Cart showCart(String cartId) {
		
		return repo.showCart(cartId);
	}

}