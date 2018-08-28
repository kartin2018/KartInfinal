package ctrl;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import entity.Product;
import service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService service;
	
	
	@RequestMapping("search.do")
	public String searchProduct(@RequestParam("brand") String brand, Map model) {
		model.put("Product", service.searchProduct(brand));
		return "products";
	}
	
	@RequestMapping("category.do")
	public String displayProduct(@RequestParam("category") String category, Map model) {
		model.put("AllProduct", service.displayProduct(category));
		return "allproducts";
	}
	
	@RequestMapping("single.do")
	public String displaysingleProduct(@RequestParam("id") String id, Map model, HttpSession session) {
		//model.put("SingleProduct", service.displaysingleProduct(id));
		/*model.put("AllProduct", service.displayProduct(category));*/
		//service upar vale ki
		//for each 1 list ... 1 to 5 
		session.setAttribute("SingleProduct",service.displaysingleProduct(id) );
		session.setAttribute("Flag", 1);
		return "single";
	}
	
	

	@RequestMapping("productadmin.do")
	public String addProductAdmin(Product product, HttpSession session, Map model) {
		service.addProductAdmin(product);
		model.put("Prompt", "Product has been added");
		return "adminpage";
	}

	@RequestMapping("removeproductadmin.do")
	public String removeProductAdmin(@RequestParam("productId") String productId, HttpSession session, Map model) {
		service.removeProductAdmin(productId);
		model.put("Prompt1", "Product has been removed");
		return "adminpage";
	}
}
