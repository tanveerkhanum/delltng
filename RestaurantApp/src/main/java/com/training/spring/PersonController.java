package com.training.spring;

import java.io.PrintWriter;

import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.training.spring.dao.PersonDAO;
import com.training.spring.dao.PersonDAOImpl;
import com.training.spring.model.Item;
import com.training.spring.model.Person;
import com.training.spring.service.ItemService;
import com.training.spring.service.PersonService;

@Controller
public class PersonController {
	
	private PersonService personService;
	
	
	@Autowired(required=true)
	@Qualifier(value="personService")
	public void setPersonService(PersonService ps){
		this.personService = ps;
	}
	
	
	@RequestMapping(value = {"","/","/persons"})
	public String listPersons() {
		
		return "index";
	}
	@RequestMapping(value ="/login")
	public String gotoLogin(Model model) {
		model.addAttribute("person",new Person());
		return "LoginPage";
	}
	@RequestMapping(value ="/signUp")
	public ModelAndView springFormMethod()
	{
			
		ModelAndView view=new ModelAndView();
		view.setViewName("signUp");
		view.addObject("person",new Person());
		
		return view;
	}
	
	
	@RequestMapping(value ="/index")
	public ModelAndView springLoopMethod()
	{	
		ModelAndView view=new ModelAndView();
		view.setViewName("index");
		
		return view;
	}
	
	
	
	
	/*@RequestMapping(value = {"","/","/persons"})
	public String listPersons(Model model) {
		model.addAttribute("person", new Person());
		model.addAttribute("listPersons", this.personService.listPersons());
		return "index";
	}
	*/
	
	//for checking the existance of customer from database person
	@RequestMapping(value ="/isExistCustomer")
	public String checkPersons(Person person,Model model)
	{
		System.out.println(person.getCustomerId());
		
		
		ModelAndView view =new ModelAndView();
		
		Person p = personService.getPersonById(person.getCustomerId()); 
		if(p!=null)
		{
			return "menu";
		}
		else
		{
			System.out.println("Invalid CustomerId. Want to register as new user?");	
			return "index";
		}
	}
	
	/*//For add and update person both
	@RequestMapping(value= "/person/add", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute("person") Person p){
		System.out.println("#####product :"+p);
			this.personService.addPerson(p);
		return "redirect:/persons";
	}*/
	//For add and update person both
	@RequestMapping(value= "/add", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute("person") Person p){
		System.out.println("#####product :"+p);
			this.personService.addPerson(p);
		return "redirect:/persons";
	}
	@RequestMapping(value= "/edit/add/update", method = RequestMethod.POST)
	public String updatePerson(@ModelAttribute("person") Person p){
		System.out.println("#####product updating :"+p);
			this.personService.updatePerson(p);
		return "redirect:/persons";
	}
	/*@RequestMapping(value= "/edit/add/update", method = RequestMethod.POST)
	public String updatePerson(@ModelAttribute("person") Person p){
		System.out.println("#####product updating :"+p);
			this.personService.updatePerson(p);
		return "redirect:/persons";
	}
	*/
	@RequestMapping("/remove/{id}")
    public String removePerson(@PathVariable("id") int id){
		
        this.personService.removePerson(id);
        return "redirect:/persons";
    }
 
	
	
	
	
	
    @RequestMapping("/edit/{id}")
    public String editPerson(@PathVariable("id") int id, Model model){
        model.addAttribute("person", this.personService.getPersonById(id));
        model.addAttribute("listPersons", this.personService.listPersons());
        return "person";
    }
	
}
