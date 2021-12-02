package com.hervais.dojoandninja.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hervais.dojoandninja.models.Dojo;
import com.hervais.dojoandninja.models.Ninja;
import com.hervais.dojoandninja.services.DojoService;
import com.hervais.dojoandninja.services.NinjaService;

@Controller
public class MainController {

	@Autowired
	private DojoService dojoService;
	
	@Autowired
	private NinjaService ninjaService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String Dashboard() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/dojos/new", method=RequestMethod.GET)
	public String getDojoForm(Model model, Dojo dojo) {
		model.addAttribute("item", dojo);
		return "Dojos/newDojo.jsp";
	}
	
	@RequestMapping(value="/dojos/new", method=RequestMethod.POST)
	public String createDojo(@ModelAttribute("dojo") Dojo dojo, RedirectAttributes redirect, BindingResult result) {
		
		if (result.hasErrors()) {
			return "Dojos/newDojo.jsp";
		}else {
			
			this.dojoService.create(dojo);
			redirect.addFlashAttribute("message", "New Dojo Created");
			return "redirect:/dojos/view";
		}
		
	}
	
	@RequestMapping(value="/dojos/view", method=RequestMethod.GET)
	public String ViewAllDojo(Model model) {
		model.addAttribute("allDojo", this.dojoService.getAllDojo());
		
		return "Dojos/viewDojos.jsp";
	}
	
	@RequestMapping(value="/dojos/{id}", method=RequestMethod.GET)
	public String ViewDojo(@PathVariable Long id, Model model) {
		model.addAttribute("inDojo", this.dojoService.findById(id));
		
		return "Dojos/viewDojo.jsp";
	}
	
	
//	============================ Ninja Section =========================
	
//	Create a Ninja
	
	@RequestMapping(value="/ninjas/new", method=RequestMethod.GET)
	public String getNinjaForm(ModelMap model, Ninja ninja) {
		
		model.addAttribute("allLocations", this.dojoService.getAllDojo());
		System.out.println("All Dojos" + this.dojoService.getAllDojo());
		
		return "Ninjas/newNinja.jsp";
	}
	
	@RequestMapping(value ="/ninjas/new", method=RequestMethod.POST)
	public String createNinja(@ModelAttribute("ninja") Ninja ninja, ModelMap model, RedirectAttributes redirect, BindingResult result) {
		
		if (result.hasErrors()) {
			return "Ninjas/newNinja.jsp";
		}else {
			
			this.ninjaService.create(ninja);
			redirect.addFlashAttribute("message", "New Ninja Created");
			return "redirect:/ninjas/view";
		}
		
		
	}
	
	@RequestMapping(value="/ninjas/view", method=RequestMethod.GET)
	public String ViewAllNinja(ModelMap model) {
		model.addAttribute("allNinjas", this.ninjaService.getAllNinja());
		
		return "Ninjas/viewNinjas.jsp";
	}
	
	
	
	
}
