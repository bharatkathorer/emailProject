package com.ben.controller;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ben.model.PagData;
import com.ben.model.UserModel;
import com.ben.repo.UserModelRepo;
import com.service.AmazonClient2;



@RestController
@RequestMapping("storage/")
public class AppController {
	
	@Autowired
    private AmazonClient2 amazonClient;

 
    AppController(AmazonClient2 amazonClient) {
        this.amazonClient = amazonClient;
    }

    @PostMapping("/uploadFile")
    public String uploadFile(@RequestPart(value = "file") MultipartFile file) {
        return this.amazonClient.uploadFile(file);
    }

    @DeleteMapping("/deleteFile")
    public String deleteFile(@RequestPart(value = "url") String fileUrl) {
        return this.amazonClient.deleteFileFromS3Bucket(fileUrl);
    }
	
	
	
	
	
	
	
	
	
	ModelAndView mv = new ModelAndView();

	@RequestMapping("/")
	public String home() {
		return "index.jsp";

	}

	@Autowired
	UserModelRepo repo;
	UserModel um;
	
	@RequestMapping("insert")
	@ResponseBody
	public ModelAndView InsertData(UserModel um,@PathParam("page") int page) {
		repo.save(um);
		return Pagination(page);

	}

	@RequestMapping("display")

	public ModelAndView Display() {
		List<UserModel> list = repo.findAll();
		mv.addObject("um", list);
		mv.setViewName("display.jsp");
		return mv;

	}

	@RequestMapping("delete")

	public ModelAndView Delete(@PathParam("id") int id, @PathParam("page") int page) {
		UserModel u=repo.findById(id).orElse(null);
		repo.delete(u);
		
		return  Pagination(page);

	}
	
	@RequestMapping("update")
	@ResponseBody
	public ModelAndView Update(UserModel um, @PathParam("page") int page) {
		repo.save(um);
		return  Pagination(page);
	}
	@GetMapping("displaybyid")
	@ResponseBody
	public Object DisplayById(@PathParam("id") int id) {
	
		UserModel um=repo.findById(id).orElse(null);
		
		return um;

	}

	@GetMapping("pagination")
	@ResponseBody

	public ModelAndView Pagination(@RequestParam(defaultValue="0") int page) {
		 Page<UserModel> p=repo.findAll(new PageRequest(page, 5));
		 p.getSort();
		 List<UserModel> up=p.getContent();
		 
		 
		 PagData pd=new PagData();
		 
		 pd.setCurrentpage(p.getNumber());
		 pd.setTotalpage(p.getTotalPages());
		 mv.addObject("page", pd);
		 mv.addObject("um", up);
			mv.setViewName("display.jsp");
			return mv;
	}
	
	@GetMapping("SearchByOther")
	@ResponseBody

	public ModelAndView SearchPagination(@RequestParam(defaultValue="0") String page ,String by) {
		List<UserModel> up = null;
		if(by.equals("Name")) { 
		up=repo.findByName(page);
		}else if(by.equals("Gmail")) {
		up=repo.findByGmail(page);
		}else {
			
		}
		
		 mv.addObject("um", up);
		
			mv.setViewName("display.jsp");
			return mv;
	}
	
	
	
}

