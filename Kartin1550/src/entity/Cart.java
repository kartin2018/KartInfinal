package entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name = "cartk")
public class Cart {
	@Id
	private String cartId;

	@OneToOne
	@JoinColumn(name="email")
	private User user;

	@ManyToMany(cascade = { CascadeType.ALL },fetch= FetchType.EAGER)
	@JoinTable(name = "added_products", joinColumns = { @JoinColumn(name = "cartId") }, inverseJoinColumns = {
			@JoinColumn(name = "pid") })
	private Set<Product> productsCart;

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}


	public Set<Product> getProductsCart() {
		return productsCart;
	}

	public void setProductsCart(Set<Product> productsCart) {
		this.productsCart = productsCart;
	}

	public User getUsers() {
		return user;
	}

	public void setUsers(User user) {
		this.user = user;
	}
	

}
