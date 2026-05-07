package com.vamsisoft.dao;

import java.util.List;

public interface StudentDao {
	public ClassRoom searchStudents(String ClassId,int pwd);
	public String upload(String name,String rollno,int spwd);
	//public ClassRoom searchStudent(String Sid);
	public ClassRoom searchStudents_End(String classid,int pwd);
	
	public List<ClassRoom> getAllPresentStudents();
	public String upload_End(int spwd);
	
	
	public String upload2(String rollno,int spwd);
	public List<ClassRoom> getAllPresentStudents2();
	
	List<ClassRoom> searchAllStudentsX(String classid);
	List<ClassRoom> searchAllStudents(int spwd);
	
	public String markAbsent(String Sid);
		
	

}
