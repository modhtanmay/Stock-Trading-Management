package com.tanmay.spring.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.tanmay.spring.model.Share;
import com.tanmay.spring.service.ShareService;

@Controller
@SessionAttributes("found")
public class ShareController {
	
	@Autowired
	private ShareService shareService;
	
	@RequestMapping(value="/product",method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("shares", shareService.findAll());
//		Iterable<Share> findAll = shareService.findAll();
//		for(Share share : findAll)
//			System.out.println(share.getName());
		return "index";
	}
	
// DATA IN JSON FORMAT
	
//	@GetMapping("/get")
//	@ResponseBody
//	public Iterable<Share> rest(ModelMap modelMap) {
//		modelMap.put("shares", shareService.findAll());
//		return shareService.findAll();
//	}
	
	
	@RequestMapping(value="/Proceed",method=RequestMethod.GET)
	public String update(@RequestParam int id,ModelMap modelMap) {
		
		Optional<Share> shareResponse = shareService.findById(id);
		Share share = shareResponse.get();
		modelMap.put("found",share);		
		System.out.println(share.getName());
		return "show";
	}
	
//	@GetMapping(path = "/all")
//	public @ResponseBody Iterable<Share> getAllUsers() {
//		
//		return shareRepository.findAll();
//	}
	
}
