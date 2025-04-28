package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;

public interface EmployeeService 
{
	
	public String EmployeeRegistration(Employee emp);
	public Employee checkemplogin(String uname,String pwd);
	public String updateemp(Employee e);
	public List<Employee> displayEmpsByDepartment(String dept);

}
