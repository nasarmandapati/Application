package com.web.controller;

import java.time.LocalDateTime;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.Login;
import com.web.model.PerEmp;
import com.web.model.Pro;
import com.web.model.Register;
import com.web.model.Register1;
import com.web.repo.PerEmpRepo;
import com.web.repo.ProRepo;
import com.web.repo.Register1Repo;
import com.web.repo.RegisterRepo;
import com.web.service.Register1Imp;
import com.web.service.RegisterImp;

@Controller

public class RegisterController {
	@Autowired
	private RegisterImp service;
	@Autowired
	private Register1Imp service1;
	
	
	@Autowired
	private RegisterRepo repo7;
	
	@Autowired
	private Register1Repo repo8;
	
	
	
	@Autowired
	private PerEmpRepo repo;
	
	@Autowired
	private ProRepo repo1;
	@Autowired
	
	
	
	@RequestMapping("/home1")
	public String homePage1()
	{
		return "home1";
	}

	@RequestMapping("/")
	public String homePage()
	{
		return "home";
	}
	@RequestMapping("/add")
	public String regForm(Model model)
	{
		Register customer=new Register();
		model.addAttribute("customer",customer);
		
		return "register";
		
	}
	
	//otp for applicant
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String addForm11(
	        @RequestParam String email,
	        @RequestParam String ename,
	        @RequestParam String mob,
	        @RequestParam String password,
	        @RequestParam String cnpassword,
	        Register customer,
	        ModelMap model,
	        HttpSession session) {

	    model.put("ename", ename);

	    Register reg = repo7.findByEmailAndMob(email, mob);

	    if (reg != null) {
	        return "regfail";
	    } else {
	        Register newRegister = new Register();
	        newRegister.setEmail(email);
	        newRegister.setEname(ename);
	        newRegister.setMob(mob);
	        newRegister.setPassword(password);
	        newRegister.setCnpassword(cnpassword);

	        // Generate OTP
	        String otp = generateOTP();

	        // Store the OTP and its expiration time in session
	        LocalDateTime now = LocalDateTime.now();
	        LocalDateTime expirationTime = now.plusMinutes(5); // OTP expires in 5 minutes
	        session.setAttribute("otp", otp);
	        session.setAttribute("otpExpiration", expirationTime);

	        session.setAttribute("registera", newRegister);

	        try {
	            // Send OTP via email
	            sendEmail(email, "OTP Verification", "Hello " + ename + ",\n\nYour OTP is: " + otp + " and it is valid for 5 minutes.");
	            System.out.println("Email sent successfully.");
	        } catch (MessagingException e) {
	            // Handle any exceptions that occurred during email sending
	            e.printStackTrace();
	            return "otperror";
	        }

	        return "otp1";
	    }
	}

	// Validation
	@RequestMapping(value = "/otp1", method = RequestMethod.POST)
	public String submitOTP1(@RequestParam String otp, HttpSession session, ModelMap model) {
	    // Get the stored newRegister object from the session
	    Register newRegister = (Register) session.getAttribute("registera");
	    String storedOTP = (String) session.getAttribute("otp");

	    System.out.println("OTP entered by user: " + otp);
	    System.out.println("Stored OTP in session: " + storedOTP);

	    // Check if newRegister object is found in the session and OTP is correct
	    if (newRegister != null && storedOTP != null && otp.equals(storedOTP)) {
	        // Save the newRegister object using the repository
	        Register savedRegister = repo7.save(newRegister);
	        model.put("ename", savedRegister.getEname());

	        // Clear the session after successful registration
	        session.removeAttribute("registera");
	        session.removeAttribute("otp");

	        return "regsucess";
	    } else {
	        // newRegister object not found in session or OTP is incorrect, return registration failure page
	        return "inotp";
	    }
	}
	
	
	
	@RequestMapping("/loginform")
	public String loginForm(Model model)
	{
		Login login=new Login();
		model.addAttribute("login",login);
		return "login";

	}//modified
	@RequestMapping(value="/login5",method=RequestMethod.POST)
	public String addForm(@RequestParam String email,@RequestParam String password,@ModelAttribute Login login, Model model
			)
	
	{
		Register emp1=repo7.findByEmailAndPassword(email, password);
		
		
		model.addAttribute("command",emp1);

		




		
		
		
		Register log=service.login(login.getEmail(),login.getPassword());
		String message=null;
		if(log!=null)
		{
			message="Your Logined Success fully";
			return "personaldetails1";
			
		}
		else {
			message="delete";
		

		
		return "delete1";
		}
	
	}
	
	
	
	
	
	
	
	
	
	//start admin access

	@RequestMapping("/admin1")
	public String homePage3()
	{
		return "home2";
	}
	
	@RequestMapping("/add1")
	public String regForm1(Model model)
	{
		Register1 customer=new Register1();
		model.addAttribute("customer",customer);
		return "register1";
	}
	

	

	//otp
	
