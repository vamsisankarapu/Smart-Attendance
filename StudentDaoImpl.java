package com.vamsisoft.dao;

import java.time.LocalDate;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
@Repository
public class StudentDaoImpl implements StudentDao {
	
	@Autowired
	private JdbcTemplate jdbctemplate;

	@Override
	public ClassRoom searchStudents(String ClassId,int pwd) {
		if(ClassId.equals("123")&& pwd==7993 ) {
			List<ClassRoom> stdList=jdbctemplate.query("select * from MCA1st ",(rs, rowNum)->{
				ClassRoom std=new ClassRoom();
				std.setId(rs.getString("roll_no"));
				std.setSname(rs.getString("name"));				
				return std;
			});
			return stdList.isEmpty()?null:stdList.get(0);
		}
		else if (ClassId.equals("456") && pwd==8790) {
	        String sql = "SELECT * FROM MCA2nd";

	        List<ClassRoom> stdList = jdbctemplate.query(sql, (rs, rowNum) -> {
	            ClassRoom std = new ClassRoom();
	            std.setId(rs.getString("roll_no"));
	            std.setSname(rs.getString("name"));
	            // You can add more fields if needed
	            return std;
	        });

	        return stdList.isEmpty() ? null : stdList.get(0); // returns first present student
	    }
		return null;
	}

	@Override
	public String upload(String Sname,String Sid,int spwd) {//vamsi,10,7993
		 String status = "";
		    //Sid = Sid.trim(); // sanitize input
		    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		    String formattedDate = LocalDate.now().format(formatter);
		    LocalTime now = LocalTime.now();
	        DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("HH:mm:ss");
	        String formattedTime = now.format(formatter2);		   
	        LocalTime endTime = LocalTime.of(22, 50);     // 9:15 AM

	        if ( now.isAfter(endTime)) {
	            status = "Access Denied: Allowed time is before 09:15 AM";
	            return status;
	        }
	        else {
	        	//here i have to implement feature like attendance should be done only one time based on roll number
	        	
	        	String Selectsql = "SELECT id FROM uploadAttendance WHERE ID = ? and U_DATE=?";
	        	
	     	   
	        		        	    try {
	        	        String result =jdbctemplate.queryForObject(Selectsql, String.class, Sid, formattedDate);//if it returns no value that means empty string then it will rise an excetion then logic present in exception block will be excecurted..
	        	        status = " allows one time only";	        	       
	        	        	}

	       			   
	        	         
	        	     catch (EmptyResultDataAccessException e) {
	        	    	 
	        	    	    /* try {	        	    	    	 
	        	    	     
	        	    	    String Selectpswdsql = "SELECT pwd FROM credentials_t WHERE ID = ? AND NAME = ? AND PWD=?";
	 	        	        String result=jdbctemplate.queryForObject(Selectpswdsql, String.class, Sid,Sname,spwd);//if it returns no value that means empty string then it will rise an excetion then logic present in exception block will be excecurted..
	 	        	          // if( true/*result=="7993" || result=="9381" || result=="9490" || result=="9182" || result=="6281") {*/
	 	        	        	   
	 	        	           
	        	    	 String Insertsql = "INSERT INTO uploadAttendance (id,name,U_DATE,checkin,pwd) VALUES (?,?,?,?,?)";
	       	        	  int rowcount = jdbctemplate.update(Insertsql, Sid, Sname,formattedDate,formattedTime,spwd);
	       	        	  String Updatesql = "UPDATE uploadattendance SET status= ? WHERE ID = ? AND U_DATE = ? AND PWD=?";
	       	        	  int rowcount2 = jdbctemplate.update(Updatesql, "present", Sid, formattedDate,spwd);
	 	        	           
	       	        	 if (rowcount == 1) {
	       			        status = " CHECKIN DONE";
	       			    } else {
	       			        status = "Failed  (Check ID and date match)";
	       			    }
	 	        	           }
	 	        	          
	        	    
	        	    	     /*catch(EmptyResultDataAccessException ex)
	        	    	     {
	        	    	    	 status="wrong password";
	        	    	     }*/
	        	     }

	        	 /* String sql = "INSERT INTO uploadAttendance (id,name,U_DATE,checkin,pwd) VALUES (?,?,?,?,?)";
	        	  int rowcount = jdbctemplate.update(sql, Sid, Sname,formattedDate,formattedTime,spwd);
	        	  
	        	  String sql2 = "UPDATE uploadattendance SET status= ? WHERE ID = ? AND U_DATE = ? AND PWD=?";
	        	  int rowcount2 = jdbctemplate.update(sql2, "present", Sid, formattedDate,spwd);*/

	   		   
		 /*   String sql = "UPDATE uploadattendance SET checkin = ? WHERE ID = ? AND U_DATE = ? AND PWD=?";
		    int rowcount = jdbctemplate.update(sql, formattedTime, Sid, formattedDate,spwd);
		    if (rowcount == 1) {
		        status = " CHECKIN DONE";
		    } else {
		        status = "Failed  (Check ID and date match)";
		    }}*/

		    return status;
	
	        }
	

	
	
