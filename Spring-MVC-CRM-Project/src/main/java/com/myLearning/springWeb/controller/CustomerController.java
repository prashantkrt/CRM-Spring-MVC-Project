package com.myLearning.springWeb.controller;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.myLearning.springWeb.model.Customer;
import com.myLearning.springWeb.service.ICustomerService;

@Controller
public class CustomerController {

	@Autowired
	private ICustomerService service;

	@GetMapping("/data")
	public String fetchCustomersData(Model model) {
		List<Customer> customerList = service.getCustomers();
		model.addAttribute("customer", customerList);
		return "customers"; // Logical View Name
	}

	@GetMapping("/showForm")
	public String getFormPage(@ModelAttribute("customer") Customer customer) {
		return "form";
	}

//	 or
//	 without @ModelAttribute
//	@GetMapping("/showMyForm")
//	public String getForm(Map<String, Object> model, Customer customer) {
//		Customer info = new Customer();
//		model.put("customer", info);
//		return "form";
//	}

	@PostMapping("/registerCustomer")
	public String registerCustomer(Map<String, Object> model, @ModelAttribute("customer") Customer customer) {

		service.registerCustomer(customer);
		model.put("customer", customer);
		return "redirect:/data"; // redirects back to customer list jsp file
	}

//	@GetMapping("/updateForm")
//	public String updateCustomer(Model model, @RequestParam("customerId") Integer id) {
//		Optional<Customer> optional = service.getCustomer(id);
//		if (optional.isPresent()) {
//			model.addAttribute("customer", optional.get());
//		}
//		return "updateForm";
//	}
//
//	@GetMapping("/update")
//	public String update(Map<String, Object> model, Customer customer) {	
//		return "update";
//	}
	
	@GetMapping("/updateForm")
	public String updateCustomer(Model model, @RequestParam("customerId") Integer id) {
		Optional<Customer> optional = service.getCustomer(id);
		if (optional.isPresent()) {
			model.addAttribute("customer", optional.get());
		}
		return "update";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("customerId") Integer id) {
		service.deleteCustomer(id);
		return "redirect:/data";
	}

}
