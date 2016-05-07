package musichub.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import musichub.mvc.dao.ProductDao;
import musichub.mvc.model.Product;

@Service("productService")
public class ProductService {

	@Autowired
	ProductDao dao;
	
	public ProductDao getProductDao() {
		
		return dao;
	}
	
	public List<Product> getAllProducts() {
		
		return dao.getProductsList();
		
	}
	
}
