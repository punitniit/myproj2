package musichub.mvc.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import musichub.mvc.model.Product;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

@Repository("dao")
public class ProductDao implements ProductDaoImpl{

	@Autowired
	SessionFactory factory;

	public Session getSession(){
		
		return factory.openSession();
				
	}

	public void saveProduct(Product prod) {
		
		Session sess = getSession();
		
		if(sess!=null){
		Transaction tx = sess.beginTransaction();
		System.out.println("Session Object is : "+sess);
		sess.save(prod);
	    System.out.println("Product Object Saved Successfully");
		tx.commit();
		sess.close();
		
		}
	}
    	
public List<Product> getProductsList(){
	
	Session sess = getSession();
	List<Product> products = null;
	
	if(sess!=null){
		
	Transaction tx = sess.beginTransaction();
	System.out.println("Session Object is : "+sess);
	Query query = sess.createQuery("from Product");
	products = (List<Product>)query.list();	
    tx.commit();
	sess.close();
	
	}
	
	return products;
	
	
  }	
}
