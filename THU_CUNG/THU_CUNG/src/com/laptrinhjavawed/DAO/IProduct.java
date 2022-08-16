package com.laptrinhjavawed.DAO;

import java.util.List;

import com.laptrinhjavawed.model.Product;

public interface IProduct {
	 List<Product> getAllByCateID(String cateID) ;
	 List<Product> getOneOrMoreSpecialDeals(int top,String cateID) ;
	 List<Product> getAllBySearch(String searchTitle) ;
	 Product getOneById(String id) ;
	 List<Product> getAll();
	 int countgetAllProduct();
	 int countgetAllProduct(String cateID);
	 List<Product> getProducByPaging(int input,int param);
	 boolean DeleteProductById(int idProduct);
	 boolean updateProductById(Product p);
	 boolean addOneProduct(Product p);
	 
	 
}
