package repo;

import java.util.List;

import org.springframework.stereotype.Repository;

import entity.Product;


public interface ProductRepo {

	List<Product> searchProduct(String brand);
	List<Product> displayProduct(String category);
	List<Product> displaysingleProduct(String id);
	void addProductAdmin(Product product);
	void removeProductAdmin(String productId);
}
