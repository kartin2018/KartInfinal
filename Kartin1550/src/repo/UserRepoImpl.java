package repo;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bean.ForgetBean;
import bean.LoginBean;
import entity.Cart;
import entity.Product;
import entity.User;

@Repository
public class UserRepoImpl implements UserRepo {
	@Autowired
	private SessionFactory factory;
	Random random = new Random();
	int count = random.nextInt(900000) + 100000;

	@Override
	public User authenticate(LoginBean login) {
		Session session = factory.openSession();
		User user = (User) session.get(User.class, login.getEmail());
		session.close();
		if (user != null && user.getPassword().equals(login.getPassword()))
			return user;
		else
			return null;
	}

	@Override
	public boolean validate(ForgetBean forget) {
		Session session = factory.openSession();
		User user = (User) session.get(User.class, forget.getEmail());
		session.close();
		if (user != null && user.getEmail().equals(forget.getEmail())) {
			forget.setContact(user.getContact());

			return true;
		}

		else
			return false;
	}

	@Override
	public boolean changePassword(LoginBean change) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			User user = (User) session.get(User.class, change.getEmail());
			user.setPassword(change.getPassword());
			txn.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}
	}

	@Override
	public boolean persist(User user) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();

		try {

			// if usertype is admin dont create cart for him
			if (user.getUserType().equals("Admin")) {
				session.save(user);
				txn.commit();
			}
			else {

			// creating cart for normal users on registration

			// generating cartID
			Cart cart = new Cart();
			cart.setCartId("C0" + Integer.toString(count));

			cart.setUsers(user);
			session.save(user);
			session.save(cart);
			txn.commit();
			}
			/*System.out.println("Cart and user saved");
			System.out.println(count);*/
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
			return false;
		}

	}

	@Override
	public List<Product> displayproducts() {
		Session session = factory.openSession();
		String hql = "from Product";
		Query query = session.createQuery(hql);
		return query.list();

	}

	@Override
	public List<User> showProfile(String email) {
		
		Session session = factory.openSession();
		String hql = "from User where email = :email";
		return session.createQuery(hql).setParameter("email", email).list();
	}

}
