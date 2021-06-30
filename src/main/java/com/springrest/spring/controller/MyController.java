package com.springrest.spring.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.springrest.spring.Model.Employee;
import com.springrest.spring.services.EmployeeService;

@RestController
public class MyController {

	@Autowired
	EmployeeService empservice;

	@GetMapping("/home")
	@CrossOrigin(origins = "http://localhost:8080")
	public String home() {
		return "Will enter login page here....";
	}

	// get employee list...
	@GetMapping("/employees")
	@CrossOrigin(origins = "http://localhost:8080")
	public List<Employee> getEmployeeList() {
		return this.empservice.getEmployeeList();

	}

	// add new employee..
	@PostMapping("/employees")
	@CrossOrigin(origins = "http://localhost:8080")
	public Employee addEmployee(@RequestBody Employee newEmployeeData) {
		return this.empservice.addEmployee(newEmployeeData);

	}

	// update new employee..
	@PutMapping("/employees")
	public Employee updateEmployee(@RequestBody Employee newEmployeeData) {
		return this.empservice.updateEmployee(newEmployeeData);

	}

	// get single employee detail...
	@GetMapping("/employees/{id}")
	@CrossOrigin(origins = "http://localhost:8080")
	public Optional<Employee> getEmployee(@PathVariable (value="id") long empId) {
		System.out.println(empId);
//		Employee e = new Employee();
//		Employee d = this.empservice.getEmployee(Long.parseLong(empId));
//		e.setEmployeeCode(d.getEmployeeCode());
//		e.setEmployeeName(d.getEmployeeName());
//		e.setEmployeeEmail(d.getEmployeeEmail());
//		e.setEmployeeDOB(d.getEmployeeDOB());
//		e.setEmployeeLocation(d.getEmployeeLocation());
//		return e;
		 return this.empservice.getEmployee(empId);

	}

	// delete single employee detail...
	@DeleteMapping("/employees/{empId}")
	@CrossOrigin(origins = "http://localhost:8080")
	public ResponseEntity<HttpStatus> DeleteEmployee(@PathVariable String empId) {
		try {
			this.empservice.deleteEmployee(Long.parseLong(empId));
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}

}
