package com.myLearning.springWeb.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Customer")
public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id ;
	
	@Column(name="Name")
	private String name;
	
	@Column(name="Age")
	private Integer age;
	
	@Column(name="Gender")
	private String gender;
	
	@Column(name="City")
	private String city="Jabalpur";

	public Customer(String name, Integer age, String gender, String city) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.city = city;
	}
}
