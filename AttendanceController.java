package com.vamsisoft.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.vamsisoft.dao.ClassRoom;
import com.vamsisoft.dao.StudentDao;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class AttendanceController {
	@Autowired
	private StudentDao studentdao;
	@RequestMapping(value="start",method=RequestMethod.GET)
	public String start() {
		return "start";
	}
	
	@RequestMapping(value="exit",method=RequestMethod.GET)
	public String exit() {
		return "exit";
	}
	
	@RequestMapping(value="home",method=RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	@RequestMapping(value="/1stMCA", method=RequestMethod.GET)
	public ModelAndView Add(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		return new ModelAndView("classform","classroom",new ClassRoom());
	}
	
	
	
	@RequestMapping(value="/1stMCAend", method=RequestMethod.GET)
	public ModelAndView end(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		return new ModelAndView("classform_End","classroom",new ClassRoom());
	}
	

	@RequestMapping(value="/2ndMCA", method=RequestMethod.GET)
	public ModelAndView Add2(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		return new ModelAndView("classform2","classroom",new ClassRoom());
	}
	
	
	@RequestMapping(value="/submitLogin", method=RequestMethod.POST)
	public ModelAndView Login1(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String classid=request.getParameter("classid");
		String password=request.getParameter("pwd");
		int pwd=Integer.parseInt(password);
		ClassRoom classRoom=studentdao.searchStudents(classid,pwd);
		String msg="";
		if(classRoom!=null) {
		//return new ModelAndView("display","classRoom",classRoom);
			return new ModelAndView("uploadAttendance","classroom",new ClassRoom());
		
	}else {
		
			msg="Class Room doesn't exist";
			return new ModelAndView("status","msg",msg);
		}
	
	}
	
	
	@RequestMapping(value="/submitLogin_End", method=RequestMethod.POST)
	public ModelAndView Login2(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String classid=request.getParameter("classid");
		String password=request.getParameter("pwd");
		int pwd=Integer.parseInt(password);
		ClassRoom classRoom=studentdao.searchStudents_End(classid,pwd);
		String msg="";
		if(classRoom!=null) {
		//return new ModelAndView("display_end","classRoom",classRoom);
			return new ModelAndView("uplaodAttendance_End","classroom",new ClassRoom());
		
	}else {
		
			msg="Class Room doesn't exist";
			return new ModelAndView("status","msg",msg);
		}
	
	}
	
	
	@RequestMapping(value="/submitLogin2", method=RequestMethod.POST)
	public ModelAndView LoginV(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String classid=request.getParameter("classid");
		String password=request.getParameter("pwd");
		int pwd=Integer.parseInt(password);
		ClassRoom classRoom=studentdao.searchStudents(classid,pwd);
		String msg="";
		if(classRoom!=null) {
		return new ModelAndView("display2","classRoom",classRoom);
		
	}else {
		
			msg="Class Room doesn't exist";
			return new ModelAndView("status","msg",msg);
		}
	
	}
	
	
	
	@RequestMapping(value="/vamsi", method=RequestMethod.GET)
	public ModelAndView vamsi(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		return new ModelAndView("uploadAttendance","classroom",new ClassRoom());
	}
	
	
	@RequestMapping(value="/vamsi_End", method=RequestMethod.GET)
	public ModelAndView vamsi2(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		return new ModelAndView("uplaodAttendance_End","classroom",new ClassRoom());
	}
	
	@RequestMapping(value="/vasanth", method=RequestMethod.GET)
	public ModelAndView vasanth(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		return new ModelAndView("uploadAttendance2","classroom",new ClassRoom());
	}

	@RequestMapping(value="/update", method=RequestMethod.POST)
	public ModelAndView upload(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String msg="";
		/*String name=request.getParameter("Sname");
		String roll=request.getParameter("Sid");*/
		String spassword=request.getParameter("Spwd");
		int spwd=Integer.parseInt(spassword);
		/*String msg=studentdao.upload(name,roll,spwd);
		
		return new ModelAndView("status","msg",msg);*///ABSSSASASA
		//List<ClassRoom> classRoomList = studentdao.searchAllStudents(roll);
		List<ClassRoom> classRoomList = studentdao.searchAllStudents(spwd);
		
		 
		if (!classRoomList.isEmpty()) {
		    ClassRoom classRoomx = classRoomList.get(0); // ✅ Get actual data from DB
		    String name = classRoomx.getSname();
		    String roll = classRoomx.getId();

		    msg = studentdao.upload(name, roll, spwd);
		    return new ModelAndView("status", "msg", msg);
		}

		else {
			msg="student doesn't exit...";
			return new ModelAndView("status","msg",msg);
		}
			 
		
		
		
	
}
	@RequestMapping(value="/update2", method=RequestMethod.POST)
	public ModelAndView uploadV(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		String roll=request.getParameter("Sid");
		String spassword=request.getParameter("Spwd");
		int spwd=Integer.parseInt(spassword);
		String msg=studentdao.upload2(roll,spwd);
		
		return new ModelAndView("status","msg",msg);
	
	
}

	
	
	@RequestMapping(value="/update_End", method=RequestMethod.POST)
	public ModelAndView upload2(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		//String roll=request.getParameter("Sid");
		String spassword=request.getParameter("Spwd");
		int spwd=Integer.parseInt(spassword);
		String msg=studentdao.upload_End(spwd);
		
		return new ModelAndView("status","msg",msg);
	
	
}
	
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public ModelAndView show(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<ClassRoom> classRoomList = studentdao.getAllPresentStudents(); // DAO returns List<ClassRoom>
	    ModelAndView mv = new ModelAndView("showStudents"); // JSP name
	    mv.addObject("classRoom", classRoomList); // Pass to JSP
	    return mv;

	}
	
	@RequestMapping(value = "/show2", method = RequestMethod.GET)
	public ModelAndView show2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<ClassRoom> classRoomList = studentdao.getAllPresentStudents2(); // DAO returns List<ClassRoom>
	    ModelAndView mv = new ModelAndView("showStudents2"); // JSP name
	    mv.addObject("classRoom", classRoomList); // Pass to JSP
	    return mv;

	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public ModelAndView search(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	    ModelAndView mv = new ModelAndView("searchStudents"); 
	    
	    return mv;

	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public ModelAndView search2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String classid=request.getParameter("Sid");
		/*ClassRoom classRoomList = studentdao.searchAllStudents(classid); 
	    return new ModelAndView("displayAllStudents","classRoomList",classRoomList);*/
		List<ClassRoom> classRoomList = studentdao.searchAllStudentsX(classid);
		return new ModelAndView("displayAllStudents", "classRoomList", classRoomList);

	}
	
	@RequestMapping(value = "/absent", method = RequestMethod.GET)
	public ModelAndView absent(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	    ModelAndView mv = new ModelAndView("markAbsent"); // JSP name
	    
	    return mv;

	}
	
	@RequestMapping(value = "/absent", method = RequestMethod.POST)
	public ModelAndView absent2(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String classid=request.getParameter("Sid");		
		String Aresult = studentdao.markAbsent(classid);	
		
		return new ModelAndView("status","msg",Aresult);

	}
	
	
}



