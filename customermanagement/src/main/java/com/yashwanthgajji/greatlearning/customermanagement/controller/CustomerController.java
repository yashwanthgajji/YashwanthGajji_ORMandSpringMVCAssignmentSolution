package com.yashwanthgajji.greatlearning.customermanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yashwanthgajji.greatlearning.customermanagement.model.Customer;
import com.yashwanthgajji.greatlearning.customermanagement.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/")
	public String homePage() {
		return "welcome";
	}
	
	@GetMapping("/allCustomers")
	public String showAllCustomoers(Model model) {
		List<Customer> customers = customerService.gelAllCustomers();
		model.addAttribute("customers",customers);
		return "customer-list";
	}
	
	@GetMapping("/registerCustomer")
	public String addNewCustomer(Model model) {
		Customer customer = new Customer();
		model.addAttribute("customer",customer);
		return "customer-form";
	}
	
	@PostMapping("/saveCustomer")
	public String saveNewCustomer(@ModelAttribute("customer") Customer customer) {
		customerService.saveCustomer(customer);
		return "redirect:allCustomers";
	}
	
	@RequestMapping("/updateCustomer/{id}")
	public String updateCustomer(Model model, @PathVariable("id") long id) {
		Customer customer = customerService.getCustomerByID(id);
		model.addAttribute("customer", customer);
		return "customer-form";
	}
	
	@RequestMapping("/deleteCustomer/{id}")
	public String deleteCustomer(@PathVariable("id") long id) {
		customerService.deleteCustomer(id);
		return "redirect:../allCustomers";
	}
}
