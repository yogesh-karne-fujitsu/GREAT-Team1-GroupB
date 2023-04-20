package com.Spring.TrainingStatusApp.service;

import java.util.List;

public interface EmployeeService {
	List<String> getAllEmployeeId();

	String getEmployeeNameByEmployeeId(String employeeId);
	

}