	@RequestMapping(value = "/register1", method = RequestMethod.POST)
	public String addForm10(
	        @RequestParam String id,
	        @RequestParam String ename,
	        @RequestParam String email,
	        @RequestParam String mob,
	        @RequestParam String password,
	        @RequestParam String cnpassword,
	        Register1 customer,
	        ModelMap model,
	        HttpSession session) {

	    model.put("ename", ename);

	    Register1 reg = repo8.findByEmailAndMob(email, mob);

	    if (reg != null) {
	        return "regfail";
	    } else {
	        Register1 newRegister = new Register1();
	        newRegister.setId(id);
	        newRegister.setEname(ename);
	        newRegister.setEmail(email);
	        newRegister.setMob(mob);
	        newRegister.setPassword(password);
	        newRegister.setCnpassword(cnpassword);
	        
	        // Generate OTP
	        String otp = generateOTP();

	        // Store the OTP and its expiration time in session
	        LocalDateTime now = LocalDateTime.now();
	        LocalDateTime expirationTime = now.plusMinutes(5); // OTP expires in 1 minute
	        session.setAttribute("otp1", otp);
	        session.setAttribute("otpExpiration", expirationTime);
	        
	        session.setAttribute("register10", newRegister);

	        try {
	            // Send OTP via email
	            sendEmail(email, "OTP Verification", "Hello"+" "+ename+",\n\nYour OTP is: " +" "+ otp+" "+"and Your Otp is  Valid 5 Minutes");
	        } catch (MessagingException e) {
	            // Handle any exceptions that occurred during email sending
	            e.printStackTrace();
	            return "otperror";
	        }

	        return "enterotp";
	    }
	}

	private String generateOTP() {
	    // Generate a random 6-digit OTP
	    int otp = (int) (Math.random() * 900000) + 100000;
	    return String.valueOf(otp);
	}

	private void sendEmail(String recipientEmail, String subject, String body) throws MessagingException {
	    // Replace with your email and password
	    String senderEmail = "slrvamsikrishna@gmail.com";
	    String senderPassword = "zugweogflidhqcyi";

	    // Set properties
	    Properties properties = new Properties();
	    properties.put("mail.smtp.auth", "true");
	    properties.put("mail.smtp.starttls.enable", "true");
	    properties.put("mail.smtp.host", "smtp.gmail.com");
	    properties.put("mail.smtp.port", "587");

	    // Create session
	    Session session = Session.getInstance(properties, new Authenticator() {
	        protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(senderEmail, senderPassword);
	        }
	    });

	    // Create message
	    Message message = new MimeMessage(session);
	    message.setFrom(new InternetAddress(senderEmail));
	    message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
	    message.setSubject(subject);
	    message.setText(body);

	    // Send message
	    Transport.send(message);
	    System.out.println("Email sent successfully.");
	}
	
	
	
	
	//
	
	
	//otp validatio
	@RequestMapping(value = "/otp", method = RequestMethod.POST)
	public String submitOTP(@RequestParam String otp, HttpSession session, ModelMap model) {
	    // Get the stored newRegister object from the session
	    Register1 newRegister = (Register1) session.getAttribute("register10");
	    String reg = (String) session.getAttribute("otp1");

	    // Check if newRegister object is found in the session
	    if (newRegister != null && reg != null && otp.equals(reg)) {
	        // Save the newRegister object using the repository
	        Register1 reg2 = repo8.save(newRegister);
	        model.put("ename", reg2.getEname());

	        // Clear the session after successful registration
	       // session.removeAttribute("register1");

	        return "regsucess";
	    } else {
	        // newRegister object not found in session or OTP is incorrect, return registration failure page
	        return "inotp";
	    }
	}

			




	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/loginform1")
	public String loginForm1(Model model)
	{
		Login login=new Login();
		model.addAttribute("login",login);
		return "login1";
	
	
	}
	
	
	
	@RequestMapping(value="/logina",method=RequestMethod.POST)
	public String addForm1(@ModelAttribute Login login, Model model)
	{
		Register1 log=service1.login(login.getId(),login.getPassword());
		String message=null;
		if(log!=null)
		{
			message="Your Logined Success fully";
			return "admin1";
			
		}
		else {
			message="delete";
		

		
		return "delete1";
		}
	}
	
	
	

@RequestMapping("/viewpersonal")
	public String loginForm3(Model model)
	{
		Login login=new Login();
		model.addAttribute("login",login);
		return "viewpersonal";
	
	
	}

	
@RequestMapping(value="/runp")
public String addForm3(@RequestParam String email, Model model)
{
	
	PerEmp emp1=repo.findByEmail(email);
	
	
	model.addAttribute("command",emp1);

	
	 
		return "viewpersonal1";
		
	}
	




@RequestMapping("/viewprofessional")
public String loginForm4(Model model)
{
	Login login=new Login();
	model.addAttribute("login",login);
	return "viewprofessional";


}
//h2





@RequestMapping(value="/runp1")
public String addForm17(@RequestParam String email, Model model,
		ModelMap m)
{
	
	Pro emp1=repo1.findByEmail(email);
	
	model.addAttribute("command",emp1);
	
return "empv";
}




}



















