package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.Product;
import repo.ProductRepo;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepo repo;
	
	@Override
	public List<Product> searchProduct(String brand) {
		return repo.searchProduct(brand);
		
	}
	
	@Override
	public List<Product> displayProduct(String category) {
		return repo.displayProduct(category);
		
	}

	@Override
	public List<Product> displaysingleProduct(String id) {
		return repo.displaysingleProduct(id);
	}
	
	@Override
	public void addProductAdmin(Product product) {
	repo.addProductAdmin(product);

	}
	@Override
	public void removeProductAdmin(String productId) {
		repo.removeProductAdmin(productId);
	}
}
