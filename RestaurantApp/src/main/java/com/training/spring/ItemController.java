package com.training.spring;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.training.spring.model.Item;
import com.training.spring.service.ItemService;

@Controller
public class ItemController {
	
	
	private ItemService itemService;
	
	
	
	@Autowired(required=true)
	@Qualifier(value="itemService")
	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}
	
	
	@RequestMapping(value ="/menuItem/{itemName}/{itemPrice}")
	public  String menuItem(@PathVariable("itemName")String itemName,@PathVariable("itemPrice")String itemPrice,Model model,HttpServletRequest request)
	
	{
		System.out.println(itemName);
		System.out.println(itemPrice);
		
		Item item = new Item();
		item.setItemName(itemName);
		item.setItemPrice(itemPrice);
		itemService.addItem(item);
		
		List<Item> allItems = itemService.listItems();
		HttpSession session = request.getSession();
		session.removeAttribute("allItems");
		session.setAttribute("allItems", allItems);
		
		String totalFoodBill = itemService.totalBill();
		session.setAttribute("totalFoodBill", totalFoodBill);
		ModelAndView view=new ModelAndView();
		view.setViewName("signUp");
		view.addObject("item",new Item());
		
		return "menu";
	}
	@RequestMapping(value ="/Endpage")
	public ModelAndView springEndMethod()
	{	
		ModelAndView view=new ModelAndView();
		view.setViewName("end");
		
		return view;
	}
	
	
}
