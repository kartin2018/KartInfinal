package repo;

import entity.Cart;
import entity.Orders;
import entity.User;

public interface OrderRepo {
	

	Orders placeOrder(User user, String payment);	
}
