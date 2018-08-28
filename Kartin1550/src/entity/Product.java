package entity;

import java.util.Set;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table (name="productk")
public class Product {
	@Id
	@Column(name="pid")
	private String productId;
	@Column(name="pname")
	private String productName;
	@Column(name="pcategory")
	private String productCategory="watch";
	@Column(name="pdescription")
	private String productDescription;
	@Column(name="pbrand")
	private String productBrand;
	@Column(name="price")
	private int productPrice;
	@Column(name="pimage1")
	private String productImage1;
	@Column(name="pimage2")
	private String productImage2;
	@Column(name="pimage3")
	private String productImage3;
	@Column(name="ptag")
	private String productTag;
	@Column(name="brandimage")
	private String brandImage;
	
	@ManyToMany(mappedBy = "productsCart")
	private Set<Cart> cart;
	
	
	public Set<Cart> getCart() {
		return cart;
	}

	public void setCart(Set<Cart> cart) {
		this.cart = cart;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductBrand() {
		return productBrand;
	}

	public void setProductBrand(String productBrand) {
		this.productBrand = productBrand;
	}

	public int getProductPrice() {
		return productPrice;
	}



	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductImage1() {
		return productImage1;
	}

	public void setProductImage1(String productImage1) {
		this.productImage1 = productImage1;
	}

	public String getProductImage2() {
		return productImage2;
	}

	public void setProductImage2(String productImage2) {
		this.productImage2 = productImage2;
	}

	public String getProductImage3() {
		return productImage3;
	}

	public void setProductImage3(String productImage3) {
		this.productImage3 = productImage3;
	}

	public String getBrandImage() {
		return brandImage;
	}

	public void setBrandImage(String brandImage) {
		this.brandImage = brandImage;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public String getProductTag() {
		return productTag;
	}

	public void setProductTag(String productTag) {
		this.productTag = productTag;
	}
	
	@Override
	public int hashCode() {
	  final int prime = 31;
	  int result = prime + ((productId == null) ? 0 : productId.hashCode());
	  return result;
	}

	@Override
	public boolean equals(Object obj) {
	    if (this == obj)
	      return true;
	    if (obj == null)
	      return false;
	    if (getClass() != obj.getClass())
	      return false;
	    Product other = (Product) obj;
	    if (productId == null) {
	      if (other.productId != null)
	        return false;
	    } else if (!productId.equals(other.productId))
	      return false;
	    return true;
	  }
	
	

}
