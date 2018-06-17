package com.mikatama.cp.controller;

import java.io.IOException;
import java.net.URI;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mikatama.cp.bean.OrderProcess;
import com.mikatama.cp.bean.Product;
import com.mikatama.cp.bean.ProductAttribute;
import com.mikatama.cp.bean.ProductImage;
import com.mikatama.cp.bean.User;
import com.mikatama.cp.service.OrderProcessService;
import com.mikatama.cp.service.ProductService;

@Controller
public class OrderController {
	
	@Autowired
	OrderProcessService orderService;
	
	@Autowired
	ProductService productService;
	
	@Value("${path.location.image.product}")
	private String UPLOADED_FOLDER;
	
	//private static String UPLOADED_FOLDER = "F://temp//mikatama//";

	@PostMapping("/order")
	public ModelAndView postOrderProduct(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("orderProcess") OrderProcess orderProcess, BindingResult bindingResult){
		
		ModelAndView modelAndView = new ModelAndView("orderProduct");
		
		return modelAndView;
	}
	
	@PostMapping("/confirmation")
	public ModelAndView confirmationOrderProduct(HttpServletRequest request, HttpServletResponse response, 
			@ModelAttribute("orderProcess") OrderProcess orderProcess, BindingResult bindingResult){
		
		ModelAndView modelAndView = new ModelAndView();
		
		//check availibilty product stock
		Product product = productService.getProductById(Integer.parseInt(orderProcess.getProductId()));
		
		if(product.getStock() > 0){
			if(product.getStock()>=orderProcess.getTotal()){
				boolean insertStatus = orderService.insertOrder(orderProcess);
				boolean getStockProduct = productService.amountStockProduct(orderProcess.getTotal(), product.getId());
				modelAndView = new ModelAndView("confirmation");
				if(insertStatus==true && getStockProduct==true){
		    		modelAndView.addObject("success", 1);
				}else{
					modelAndView.addObject("success", 2);
				}
			}else{
				modelAndView.addObject("success", 3);
			}
		}else{
			modelAndView.addObject("success", 3);
		}
		return modelAndView;
	}
	
	@GetMapping("/dashboard/product")
	public ModelAndView dashboardProduct(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("userLogin") User user){
		
		ModelAndView modelAndView = new ModelAndView("dashboardProduct");
		
		if(request.getSession().getAttribute("userSession")==null){
			return modelAndView = new ModelAndView("redirect:/login");
		}
		
		List<Product> products = productService.getProductList();
		for(int i=0;i<products.size();i++){
			if(products.get(i).getProductDesc().length() > 50){
				products.get(i).setProductDesc(products.get(i).getProductDesc().substring(0, 50));
			}
		}
		
		modelAndView.addObject("products", products);
		
		return modelAndView;
	}
	
	@GetMapping("/dashboard/product/detail")
	public ModelAndView getDetailProduct(HttpServletRequest request,
			@RequestParam(value="id", required = true) String id){
		
		ModelAndView view = new ModelAndView("detailProduct");
		
		if(request.getSession().getAttribute("userSession")==null){
        	return view = new ModelAndView("redirect:/login");
        }
		
		view.addObject("product", productService.getProductById(Integer.parseInt(id)));
		return view;
	}
	
	@GetMapping(value = "/dashboard/product/edit")
	public ModelAndView getEditProduct(HttpServletRequest request,
			@RequestParam(value="id", required = true) String id,
			@ModelAttribute("productAttribute") ProductAttribute product){
		
		ModelAndView modelAndView = new ModelAndView("editProduct");
		if(request.getSession().getAttribute("userSession")==null){
        	return modelAndView = new ModelAndView("redirect:/login");
        }
		Product productTemp = productService.getProductById(Integer.parseInt(id));
		ProductAttribute attribute = new ProductAttribute();
		attribute.setId(productTemp.getId());
		attribute.setPrice(product.getPrice());
		attribute.setProductDesc(product.getProductDesc());
		attribute.setProductName(product.getProductName());
		attribute.setStatus(product.getStatus());
		attribute.setStock(product.getStock());
		
		List<ProductImage> productImages = productService.getProductImageListByProductId(Integer.parseInt(id));
		
		modelAndView.addObject("id", id);
		modelAndView.addObject("imageFileName", productTemp.getImage());
		modelAndView.addObject("productAttribute", productService.getProductAttributeById(Integer.parseInt(id)));
		modelAndView.addObject("productImages", productImages);
		return modelAndView;
	}
	
	@PostMapping(value = "/dashboard/product/edit")
	public ModelAndView postEditProduct(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("productAttribute") ProductAttribute product, BindingResult bindingResult){
		
		ModelAndView modelAndView = new ModelAndView("editProduct");
		if(request.getSession().getAttribute("userSession")==null){
        	return modelAndView = new ModelAndView("redirect:/login");
        }
		
		List<String> errorUploadImage = null;
		
		if(product.getProductImages().length > 0){
			errorUploadImage = new ArrayList<>();
			for(int i=0;i<product.getProductImages().length;i++){
				MultipartFile file = product.getProductImages()[i].getFile();
				boolean uploadImageSuccess = singleFileUpload(file);
				if(uploadImageSuccess=false){
					errorUploadImage.add(file.getOriginalFilename());
				}else{
					String nextId = productService.getLatestIdProductImage();
					productService.insertImageProduct(Integer.parseInt(nextId), file.getOriginalFilename());
				}
			}
		}else{
			return modelAndView = new ModelAndView("redirect:/dashboard/product/edit");
		}
		return modelAndView;
	}
	