	@Override
	public String upload2(String Sid,int spwd) {
		 String status = "";
		    Sid = Sid.trim(); // sanitize input
		    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		    String formattedDate = LocalDate.now().format(formatter);
		    LocalTime now = LocalTime.now();
	        DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("HH:mm:ss");
	        String formattedTime = now.format(formatter2);

		    //System.out.println("Updating ID: " + Sid + " on date: " + formattedDate);
	            
	        LocalTime endTime = LocalTime.of(22, 15);     // 9:15 AM

	        if ( now.isAfter(endTime)) {
	            status = "Access Denied: Allowed time is before 09:15 AM";
	            return status;
	        }
	        else {
	        	 String sql = "INSERT INTO uploadAttendance2 (id,U_DATE,checkin,pwd) VALUES (?,?,?,?)";
	        	  int rowcount = jdbctemplate.update(sql, Sid, formattedDate,formattedTime,spwd);
	        	  String sql2 = "UPDATE uploadattendance2 SET status= ? WHERE ID = ? AND U_DATE = ? AND PWD=?";
	        	  int rowcount2 = jdbctemplate.update(sql2, "present", Sid, formattedDate,spwd);

		   /* String sql = "UPDATE uploadattendance2 SET checkin = ? WHERE ID = ? AND U_DATE = ? AND PWD=?";
		    int rowcount = jdbctemplate.update(sql, formattedTime, Sid, formattedDate,spwd);*/
		    if (rowcount == 1) {
		    	
		        status = "CHECK IN DONE ";
		    } else {
		        status = "Failed  (Check ID and date match)";
		    }}

		    return status;

	}
	
	

	
	
	public List<ClassRoom> getAllPresentStudents() {
	    String sql = "SELECT id, name FROM uploadAttendance WHERE status = 'present' AND U_date = CURDATE()";

	    List<ClassRoom> stdList = jdbctemplate.query(sql, (rs, rowNum) -> {
	        ClassRoom classRoom = new ClassRoom();
	        classRoom.setId(rs.getString("id"));
	        classRoom.setSname(rs.getString("name"));
	        return classRoom;
	    });

	    return stdList;
	}
	
	
	public List<ClassRoom> getAllPresentStudents2() {
	    
		 String sql = "SELECT id, name FROM uploadAttendance2 WHERE status = 'present'";
		    List<ClassRoom> stdList = jdbctemplate.query(sql, (rs, rowNum) -> {    	 
		    	ClassRoom classRoom = new ClassRoom();
		        classRoom.setId(rs.getString("id"));
		        classRoom.setSname(rs.getString("name"));
		        return classRoom;
		    });

		    return stdList;
	}
	
	
	@Override
	public ClassRoom searchStudents_End(String classid, int pwd) {
	    if (classid.equals("123") && pwd == 7993) {
	        String sql = "SELECT * FROM MCA1st";

	        List<ClassRoom> stdList = jdbctemplate.query(sql, (rs, rowNum) -> {
	            ClassRoom std = new ClassRoom();
	            std.setId(rs.getString("roll_no"));
	            std.setSname(rs.getString("name"));
	            // You can add more fields if needed
	            return std;
	        });

	        return stdList.isEmpty() ? null : stdList.get(0); // returns first present student
	    }
	    
	    return null;
	}

