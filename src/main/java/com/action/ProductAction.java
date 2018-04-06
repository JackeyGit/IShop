package com.action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.pojo.Product;
import com.service.impl.IProductService;
import com.util.GetDate;
import com.util.Upload;

@Controller
public class ProductAction {

	private IProductService productService;
	@Resource(name="productServiceID")
	public void setProductService(IProductService productService) {
		this.productService = productService;
	}
	
	//上传视频
	@RequestMapping(value="addProduct")
	public String uploadProducts(@RequestParam("vurl") CommonsMultipartFile[] files,
			@RequestParam("vname") String[] productNames,HttpServletRequest request,HttpSession session) throws IOException
   {
		String rootlist =null;
		String path ="UploadFile"+File.separator+"products";
		int vcoll=Integer.valueOf(request.getParameter("vcoll"));
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>"+vcoll);
		if ( files.length>0 && productNames.length>0 ) {
			System.out.println(productNames.length+"++++++++++");
			System.out.println(files.length+"++++++++++");
			for (int i = 0; i < files.length; i++){
				if (!files[i].isEmpty()) {
							rootlist=Upload.fileUpload(files[i], path, request);
							String fileName=productNames[i];
							System.out.println(fileName);
							String url =rootlist;
							System.out.println(url);
							Product product =new Product();
							product.setPname(fileName);
							
			productService.addProduct(product);
			}
		}
		}
		return "forward:/Manager.jsp";
  }
	
	
	
	
	//ͨ
	@RequestMapping(value="getProductByID")
	public  String getProductByID(HttpServletRequest request) {
		int id =Integer.parseInt( request.getParameter("id"));
		List<Product> products=productService.findProductByID(id);
		request.setAttribute("products", products);
		for(int i=0 ;i<products.size();i++) {
			System.out.println(products.get(i).getPid());
			
		}
		
		return "Player";
	}
	
	
	
/*	
	@RequestMapping(v="getAllProduct")
	public   Map<String, Object> getProductColls(HttpServletRequest request) {
		final int pagesize =15;
		String strPage = request.getParameter("page");
		if (strPage == null || strPage.trim().length() == 0) {
			strPage = "1";
		}
		Integer nowpage = Integer.parseInt(strPage);
	Page page = productCollService.findAllProductColls(nowpage, pagesize);
		Map<String, Object> map=new LinkedHashMap<String, Object>();
		map.put("total", page.getAllRecordNO());
		map.put("rows", page.getProductColls());
		return map;
	}
	*/
}
	


	
	

