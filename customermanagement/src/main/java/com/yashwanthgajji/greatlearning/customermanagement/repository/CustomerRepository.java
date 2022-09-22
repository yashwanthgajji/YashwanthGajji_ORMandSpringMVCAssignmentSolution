package com.yashwanthgajji.greatlearning.customermanagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.yashwanthgajji.greatlearning.customermanagement.model.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {

}
