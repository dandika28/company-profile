package com.mikatama.cp.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

import com.mikatama.cp.bean.ContentHomepage;
import com.mikatama.cp.bean.ContentHowWork;
import com.mikatama.cp.bean.OurCommitment;
import com.mikatama.cp.bean.OurCulture;
import com.mikatama.cp.bean.User;
import com.mikatama.cp.filestorage.FileStorage;
import com.mikatama.cp.service.ContentHomepageService;
import com.mikatama.cp.service.ContentHowWorkService;
import com.mikatama.cp.service.OurCommitmentService;
import com.mikatama.cp.service.OurCultureService;

@Controller
public class ContentController {
	
	@Autowired
    private OurCultureService ourCultureService;
	
	@Autowired
    private OurCommitmentService ourCommitmentService;
	
	@Autowired
	private ContentHowWorkService contentHowWorkService;
	
	@Autowired
	private ContentHomepageService contentHomepageService;
	
	@Value("${path.location.image.culture}")
	private String UPLOADED_FOLDER;
	
	@Value("${path.location.brochure.document}")
	private String pathLocationDocument;
	
	@Value("${path.location.homepage.image}")
	private String pathLocationImageHomePage;
	
	@Autowired
	FileStorage fileStorage;

    @RequestMapping(value = "/dashboard/content/culture", method = RequestMethod.GET)
    public ModelAndView getOurCulture(HttpServletRequest request, HttpServletResponse response,
                             @ModelAttribute("userLogin") User user) {

        ModelAndView modelAndView = new ModelAndView("ourCulture");
        
        if(request.getSession().getAttribute("userSession")==null){
        	return modelAndView = new ModelAndView("redirect:/login");
        }

        modelAndView.addObject("userDetail", (User) request.getSession().getAttribute("userSession"));
        modelAndView.addObject("ourCultures", ourCultureService.getContentCulture());

        return modelAndView;
    }
    
    @GetMapping(value="/dashboard/content/culture/add")
    public ModelAndView insertOurCulture(HttpServletRequest request, @ModelAttribute("ourCulture") OurCulture ourCulture){
    	 ModelAndView view = new ModelAndView("addOurCulture");
    	 
    	 if(request.getSession().getAttribute("userSession")==null){
         	return view = new ModelAndView("redirect:/login");
         }
    	 
    	 String nextSeqId = ourCultureService.getLatestId();
    	 view.addObject("id", Integer.parseInt(nextSeqId)+1);
    	 
    	 return view;
    }
    
    @PostMapping(value="/dashboard/content/culture/add")
    public ModelAndView insertPostOurCulture(HttpServletRequest request, HttpServletResponse response,
    		@ModelAttribute("ourCulture") OurCulture culture, BindingResult bindingResult){
    	
    	ModelAndView modelAndView = new ModelAndView("addOurCulture");
    	
    	if(request.getSession().getAttribute("userSession")==null){
         	return modelAndView = new ModelAndView("redirect:/login");
         }
    	
    	boolean successInsert = ourCultureService.insertContentCulture(culture);
    	if(successInsert=true)
    		return modelAndView = new ModelAndView("redirect:/dashboard/content/culture");
    	else
    		return modelAndView;
    }
    
    @RequestMapping(value = "/dashboard/content/culture/edit", method = RequestMethod.GET)
    public ModelAndView getEditCulture(HttpServletRequest request, HttpServletResponse response, 
    		@ModelAttribute("ourCulture") OurCulture ourCulture,
    		@RequestParam(value="id", required = true) String id){
    	ModelAndView view = new ModelAndView("editCulture");
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return view = new ModelAndView("redirect:/login");
        }
    	
    	OurCulture culture = ourCultureService.getContentCultureById(Integer.parseInt(id));
    	
    	view.addObject("userDetail", (User) request.getSession().getAttribute("userSession"));
        view.addObject("ourCulture", culture);
        view.addObject("id", id);
    	
