package cn.service;

import java.util.List;

import cn.pojo.Product;

public interface IProductService {
	List<Product> getAll();
	int  addOne(String product_name,float product_purchase,float product_sell,String product_unit);
	List<Product> getList(int index);
	int  pageTotalCount();
	int  login(String store_uname,String store_pwd);
}
