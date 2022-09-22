package com.yashwanthgajji.greatlearning.customermanagement.service;

import java.util.List;

import com.yashwanthgajji.greatlearning.customermanagement.model.Customer;

public interface CustomerService {
	public Customer getCustomerByID(long id);
	public List<Customer> gelAllCustomers();
	public void saveCustomer(Customer customer);
	public void deleteCustomer(long id);
}
