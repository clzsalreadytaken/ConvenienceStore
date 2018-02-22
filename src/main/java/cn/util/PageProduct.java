package cn.util;

import java.util.List;

import cn.pojo.Product;

/**
 * 商品分页
 * @author 
 *
 */
public class PageProduct {
	 private int index; // 当前页码
	 private int pageSize ;    // 页面大小，即每页显示记录数
	 private int totalCount;          // 记录总数
	 private int pageTotalCount; // 总页数
	 private int pagefirst;//分页按钮开始
	 private int pagelast;//分页按钮结束
	 
    public int getPagefirst() {
		return pagefirst;
	}
	public void setPagefirst(int pagefirst) {
		this.pagefirst = pagefirst;
	}
	public int getPagelast() {
		return pagelast;
	}
	public void setPagelast(int pagelast) {
		this.pagelast = pagelast;
	}
	List<Product> carlist;

	public List<Product> getCarlist() {
		return carlist;
	}
	public void setCarlist(List<Product> carlist) {
		this.carlist = carlist;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public int getPageSize() {
		return pageSize;
	}
	public int getPageTotalCount() {
		return pageTotalCount;
	}
	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		pageTotalCount = ( totalCount % pageSize == 0 )? 
						 ( totalCount / pageSize ) : 
						 ( ( totalCount / pageSize ) + 1 );
	}

}
