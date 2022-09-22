package com.yashwanthgajji.greatlearning.customermanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yashwanthgajji.greatlearning.customermanagement.model.Customer;
import com.yashwanthgajji.greatlearning.customermanagement.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	private CustomerRepository customerRepository;

	@Override
	public Customer getCustomerByID(long id) {
		return customerRepository.findById(id).get();
	}

	@Override
	public List<Customer> gelAllCustomers() {
		return customerRepository.findAll();
	}

	@Override
	public void saveCustomer(Customer customer) {
		customerRepository.save(customer);
	}

	@Override
	public void deleteCustomer(long id) {
		customerRepository.deleteById(id);
	}

}
