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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
public class ViewallController {

	@Autowired
	private PerEmpRepo repo;
	@Autowired
	private ProRepo repo1;
	
	@Autowired
	private RegisterImp service;
	@Autowired
	private Register1Imp service1;
	@Autowired
	private RegisterRepo repo7;
	
	
	
	@Autowired
	private Register1Repo repo8;
	

	


@RequestMapping("/viewpersonal400")
public String loginForm41()
{
	
	return "singlepro";


}








@RequestMapping("/viewpersonal41")
public String loginForm42()
{
	
	return "singleper";


}






@RequestMapping(value="/per4556")//edited /per455
public String addForm8(@RequestParam String id, Model model)
{
	Pro emp1  =	repo1.findById(id).get();
	model.addAttribute("command",emp1);
	 
	
	
		return "empv";
		
	
	
}












//start


@RequestMapping("/viewpersonal42")
public String loginForm43()
{
	
	return "singlebank";


}











@RequestMapping("/viewpersonal43")
public String loginForm44()
{
	
	return "singledu1";


}










@RequestMapping("/viewpersonal44")
public String Form45()
{
	
	return "singleonie";


}










@RequestMapping("/viewpersonal45")
public String Form46()
{
	
	return "singleeme";


}








//family


@RequestMapping("/vfam5")
public String Form47()
{
	
	return "single1fam";


}

@RequestMapping(value="/check33")

public String addForm16() {
	
	return "check";
}



@RequestMapping(value="/login18")
public String addForm15(@RequestParam String email, @RequestParam String password, @RequestParam String password1, @RequestParam String cnpassword, Model m) {

    Register reg = repo7.findByEmailAndPassword(email, password);

    if (reg != null) {
        reg.setPassword(password1);
        repo7.save(reg); // Save the updated Register object
        return "savesuceess";
    } else {
        return "delete4";
    }
}


@RequestMapping(value="/changepass")

public String addForm19() {
	
	return "changepass";
}



@RequestMapping(value="/login19")
public String addForm16(@RequestParam String email, @RequestParam String mob, @RequestParam String password1, @RequestParam String cnpassword, Model m) {

    Register reg = repo7.findByEmailAndMob(email,mob);

    if (reg != null) {
        reg.setPassword(password1);
        repo7.save(reg); // Save the updated Register object
        return "savesuceess";
    } else {
        return "delete4";
    }
    
} 
  //admin password
    


@RequestMapping(value="/check331")

public String addForm17() {
	
	return "checkad";
}


@RequestMapping(value = "/login199")
public String addForm166(
        @RequestParam String email,
        @RequestParam String password,
       
        Model m,
        HttpSession session) {

    Register1 reg = repo8.findByEmailAndPassword(email, password);

    if (reg != null) {
        
         // Save the updated Register object
    	
       
        // Generate OTP
        String otp = generateOTP1();

        // Store the OTP and its expiration time in session
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime expirationTime = now.plusMinutes(5); // OTP expires in 5 minutes
        session.setAttribute("otp", otp);
        session.setAttribute("otpExpiration", expirationTime);
   
        try {
            // Send OTP via email
            sendEmail1(email, "OTP Verification", " \n\nYour OTP is: " + otp + " and it is valid for 5 minutes.");
        } catch (MessagingException e) {
            // Handle any exceptions that occurred during email sending
            e.printStackTrace();
            return "otperror";
        }

        return "entotp";
    } else {
        // Handle case when the user is not found
        return "delete4";
    }
}

private String generateOTP1() {
    // Generate a random 6-digit OTP
    int otp = (int) (Math.random() * 900000) + 100000;
    return String.valueOf(otp);
}

private void sendEmail1(String recipientEmail, String subject, String body) throws MessagingException {
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
@RequestMapping(value = "/otp3", method = RequestMethod.POST)
public String submitOTP1(@RequestParam String otp, HttpSession session) {
    

        // Check if the entered OTP matches the stored OTP
        String storedOTP = (String) session.getAttribute("otp");
        
     
        if (otp.equals(storedOTP)) {
            // Save the newRegister object using the repository
            

            // Clear the session after successful registration
            
            session.removeAttribute("otp");

            return "checko";
        } else {
            // Handle case when entered OTP is incorrect
            return "invalidotp";
        }
}
@RequestMapping(value="/checko")
public String addForm23(@RequestParam String password1, @RequestParam String email, @RequestParam String password2, Register1 reg, ModelMap model, HttpSession session) {

    Register1 reg1 = repo8.findByEmail(email);

    // Register1 reg3 = (Register1) session.getAttribute("register10");
    Register1 log = service1.login1(reg.getEmail(), reg.getCnpassword(), reg.getEname(), reg.getMob(), reg.getId(), reg.getPassword());

    if (log != null) {
        // Create a new instance of Register1 and set the password
        reg.setPassword(password1);
        repo8.save(log);
    }

    return "savesuceess";
}

//change password

@RequestMapping(value = "/changepass11")
public String addForm167(
        @RequestParam String email,
        @RequestParam String mob,
       
        Model m,
        HttpSession session) {

    Register1 reg = repo8.findByEmailAndMob(email,mob);

    if (reg != null) {
        
         // Save the updated Register object
    	
       
        // Generate OTP
        String otp = generateOTP2();

        // Store the OTP and its expiration time in session
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime expirationTime = now.plusMinutes(5); // OTP expires in 5 minutes
        session.setAttribute("otp", otp);
        session.setAttribute("otpExpiration", expirationTime);
   
        try {
            // Send OTP via email
            sendEmail1(email, "OTP Verification", " \n\nYour OTP is: " + otp + " and it is valid for 5 minutes.");
        } catch (MessagingException e) {
            // Handle any exceptions that occurred during email sending
            e.printStackTrace();
            return "otperror";
        }

        return "entotp";
    } else {
        // Handle case when the user is not found
        return "delete4";
    }
}

private String generateOTP2() {
    // Generate a random 6-digit OTP
    int otp = (int) (Math.random() * 900000) + 100000;
    return String.valueOf(otp);
}

private void sendEmail2(String recipientEmail, String subject, String body) throws MessagingException {
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
@RequestMapping(value = "/otp4", method = RequestMethod.POST)
public String submitOTP2(@RequestParam String otp, HttpSession session) {
    

        // Check if the entered OTP matches the stored OTP
        String storedOTP = (String) session.getAttribute("otp");
        
     
        if (otp.equals(storedOTP)) {
            // Save the newRegister object using the repository
            

            // Clear the session after successful registration
            
            session.removeAttribute("otp");

            return "checko";
        } else {
            // Handle case when entered OTP is incorrect
            return "invalidotp";
        }
}
@RequestMapping(value="/checko1")
public String addForm24(@RequestParam String password1, @RequestParam String email, @RequestParam String password2, Register1 reg, ModelMap model, HttpSession session) {

    Register1 reg1 = repo8.findByEmail(email);

    // Register1 reg3 = (Register1) session.getAttribute("register10");
    Register1 log = service1.login1(reg.getEmail(), reg.getCnpassword(), reg.getEname(), reg.getMob(), reg.getId(), reg.getPassword());

    if (log != null) {
        // Create a new instance of Register1 and set the password
        reg.setPassword(password1);
        repo8.save(log);
    }

    return "savesuceess";
}


}


	

