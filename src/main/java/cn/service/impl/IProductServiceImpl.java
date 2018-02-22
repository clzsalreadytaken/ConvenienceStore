package cn.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dao.IProduct;
import cn.pojo.Product;
import cn.service.IProductService;
@Service("ipsi")
public class IProductServiceImpl implements IProductService {
	@Resource(name="IProduct")
	private IProduct ip;
	
	public IProduct getIp() {
		return ip;
	}

	public void setIp(IProduct ip) {
		this.ip = ip;
	}

	@Override
	public List<Product> getAll() {
		return ip.getAll();
	}

	@Override
	public List<Product> getList(int index) {
		return ip.getList(index);
	}

	@Override
	public int pageTotalCount() {
		return ip.pageTotalCount();
	}

	@Override
	public int addOne(String product_name, float product_purchase,
			float product_sell, String product_unit) {
		return ip.addOne(product_name, product_purchase, product_sell, product_unit);
	}

	@Override
	public int login(String store_uname, String store_pwd) {
		return ip.login(store_uname, store_pwd);
	}

}