    	return view;
    }
    
    @PostMapping(value = "/dashboard/content/culture/edit")
    public ModelAndView getEditCulture(HttpServletRequest request, HttpServletResponse response, 
    		@ModelAttribute("ourCulture") OurCulture ourCulture,
    		BindingResult bindingResult){
    	ModelAndView view = new ModelAndView("editCulture");
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return view = new ModelAndView("redirect:/login");
        }
    	
    	ourCultureService.updateContentCulture(ourCulture);
    	OurCulture cultureTemp = ourCultureService.getContentCultureById(ourCulture.getId());
    	
    	view.addObject("userDetail", (User) request.getSession().getAttribute("userSession"));
        view.addObject("ourCultures", cultureTemp);
        view.addObject("id", cultureTemp.getId());
    	
    	return view;
    }
    
    @RequestMapping(value = "/dashboard/content/commitment", method = RequestMethod.GET)
    public ModelAndView getOurCommitment(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("ourCommitment");

        if(request.getSession().getAttribute("userSession")==null){
        	return modelAndView = new ModelAndView("redirect:/login");
        }
        
        modelAndView.addObject("userDetail", (User) request.getSession().getAttribute("userSession"));
        modelAndView.addObject("ourCommitments", ourCommitmentService.getCommitmentContent());

        return modelAndView;
    }
    
    @GetMapping(value="/dashboard/content/commitment/add")
    public ModelAndView addCommitment(HttpServletRequest request, @ModelAttribute("ourCommitment") OurCommitment ourCommitment){
    	ModelAndView view = new ModelAndView("addOurCommitment");
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return view = new ModelAndView("redirect:/login");
        }  
    	
    	String nextSeqId = ourCommitmentService.getLatestId();
    	view.addObject("id", Integer.parseInt(nextSeqId)+1);
    	
    	return view;
    }
    
    @PostMapping(value="/dashboard/content/commitment/add")
    public ModelAndView saveContentCommitment(HttpServletRequest request, 
    		HttpServletResponse response, @ModelAttribute("ourCommitment") OurCommitment commitment, BindingResult bindingResult){
    	
    	ModelAndView modelAndView = new ModelAndView("addOurCommitment");
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return modelAndView = new ModelAndView("redirect:/login");
        }
    	
    	boolean successInsert = ourCommitmentService.insertContentCommitment(commitment);
    	if(successInsert=true)
    		return modelAndView = new ModelAndView("redirect:/dashboard/content/commitment");
    	else
    		return modelAndView;
    }
    
    @GetMapping(value = "/dashboard/content/commitment/edit")
    public ModelAndView getEditCommitment(HttpServletRequest request, HttpServletResponse response,
    		@ModelAttribute("ourCommitment") OurCommitment ourCommitment,
    		@RequestParam(value="id", required = true) String id){
    	
    	ModelAndView view = new ModelAndView("editCommitment");
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return view = new ModelAndView("redirect:/login");
        }
    	
    	OurCommitment commitment = ourCommitmentService.getCommitmentContentById(Integer.parseInt(id));
    	view.addObject("userDetail", (User) request.getSession().getAttribute("userSession"));
    	view.addObject("ourCommitment", commitment);
    	view.addObject("id", id);
    	
    	return view;
    }
    
    @PostMapping(value = "/dashboard/content/commitment/edit")
    public ModelAndView postEditCulture(HttpServletRequest request, HttpServletResponse response,
    		@ModelAttribute("ourCommitment") OurCommitment commitment, BindingResult bindingResult){
    	ModelAndView view = new ModelAndView("editCommitment");
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return view = new ModelAndView("redirect:/login");
        }
    	
    	ourCommitmentService.updateContentCommitment(commitment);
    	OurCommitment commitmentTemp = ourCommitmentService.getCommitmentContentById(commitment.getId());
    	view.addObject("userDetail", (User) request.getSession().getAttribute("userSession"));
    	view.addObject("ourCommitment", commitmentTemp);
    	view.addObject("id", commitment.getId());
    	
    	return view;
    }
    
    @GetMapping(value="/dashboard/content/commitment/delete")
    public String deleteCommitment(HttpServletRequest request, @RequestParam("id") String id){
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return "redirect:/login";
        }
    	
    	ourCommitmentService.deleteContentCommitmentById(Integer.parseInt(id));
    	return "redirect:/dashboard/content/commitment";
    }
    
    @GetMapping(value="/dashboard/content/culture/delete")
    public String deleteCulture(HttpServletRequest request, @RequestParam("id") String id){
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return "redirect:/login";
        }
    	
    	ourCultureService.deleteContentCultureById(Integer.parseInt(id));
    	return "redirect:/dashboard/content/culture";
    }
    
    @SuppressWarnings("unused")
	@PostMapping(value = "/uploadCultureImage")
    public String getContentCultureImage(HttpServletRequest request, HttpServletResponse response,
    		@RequestParam("id") String id, @RequestParam("file") MultipartFile file,
    		RedirectAttributes redirectAttributes){
    	
    	String pathLocation = UPLOADED_FOLDER;

    	if(request.getSession().getAttribute("userSession")==null){
        	return "redirect:/login";
        }
    	
    	boolean uploadImageSuccess = false;
    	if(!file.isEmpty()){
    		try {
				byte[] bytes = file.getBytes();
				Path path = Paths.get(pathLocation + file.getOriginalFilename());
				Files.write(path,bytes);
				
				redirectAttributes.addFlashAttribute("message", "You successfully change image to '" + file.getOriginalFilename() + "'");
				uploadImageSuccess=true;
			} catch (IOException e) {
				e.printStackTrace();
			}
    	}
    	
    	if(uploadImageSuccess=true)
    		ourCultureService.updateImageContentCultureById(Integer.parseInt(id), file.getOriginalFilename());
    	
    	return "redirect:/dashboard/content/culture/edit?id="+id;
    }

    @GetMapping(value = "/dashboard/content/ourwork")
    public ModelAndView getContentHowWork(HttpServletRequest request, HttpServletResponse response){
    	
    	ModelAndView view = new ModelAndView("ourWork");
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return view = new ModelAndView("redirect:/login");
        }
    	
    	view.addObject("ourWorks", contentHowWorkService.getContentHowWorkOriginal());
    	
    	return view;
    }
    
    @GetMapping(value = "/dashboard/content/ourwork/edit")
    public ModelAndView getContentHowWorkById(HttpServletRequest request, 
    		@RequestParam(value="id", required = true) String id,
    		@ModelAttribute("contentHowWork") ContentHowWork ourWork){
    	
    	ModelAndView view = new ModelAndView("editOurWork");
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return view = new ModelAndView("redirect:/login");
        }
    	
    	view.addObject("contentHowWork", contentHowWorkService.getContentHowWorkById(Integer.parseInt(id)));
    	
    	return view;
    }
    
    @PostMapping(value = "/dashboard/content/ourwork/edit")
    public ModelAndView postContentHowWork(HttpServletRequest request, HttpServletResponse response, 
    		@ModelAttribute("contentHowWork") ContentHowWork ourWork, BindingResult bindingResult){
    	
    	ModelAndView view = new ModelAndView("editOurWork");
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return view = new ModelAndView("redirect:/login");
        }
    	
    	contentHowWorkService.updateContentHowWork(ourWork);
    	ContentHowWork ourWorkTemp = contentHowWorkService.getContentHowWorkById(ourWork.getId());
    	view.addObject("userDetail", (User) request.getSession().getAttribute("userSession"));
    	view.addObject("contentHowWork", ourWorkTemp);
    	
    	return view;
    }
    
    @GetMapping(value = "/dashboard/content/ourwork/add")
    public ModelAndView addContentHowWork(HttpServletRequest request,
    		@ModelAttribute("contentHowWork") ContentHowWork ourWork){
    	
    	ModelAndView view = new ModelAndView("addOurWork");
    	if(request.getSession().getAttribute("userSession")==null){
        	return view = new ModelAndView("redirect:/login");
        }    	
    	
    	String nextSeqId = contentHowWorkService.getContentHowWorkLatestId();
    	view.addObject("id", Integer.parseInt(nextSeqId)+1);
    	
    	return view;
    }
    
    @PostMapping(value = "/dashboard/content/ourwork/add")
    public ModelAndView saveContentHowWork(HttpServletRequest request, HttpServletResponse response,
    		@ModelAttribute("contentHowWork") ContentHowWork ourWork, BindingResult bindingResult){
    	
    	ModelAndView modelAndView = new ModelAndView("addOurWork");
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return modelAndView = new ModelAndView("redirect:/login");
        }
    	
    	boolean successInsert = contentHowWorkService.insertContentHowWork(ourWork);
    	if(successInsert=true)
    		return modelAndView = new ModelAndView("redirect:/dashboard/content/ourwork");
    	else
    		return modelAndView;
    }
    
    @GetMapping(value = "/dashboard/content/ourwork/delete")
    public String deleteOurWork(HttpServletRequest request, @RequestParam("id") String id){
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return "redirect:/login";
        }
    	
    	contentHowWorkService.deleteContentHowWorkById(Integer.parseInt(id));
    	return "redirect:/dashboard/content/ourwork";
    	
    }
    
    @GetMapping("/dashboard/document/brochure")
    public ModelAndView documentBrosurDashboard(HttpServletRequest request){
    	ModelAndView modelAndView = new ModelAndView("dashboardBrochure");
    	if(request.getSession().getAttribute("userSession")==null){
        	return modelAndView = new ModelAndView("redirect:/login");
        }
    	return modelAndView;
    }
    
    @PostMapping("/dashboard/document/brochure")
    public ModelAndView uploadDocumentBrosur(HttpServletRequest request, @RequestParam("uploadfile") MultipartFile file, Model model){
    	ModelAndView modelAndView = new ModelAndView("dashboardBrochure");
    	if(request.getSession().getAttribute("userSession")==null){
        	return modelAndView = new ModelAndView("redirect:/login");
        }
    	fileStorage.deleteAll(pathLocationDocument);
    	fileStorage.init(pathLocationDocument);
    	try {
			fileStorage.store(file, pathLocationDocument);
			model.addAttribute("message", "File uploaded successfully! -> filename = " + file.getOriginalFilename());
		} catch (Exception e) {
			model.addAttribute("message", "Fail! -> uploaded filename: " + file.getOriginalFilename());
		}
    	return modelAndView;
    }
    
    @GetMapping("/dashboard/content/homepage")
    public ModelAndView contentHomepage(HttpServletRequest request, HttpServletResponse response){
    	ModelAndView modelAndView = new ModelAndView("dashboardHomeImage");
    	
    	 if(request.getSession().getAttribute("userSession")==null){
         	return modelAndView = new ModelAndView("redirect:/login");
         }
         
         modelAndView.addObject("userDetail", (User) request.getSession().getAttribute("userSession"));
         modelAndView.addObject("contents", contentHomepageService.getListContentHomepage());
    	
    	return modelAndView;
    }
    
    @PostMapping("/dashboard/content/homepage")
    public ModelAndView uploadImageContentHomepage(HttpServletRequest request,@RequestParam("uploadfile") MultipartFile file, Model model){
    	ModelAndView modelAndView = new ModelAndView("dashboardHomeImage");
    	if(request.getSession().getAttribute("userSession")==null){
        	return modelAndView = new ModelAndView("redirect:/login");
        }
    	fileStorage.deleteAll(pathLocationImageHomePage);
    	fileStorage.init(pathLocationImageHomePage);
    	try {
			fileStorage.store(file, pathLocationImageHomePage);
			model.addAttribute("message", "File uploaded successfully! -> filename = " + file.getOriginalFilename());
		} catch (Exception e) {
			model.addAttribute("message", "Fail! -> uploaded filename: " + file.getOriginalFilename());
		}
    	return modelAndView;
    }
    
    @GetMapping(value = "/dashboard/content/homepage/edit")
    public ModelAndView editContentHomepage(HttpServletRequest request, HttpServletResponse response,
    		@ModelAttribute("contentHomepage") ContentHomepage contentHompage,
    		@RequestParam(value="id", required = true) String id){
    	
    	ModelAndView view = new ModelAndView("editContentHomepage");
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return view = new ModelAndView("redirect:/login");
        }
    	
    	ContentHomepage homepage = contentHomepageService.getContentHomepageById(Integer.parseInt(id));
    	view.addObject("userDetail", (User) request.getSession().getAttribute("userSession"));
    	view.addObject("content", homepage);
    	view.addObject("id", id);
    	
    	return view;
    }
    
    @PostMapping(value = "/dashboard/content/homepage/edit")
    public ModelAndView postEditContentHomepage(HttpServletRequest request, HttpServletResponse response,
    		@ModelAttribute("contentHomepage") ContentHomepage contentHomepage, BindingResult bindingResult){
    	ModelAndView view = new ModelAndView("dashboardHomeImage");
    	
    	if(request.getSession().getAttribute("userSession")==null){
        	return view = new ModelAndView("redirect:/login");
        }
    	
    	contentHomepageService.updateContentHomepage(contentHomepage);
    	ContentHomepage homepage = contentHomepageService.getContentHomepageById(contentHomepage.getId());
    	view.addObject("userDetail", (User) request.getSession().getAttribute("userSession"));
    	view.addObject("content", homepage);
    	view.addObject("id", homepage.getId());
    	
    	return view;
    }
    
}
