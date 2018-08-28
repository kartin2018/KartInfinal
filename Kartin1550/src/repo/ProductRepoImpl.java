package repo;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entity.Product;

@Repository
public class ProductRepoImpl implements ProductRepo {

	@Autowired
	private SessionFactory factory;

	@Override
	public List<Product> searchProduct(String brand) {
		Session session = factory.openSession();
		String hql = "from Product where pbrand='" + brand + "'";
		Query query = session.createQuery(hql);
		return query.list();
	}

	@Override
	public List<Product> displayProduct(String category) {
		Session session = factory.openSession();
		String hql = "from Product where pcategory='" + category + "'";
		Query query = session.createQuery(hql);
		return query.list();
	}

	@Override
	public List<Product> displaysingleProduct(String id) {
		Session session = factory.openSession();
		String hql = "from Product where pid='" + id + "'";
		Query query = session.createQuery(hql);
		return query.list();
	}

	@Override
	public void addProductAdmin(Product product) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			session.save(product);
			txn.commit();
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
		}
	}

	@Override
	public void removeProductAdmin(String productId) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		System.out.println(productId);
		Product product = (Product) session.get(Product.class, productId);

		try {
			String hql = "delete from Product where productId= :productId";
			Query query = session.createQuery(hql).setParameter("productId", productId);

			int res = query.executeUpdate();
			System.out.println(res + "product deleted");
			txn.commit();
		} catch (Exception e) {
			e.printStackTrace();
			txn.rollback();
		}
	}

}
