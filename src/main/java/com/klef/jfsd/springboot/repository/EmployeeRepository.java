package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.Employee;

import jakarta.transaction.Transactional;
import java.util.List;


public interface EmployeeRepository extends JpaRepository<Employee, Integer>  {

	@Query("select e from Employee e where e.email=?1 and e.password=?2")
	public Employee checkemplogin(String uname,String pwd);
	
	@Query("update Employee e set e.status=?1 where e.id=?2") //this query will return int
	@Modifying //when doing dml operations
	@Transactional 
	public int updateempstatus(String status,int eid);
	
	
	
	@Query("delete from Employee e where e.id=?1") //this query will return int
	@Modifying //when doing dml operations
	@Transactional 
	public int deletestatus(int eid);
	
	//No need to write queries explicitly
	public List<Employee> findByDepartment(String department);
	
}
