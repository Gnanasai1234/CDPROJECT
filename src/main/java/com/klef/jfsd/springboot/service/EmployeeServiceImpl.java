package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	private EmployeeRepository 	employeeRepository;
	
	@Override
	public String EmployeeRegistration(Employee employee) {
		
		
		employeeRepository.save(employee);
		
		return "Employee Registered Successfully";
	}
	
	@Override
	public Employee checkemplogin(String uname, String pwd) 
	{

		return employeeRepository.checkemplogin(uname, pwd);
	}

	@Override
	public String updateemp(Employee e) {
		Employee emp=employeeRepository.findById(e.getId()).get();
		emp.setContact(e.getContact());
		emp.setDateofbirth(e.getDateofbirth());
		emp.setDepartment(e.getDepartment());
		emp.setGender(e.getGender());
		emp.setLocation(e.getLocation());
		emp.setName(e.getName());
		emp.setPassword(e.getPassword());
		emp.setSalary(e.getSalary());
		
		employeeRepository.save(emp);
		return "Employee updated successfully";
	}

	@Override
	public List<Employee> displayEmpsByDepartment(String dept) {
		// TODO Auto-generated method stub
		return employeeRepository.findByDepartment(dept);
	}

}
