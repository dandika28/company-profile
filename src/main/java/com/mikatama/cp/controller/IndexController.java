package com.mikatama.cp.controller;

import java.nio.file.Path;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mikatama.cp.service.ContentHomepageService;
import com.mikatama.cp.service.ContentHowWorkService;
import com.mikatama.cp.service.OurCommitmentService;
import com.mikatama.cp.service.OurCultureService;
import com.mikatama.cp.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;

import com.mikatama.cp.bean.ContentHomepage;
import com.mikatama.cp.bean.FileInfo;
import com.mikatama.cp.bean.OrderProduct;
import com.mikatama.cp.bean.Product;
import com.mikatama.cp.bean.ProductImage;
import com.mikatama.cp.bean.User;
import com.mikatama.cp.filestorage.FileStorage;

@Controller
public class IndexController {

	@Autowired
	private OurCultureService ourCultureService;

	@Autowired
	private OurCommitmentService ourCommitmentService;
	
	@Autowired
	private ContentHowWorkService ourWorkService;

	@Autowired
	private ProductService productService;
	
	@Autowired
	private ContentHomepageService contentHomepageService;
	
	@Autowired
	FileStorage fileStorage;
	
	@Value("${path.location.brochure.document}")
	private String pathLocationDocument;
	
	@Value("${path.location.homepage.image}")
	private String pathLocationImageHomePage;
	
	@RequestMapping({ "/", "/home" })
	public ModelAndView home() {
		ModelAndView view = new ModelAndView("home");
		List<FileInfo> fileInfos = fileStorage.loadFiles(pathLocationDocument).map(
				path -> {
					String filename = path.getFileName().toString();
					String url = MvcUriComponentsBuilder.fromMethodName(IndexController.class,
							"downloadFile", path.getFileName().toString()).build().toString();
					return new FileInfo(filename, url);
				}).collect(Collectors.toList());
		
		List<FileInfo> fileInfosImage = fileStorage.loadFiles(pathLocationImageHomePage).map(
				path -> {
					String filename = path.getFileName().toString();
					return new FileInfo(filename, null);
				}).collect(Collectors.toList());
		
		if(fileInfos!=null){
			if(fileInfos.size()>0){
				FileInfo fileInfo = fileInfos.get(fileInfos.size()-1);
				view.addObject("files", fileInfo);
			}
		}
		
		String imageName = "";
		if(fileInfosImage!=null){
			if(fileInfosImage.size()>0){
				FileInfo fileInfo = fileInfosImage.get(fileInfosImage.size()-1);
				imageName = fileInfo.getFilename();
			}
		}
		
		List<ContentHomepage> list = contentHomepageService.getListContentHomepage();
		
		String urlImage = "/mikatama/assets/pages/media/bg/"+ imageName;
		view.addObject("homeImage", urlImage);
		view.addObject("content", list);
		return view;
	}

	@RequestMapping("/product")
	public ModelAndView catalog() {
		ModelAndView view = new ModelAndView("product");
		List<FileInfo> fileInfos = fileStorage.loadFiles(pathLocationDocument).map(
				path -> {
					String filename = path.getFileName().toString();
					String url = MvcUriComponentsBuilder.fromMethodName(IndexController.class,
							"downloadFile", path.getFileName().toString()).build().toString();
					return new FileInfo(filename, url);
				}).collect(Collectors.toList());
		if(fileInfos!=null){
			if(fileInfos.size()>0){
				FileInfo fileInfo = fileInfos.get(fileInfos.size()-1);
				view.addObject("files", fileInfo);
			}
		}
		view.addObject("productList", productService.getProductList());

		return view;
	}

	@RequestMapping("/culture")
	public ModelAndView culture() {
		ModelAndView view = new ModelAndView("culture");
		List<FileInfo> fileInfos = fileStorage.loadFiles(pathLocationDocument).map(
				path -> {
					String filename = path.getFileName().toString();
					String url = MvcUriComponentsBuilder.fromMethodName(IndexController.class,
							"downloadFile", path.getFileName().toString()).build().toString();
					return new FileInfo(filename, url);
				}).collect(Collectors.toList());
		if(fileInfos!=null){
			if(fileInfos.size()>0){
				FileInfo fileInfo = fileInfos.get(fileInfos.size()-1);
				view.addObject("files", fileInfo);
			}
		}
		view.addObject("ourCultures", ourCultureService.getContentCulture());
		view.addObject("ourCommitments", ourCommitmentService.getCommitmentContent());

		return view;
	}

	@RequestMapping("/how_we_work")
	public ModelAndView howWeWork() {
		ModelAndView view = new ModelAndView("how_we_work");
		List<FileInfo> fileInfos = fileStorage.loadFiles(pathLocationDocument).map(
				path -> {
					String filename = path.getFileName().toString();
					String url = MvcUriComponentsBuilder.fromMethodName(IndexController.class,
							"downloadFile", path.getFileName().toString()).build().toString();
					return new FileInfo(filename, url);
				}).collect(Collectors.toList());
		if(fileInfos!=null){
			if(fileInfos.size()>0){
				FileInfo fileInfo = fileInfos.get(fileInfos.size()-1);
				view.addObject("files", fileInfo);
			}
		}
		view.addObject("ouwWorks", ourWorkService.getContentHowWork());

		return view;
	}
	
	@RequestMapping(value= "/login", method = RequestMethod.GET)
	public ModelAndView test(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("userLogin") User user) {
		ModelAndView modelAndView = new ModelAndView("login");
		
			modelAndView.addObject(
					"userDetail",
					(User) request.getSession().getAttribute(
							"userSession"));
		
		
		return modelAndView;
	}
	
	@RequestMapping("/dashboard")
	public ModelAndView dashboard(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("dashboard");
		
		if(request.getSession().getAttribute("userSession")==null){
        	return mv = new ModelAndView("redirect:/login");
        }
		
		return mv;
	}
	
	@GetMapping(value="detail")
	public ModelAndView detailProduct(HttpServletRequest request, @RequestParam(value="id", required=true) String id,
			@ModelAttribute("orderProcess") OrderProduct orderProcess){
		ModelAndView view = new ModelAndView("product_detail");
		List<ProductImage> lists = productService.getProductImageListByProductId(Integer.parseInt(id));
		view.addObject("moreProducts", productService.getRandomProductByLimit(5));
		view.addObject("productImage", lists);
		view.addObject("product", productService.getProductById(Integer.parseInt(id)));
		return view;
	}
	
	@GetMapping(value="contact")
	public ModelAndView contactUs(HttpServletRequest request, HttpServletResponse response){
		ModelAndView view = new ModelAndView("contactUs");
		List<FileInfo> fileInfos = fileStorage.loadFiles(pathLocationDocument).map(
				path -> {
					String filename = path.getFileName().toString();
					String url = MvcUriComponentsBuilder.fromMethodName(IndexController.class,
							"downloadFile", path.getFileName().toString()).build().toString();
					return new FileInfo(filename, url);
				}).collect(Collectors.toList());
		if(fileInfos!=null){
			if(fileInfos.size()>0){
				FileInfo fileInfo = fileInfos.get(fileInfos.size()-1);
				view.addObject("files", fileInfo);
			}
		}
		return view;
	}
	
	@GetMapping("/download/{filename:.+}")
	public ResponseEntity<Resource> downloadFile(@PathVariable String filename){
		System.out.println("filename in controller: "+filename);
		Resource file = fileStorage.loadFile(filename, pathLocationDocument);
		return ResponseEntity.ok().header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + file.getFilename() + "\"")
				.body(file);
	}

}
