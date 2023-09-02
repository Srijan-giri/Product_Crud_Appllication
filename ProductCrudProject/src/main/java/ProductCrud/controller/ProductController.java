package ProductCrud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import ProductCrud.dao.ProductDao;
import ProductCrud.model.Product;

@Controller
public class ProductController {
	@Autowired
	private ProductDao productDao;

	@RequestMapping("/")
	public String home(Model m)
	{
		
		List<Product> products = productDao.getProductList();
		m.addAttribute("product", products);
		return "index";
	}
	
	// show add product form
	@RequestMapping("/addProduct")
	public String addProduct(Model m)
	{
		m.addAttribute("title","Add Product");
		return "add_product_form";
	}
	
	// handle add product form
	
	@RequestMapping(path="/handle-product", method=RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,
			HttpServletRequest request)
	{
		System.out.println(product);
		this.productDao.createProduct(product);
		RedirectView redirect = new RedirectView();
		redirect.setUrl(request.getContextPath()+"/");
		return redirect;
		
	}
	
	// delete handler
	@RequestMapping("/delete/{id}")
	public RedirectView deleteProduct(@PathVariable("id") int productId,HttpServletRequest request)
	{
		RedirectView redirect = new RedirectView();
		this.productDao.deleteProduct(productId);
		redirect.setUrl(request.getContextPath()+"/");
		return redirect;
	}
	
	// update the product
	@RequestMapping("/update/{id}")
    public String updateForm(@PathVariable("id") int productId,Model m)
    {
		Product product = this.productDao.getProduct(productId);
		m.addAttribute("product", product);
		return "update_form";
    }
}
