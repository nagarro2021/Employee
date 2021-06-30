package com.springrest.spring.Model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Employee{

	@Id
	private long employeeCode;
	private String employeeName;
	private String employeeLocation;
	private String employeeEmail;
	private String employeeDOB;

	
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Employee(long employeeCode,String employeeName, String employeeLocation, String employeeEmail,
			String employeeDOB) {
		super();
		this.employeeCode = employeeCode;
		this.employeeName = employeeName;
		this.employeeLocation = employeeLocation;
		this.employeeEmail = employeeEmail;
		this.employeeDOB = employeeDOB;
	}


	public long getEmployeeCode() {
		return employeeCode;
	}


	public void setEmployeeCode(long employeeCode) {
		this.employeeCode = employeeCode;
	}


	public String getEmployeeName() {
		return employeeName;
	}


	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}


	public String getEmployeeLocation() {
		return employeeLocation;
	}


	public void setEmployeeLocation(String employeeLocation) {
		this.employeeLocation = employeeLocation;
	}


	public String getEmployeeEmail() {
		return employeeEmail;
	}


	public void setEmployeeEmail(String employeeEmail) {
		this.employeeEmail = employeeEmail;
	}


	public String getEmployeeDOB() {
		return employeeDOB;
	}


	public void setEmployeeDOB(String employeeDOB) {
		this.employeeDOB = employeeDOB;
	}


	@Override
	public String toString() {
		return "Employee [employeeCode=" + employeeCode + ", employeeName=" + employeeName + ", employeeLocation="
				+ employeeLocation + ", employeeEmail=" + employeeEmail + ", employeeDOB=" + employeeDOB + "]";
	}	
}