	@Override
	public String upload_End( int spwd) {
		String status = "";

	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	    String formattedDate = LocalDate.now().format(formatter);
	    LocalTime now = LocalTime.now();
        DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("HH:mm:ss");
        String formattedTime = now.format(formatter2);

	    //System.out.println("Updating ID: " + Sid + " on date: " + formattedDate);
            // 8:00 AM
        LocalTime startTime = LocalTime.of(9, 15);
        //LocalTime endTime = LocalTime.of(1, 15);     // 9:15 AM

        if ( now.isBefore(startTime)) {
            status = "Access Denied: Allowed time is after 04:15 PM";
            return status;
        }
        else {
        	
        	/*the issue is that queryForObject throws an exception if no row is returned,
        	 *  so your else block won’t even execute in that case. 
        	 *  To ensure "not allowed to checkout" is shown when the status is not "present" or no record is found, 
        	 *  you need to handle both cases.
        	 * that's why we use try catch block
*/
        	
        	String sql2 = "SELECT status FROM uploadAttendance WHERE PWD = ? and U_DATE=?";
        	try {
        	    String result = jdbctemplate.queryForObject(sql2, String.class, spwd, formattedDate);
        	    /*the String.class parameter is used to specify the expected return type of the SQL query result.
                       - By passing String.class, you're telling JdbcTemplate:
                                    “I expect the result of this query to be a single column of type String.
*/
        	    if (result.equalsIgnoreCase("present")) {
        	    	//mark final status as present if checkout success 
        	        String sql = "UPDATE uploadattendance SET checkout = ? WHERE pwd = ? AND U_DATE = ? ";        	        
        	        int rowcount = jdbctemplate.update(sql, formattedTime, spwd, formattedDate);
        	        String Fsql="update uploadAttendance set f_status=? where pwd=? and checkout=?";
        	        int FrowCount=jdbctemplate.update(Fsql,"present",spwd,formattedTime);
        	        status = (rowcount == 1 && FrowCount==1) ? "CHECK OUT DONE" : "Failed (Check ID or Password)";
        	    } else {
        	        status = "Not allowed to checkout";
        	    }
        	} catch (EmptyResultDataAccessException e) {
        	    status = "No attendance record found for given ID and date";
        	}


        	}
	   
	    return status;
	}
	

	/*@Override
	public List<ClassRoom> searchAllStudents(int spwd) {
		
		
		List<ClassRoom> stdList=jdbctemplate.query("SELECT id,U_date,checkin,checkout FROM uploadAttendance WHERE pwd='"+classid+"'",(rs, rowNum)->{
			ClassRoom std=new ClassRoom();
			std.setId(rs.getString("id"));
			std.setDate(rs.getString("U_date"));
			std.setCheckin(rs.getString("checkin"));
			//std.setStatus(rs.getString("status"));			
			std.setCheckout(rs.getString("checkout"));
			
			return std;
		});
		return stdList;*/
	public List<ClassRoom> searchAllStudents(int spwd) {
		List<ClassRoom> stdList=jdbctemplate.query("SELECT id,name FROM credentials_t WHERE pwd='"+spwd+"'",(rs, rowNum)->{
			ClassRoom std=new ClassRoom();
			std.setId(rs.getString("id"));
			std.setSname(rs.getString("name"));
			
			return std;
		});
		return stdList;
		
		
	}

	@Override
	public String markAbsent(String Sid) {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	    String formattedDate = LocalDate.now().format(formatter);
	    String status;
	    String sql = "delete from  uploadAttendance  where id=? and U_date=?";
	    int rowcount = jdbctemplate.update(sql, Sid,formattedDate);
	    status = (rowcount == 1) ? "completed" : "failed";
	    return status;	
}
	
	@Override
	public List<ClassRoom> searchAllStudentsX(String classid) {
		
		
		List<ClassRoom> stdList=jdbctemplate.query("SELECT id,U_date,checkin,checkout FROM uploadAttendance WHERE id='"+classid+"'",(rs, rowNum)->{
			ClassRoom std=new ClassRoom();
			std.setId(rs.getString("id"));
			std.setDate(rs.getString("U_date"));
			std.setCheckin(rs.getString("checkin"));
			//std.setStatus(rs.getString("status"));			
			std.setCheckout(rs.getString("checkout"));
			
			return std;
		});
		return stdList;
	}
}
