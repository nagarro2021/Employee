package com.springrest.spring.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springrest.spring.Model.Employee;
import com.springrest.spring.dao.EmployeeDao;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;
	
	//List<Employee> employeeList;


	public EmployeeServiceImpl()
	{
		
	}
	
	@Override
	public List<Employee> getEmployeeList() {

		return employeeDao.findAll();
	}

	@Override
	public Optional<Employee> getEmployee(long employeeCode) {
		//Employee e = null;
//		for (Employee emp : employeeList)
//		{
//			if(emp.getEmployeeCode()==empId)
//			{
//				e=emp;
//				break;
//			}
//		}
		
		//System.out.println(employeeDao.getOne(parseLong).toString());
		//System.out.println(e.getEmployeeCode());
		//return e;
		return employeeDao.findById(employeeCode);
		//return  employeeDao.getOne(employeeCode);

	}

	@Override
	public Employee addEmployee(Employee newEmployeeData) {
		//employeeList.add(newEmployeeData);
		return employeeDao.save(newEmployeeData);
	}

	@Override
	public Employee updateEmployee(Employee newEmployeeData) {

//		employeeList.forEach(e->
//		{
//			if(e.getEmployeeCode()==newEmployeeData.getEmployeeCode())
//			{
//				e.setEmployeeName(newEmployeeData.getEmployeeName());
//				e.setEmployeeLocation(newEmployeeData.getEmployeeLocation());
//				e.setEmployeeEmail(newEmployeeData.getEmployeeEmail());
//				e.setEmployeeDOB(newEmployeeData.getEmployeeDOB());
//			}
//		});
		
		employeeDao.save(newEmployeeData);
		return newEmployeeData;
	}

	@Override
	public void deleteEmployee(long parseLong) {
	//	employeeList=this.employeeList.stream().filter(e-> e.getEmployeeCode()!=parseLong).collect(Collectors.toList());
		Employee entity=employeeDao.getById(parseLong);
		employeeDao.delete(entity);
	}

}
