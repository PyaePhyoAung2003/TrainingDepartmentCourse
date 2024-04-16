package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Course;
import model.SelectedCourseDao;
import model.SendEmail;

public class RegisterSessionServlet extends HttpServlet {

	@SuppressWarnings("static-access")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String register_name = req.getParameter("name");
		String emailRegex = "^[a-zA-Z0-9_+&-]+(?:\\."+
                "[a-zA-Z0-9_+&-]+)*@" +
                "(?:[a-zA-Z0-9-]+\\.)+[a-z" +
                "A-Z]{2,7}$";
		if(req.getParameter("email").matches(emailRegex)) {
			String register_email = req.getParameter("email");
			String register_course = req.getParameter("course");
		
			System.out.println(" The Register Name is " + register_name);
			System.out.println(" The Register Email is " + register_email);
			System.out.println(" The Register Course is " + register_course);

			SelectedCourseDao courseReg = new SelectedCourseDao();

			// Call the Method to save the register course
			Course reg_course = courseReg.saveRegisterCourse(register_name, register_course, register_email	);

			
			// Send Email To User
			SendEmail mm=new SendEmail();
			String sub="Information About the Registered Session";
					
			if(register_course.equals("Microsoft Word (Morning)") || 
			   register_course.equals("Excel (Morning)") || 
			   register_course.equals("PowerPoint (Morning)") || 
			   register_course.equals("Techical skills (Morning)") || 
			   register_course.equals("Soft skills (Morning)")){
				
				String message="Hello! This comes from the training division.\r\n"
						+ ". We appreciate your attendance registration." +
						"the subject. Your chosen path is "+ register_course+ 
						". Your schedule is from 7:00AM to 9:00AM because you decided to attend morning session." +
						"in the morning.";
				 mm.send("hka31213@gmail.com","ynbbrlnkrtxagvkr",register_email,sub,message); 
			}
			else{
				String message="Hello! This is from the training division. We appreciate your attendance registration." +
						"the subject. Your chosen path is "+ register_course+ 
						"You have a 4:00–6:00 PM schedule since you decided to attend the evening session. " +
						"in the evening.";
				 mm.send("hka31213@gmail.com","ynbbrlnkrtxagvkr",register_email,sub,message); 
			}
		
			req.setAttribute("register_course", reg_course);

			// Dispatch the JSP
			RequestDispatcher rd = req.getRequestDispatcher("thankyou.jsp");
			rd.forward(req, resp);
			
		}
		else {
			System.err.println("Your email is worng");
		}
		
	}
}
