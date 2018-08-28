package service;

import entity.Cart;
import entity.Orders;
import entity.User;

public interface OrderService {
	

	public Orders placeOrder(User user, String payment);
}