	@GetMapping(value = "/dashboard/product/add")
	public ModelAndView addProduct(HttpServletRequest request, @ModelAttribute("product") Product product){
		ModelAndView view = new ModelAndView("addProduct");
		
		if(request.getSession().getAttribute("userSession")==null){
        	return view = new ModelAndView("redirect:/login");
        } 
		
		return view;
	}
	
	@GetMapping(value="/dashboard/product/delete")
    public String deleteProduct(HttpServletRequest request, @RequestParam("id") String id){
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return "redirect:/login";
        }
    	
    	productService.deleteProductById(Integer.parseInt(id));
    	return "redirect:/dashboard/product";
    }
	
	@PostMapping(value = "/dashboard/product/add")
	public ModelAndView insertProduct(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("product") Product product, BindingResult bindingResult){
		ModelAndView modelAndView = new ModelAndView("addProduct");
		
		List<String> errorUploadImage = null;
		List<MultipartFile> files = null;
		
		if(!product.getFiles().isEmpty()){
			errorUploadImage = new ArrayList<>();
			files = new ArrayList<MultipartFile>();
			for(MultipartFile file:product.getFiles()){
				boolean uploadImageSuccess = singleFileUpload(file);
				if(uploadImageSuccess=false){
					errorUploadImage.add(file.getOriginalFilename());
				}else{
					files.add(file);
					//String nextId = productService.getLatestIdProductImage();
					//productService.insertImageProduct(Integer.parseInt(nextId), file.getOriginalFilename());
				}
			}
		}
		String nextId = "";
		if(errorUploadImage!=null){
			nextId = productService.getLatestIdProductImage();
			product.setImage(product.getFiles().get(0).getOriginalFilename());
		}
		
		boolean successInsert = productService.insertProduct(product);
		if(successInsert=true){
			for(MultipartFile file:files){
				productService.insertImageProduct(Integer.parseInt(nextId), file.getOriginalFilename());
			}
    		return modelAndView = new ModelAndView("redirect:/dashboard/product");
		}else
    		return modelAndView;
	}
	
	@GetMapping("/dashboard/order")
	public ModelAndView dashboardOrder(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("userLogin") User user){
		
		ModelAndView modelAndView = new ModelAndView("dashboard");
		
		if(request.getSession().getAttribute("userSession")==null){
			return modelAndView = new ModelAndView("redirect:/login");
		}
		
		List<OrderProcess> list = orderService.getOrderProcess();
		
		modelAndView.addObject("orders", list);
		
		return modelAndView;
	}
	
	@GetMapping(value = "/dashboard/order/edit")
	public ModelAndView getEditOrder(HttpServletRequest request,
			@RequestParam(value="id", required = true) String id,
			@ModelAttribute("orderProcess") OrderProcess order){
		
		ModelAndView modelAndView = new ModelAndView("editOrder");
		if(request.getSession().getAttribute("userSession")==null){
        	return modelAndView = new ModelAndView("redirect:/login");
        }
		
		OrderProcess orderProcess = orderService.getOrderById(Integer.parseInt(id));
		Product product = productService.getProductById(Integer.parseInt(orderProcess.getProductId()));
		
		modelAndView.addObject("userDetail", (User) request.getSession().getAttribute("userSession"));
		modelAndView.addObject("orderProcess", orderProcess);
		modelAndView.addObject("id", id);
		modelAndView.addObject("productName", product.getProductName());
		modelAndView.addObject("image", orderProcess.getImageName());
		return modelAndView;
	}
	
	@PostMapping(value = "/dashboard/order/edit")
	public ModelAndView postEditOrder(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("orderProcess") OrderProcess order, BindingResult bindingResult){
		
		ModelAndView modelAndView = new ModelAndView("editOrder");
		if(request.getSession().getAttribute("userSession")==null){
        	return modelAndView = new ModelAndView("redirect:/login");
        }
		
		boolean updateStatus = orderService.updateOrderStatusById(order.getStatus(), Integer.parseInt(order.getOrderId()));
		
		if(updateStatus=true){
			OrderProcess orderProcess = orderService.getOrderById(Integer.parseInt(order.getOrderId()));
			Product product = productService.getProductById(Integer.parseInt(orderProcess.getProductId()));
			modelAndView.addObject("productName", product.getProductName());
			modelAndView.addObject("image", orderProcess.getImageName());
			return modelAndView;
		}else
			return modelAndView = new ModelAndView("redirect:/dashboard/order");
	}
		
	public boolean singleFileUpload(MultipartFile file){
		boolean status = false;
		if (file.isEmpty()) {
            return false;
        }
		
		try {

            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);

            status = true;
        } catch (IOException e) {
            e.printStackTrace();
            status = false;
        }

        return status;
	}
}
