package musichub.mvc.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import musichub.mvc.model.Product;

@Repository("dao")
public class ProductDao implements ProductDaoImpl{

private List<Product> products = new ArrayList<Product>();

//method to add the product in the list
public void addProductDetail(Product prod){
		
	products.add(prod);
}

//method to remove the product from the list
public void deleteProduct(Product prod){

	products.remove(prod);
	
}

//method to return all the products as list
public List<Product> getProductsList(){
	
	products.add(new Product(1001, "guitar", 3000, "guitar", "A"));
	products.add(new Product(1002, "piano", 4500, "piano", "B"));
	products.add(new Product(1003, "flute", 9000, "flute", "C"));
	products.add(new Product(1004, "tabla", 2500, "tabla", "D"));
	return products;
	
  }	
}
