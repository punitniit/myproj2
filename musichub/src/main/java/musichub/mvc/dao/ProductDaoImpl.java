package musichub.mvc.dao;

import java.util.List;

import musichub.mvc.model.Product;

public interface ProductDaoImpl {

	public void addProductDetail(Product prod);
	public void deleteProduct(Product prod);
	public List<Product> getProductsList();
	
}