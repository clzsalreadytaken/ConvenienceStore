package cn.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;

import cn.pojo.Product;
import cn.service.IProductService;
import cn.util.PageProduct;

@Controller
public class IProductController {
	@Resource(name="ipsi")
	private IProductService ips;
	
	public IProductService getIps() {
		return ips;
	}

	public void setIps(IProductService ips) {
		this.ips = ips;
	}
	@RequestMapping(value="getalllist",method=RequestMethod.GET,produces={"application/json;charset=utf-8"})
	@ResponseBody
	public String getAlllist(){
		List<Product> list = ips.getAll();
		String json = JSONArray.toJSONString(list);
		return json;
	}
	@RequestMapping(value="addone",method=RequestMethod.GET,produces={"application/json;charset=utf-8"})
	@ResponseBody
	public int addOnelist(String product_name,float product_purchase,float product_sell,String product_unit){
		//System.out.println(product_name);
		int math = ips.addOne(product_name, product_purchase, product_sell, product_unit);
		return math;
	}
	@RequestMapping(value="getlist",method=RequestMethod.GET,produces={"application/json;charset=utf-8"})
	@ResponseBody
	public ModelAndView getList(int index){
		ModelAndView mav = new ModelAndView();
		
		PageProduct pp = new PageProduct();
		
		pp.setPageSize(10);
		int totalCount = ips.pageTotalCount();
		pp.setTotalCount(totalCount);
		if(index<=1){
			index = 1;
		}else if(index >= pp.getPageTotalCount() ){
			index = pp.getPageTotalCount()   ;
		}
		pp.setIndex(index);
		pp.setPagefirst(index-1);
		pp.setPagelast(index+1);
		if(pp.getPagelast()>=pp.getPageTotalCount()){
			pp.setPagelast(pp.getPageTotalCount());
		}
		if(pp.getPagefirst()==0){
			pp.setPagefirst(1);
			pp.setPagelast(3);
		}
		
		int inde = (index-1)*10;
		List<Product> list = ips.getList(inde);
		String json = JSONArray.toJSONString(list);
		//System.out.println(pp.getPageTotalCount());
		mav.addObject("li", list);
		mav.addObject("page", pp);
		mav.setViewName("StoreProduct");
		return mav;
	}
	@RequestMapping(value="login",method=RequestMethod.GET,produces={"application/json;charset=utf-8"})
	@ResponseBody
	public int login(String store_uname,String store_pwd,HttpServletResponse response,HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException{
		//System.out.println(product_name);
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf–8");
		int math = ips.login(store_uname, store_pwd);
		if(math==1){
			request.getSession().setAttribute("uname", store_uname);
		}
		return math;
	}
}
