package com.springrest.spring.services;

import java.util.List;
import java.util.Optional;

import com.springrest.spring.Model.Employee;

public interface EmployeeService {

	public List<Employee> getEmployeeList();

	public Optional<Employee> getEmployee(long empId);

	public Employee addEmployee(Employee newEmployeeData);

	public Employee updateEmployee(Employee newEmployeeData);

	public void deleteEmployee(long parseLong);
	
}
