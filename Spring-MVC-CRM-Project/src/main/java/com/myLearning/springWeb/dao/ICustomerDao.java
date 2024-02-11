package com.myLearning.springWeb.dao;

import org.springframework.data.repository.CrudRepository;

import com.myLearning.springWeb.model.Customer;

public interface ICustomerDao extends CrudRepository<Customer, Integer>{

}
