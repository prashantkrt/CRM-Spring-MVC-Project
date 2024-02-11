package com.myLearning.springWeb.service;

import java.util.List;
import java.util.Optional;
import com.myLearning.springWeb.model.Customer;

public interface ICustomerService {

	public List<Customer> getCustomers();

	public Optional<Customer> getCustomer(Integer id);

	public void registerCustomer(Customer customer);

	public void deleteCustomer(Integer id);

	public Customer updateCustomer(Integer id);
}
