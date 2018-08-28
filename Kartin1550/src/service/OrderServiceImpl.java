package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.Cart;
import entity.Orders;
import entity.User;
import repo.OrderRepo;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderRepo repo;

	

	@Override
	public Orders placeOrder(User user,String payment) {
		return repo.placeOrder(user,payment);
	}

}
