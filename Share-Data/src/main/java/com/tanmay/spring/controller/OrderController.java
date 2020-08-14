package com.tanmay.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.tanmay.spring.dao.OrderRepository;
import com.tanmay.spring.model.Order;
import com.tanmay.spring.model.Share;
import com.tanmay.spring.service.CommisionService;
import com.tanmay.spring.service.OrderService;

@Controller
@SessionAttributes("found")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderRepository orderRepository;
	@Autowired
	private CommisionService commisionService;

	Order order;
//	DATA IN JSON FORMAT	
//	@RequestMapping(value="/orders",method=RequestMethod.GET)
//	@ResponseBody
//	public List<Order> orderDisplay(ModelMap model) {
//		model.put("orders",orderRepository.findAll());
//		return orderRepository.findAll();
//	}
	
	@RequestMapping(value="/orders",method=RequestMethod.GET)
	public String orderDisplay(ModelMap model) {
		model.put("showorder",orderRepository.findAll());		
		return "orderlist";
	}
	

	@RequestMapping(value="/calculateCost",method = RequestMethod.POST)
	public String calculateShareCost(@ModelAttribute("order") Order order,ModelMap model, BindingResult result) {
		Share share = (Share) model.getAttribute("found");
		model.put("found",share);
//		System.out.println(order.getQuantity());
		order.setOrdername(share.getName());
		order.setOrderprice(share.getPrice());
//		order.setCategory(category);
//		order.setQuantity(quantity);
		if(order.getCategory().equalsIgnoreCase("buy"))
			orderRepository.save(order);
		
		
		double cost = orderService.calculateCost(share,order,order.getCategory());
		model.addAttribute("cost", "Your "+order.getCategory()+ " share equivalent cost is : "+String.format("%.2f",cost)+"/-");
		model.addAttribute("price",cost);
		return "result";
	}
	
	@RequestMapping(value="/commision", method=RequestMethod.GET)
	public String calculateCommision(@RequestParam double price,ModelMap model) {
		double commision = commisionService.calculateCommision(price);
		model.addAttribute("commision","Brokers Commision is: "+String.format("%.2f",commision));
		return "result";
	}
}
