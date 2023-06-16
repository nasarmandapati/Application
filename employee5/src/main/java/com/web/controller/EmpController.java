package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.PerEmp;
import com.web.model.Pro;
import com.web.repo.PerEmpRepo;
import com.web.repo.ProRepo;

@Controller
public class EmpController {
	@Autowired
	private PerEmpRepo repo;
	@Autowired
	private ProRepo repo1;
	
	
	
	
	
	
	@RequestMapping("/welcome")//welcome page
	public String welcome()
	{
		return "welcome";
	}
	@RequestMapping("/personaldetails1")//dummy
	public String personal1()
	{
		return "personaldetails1";
	}


	@RequestMapping("/personaldetails")//load personal details form
	public String home()
	{
		return "personaldetails";
	}
	@RequestMapping(value="/persave", method=RequestMethod.POST)//save personal details
	public String saveperemp(PerEmp emp,Model model)
	{
		
		repo.save(emp);
		return "sucess";
	}
	
	
	
	






	
	
	
	
	
	 
	
	 

		@RequestMapping("/professional1")//load professional details home
		public String proloadhome()
		{
			return "professional1";
		}
		

		@RequestMapping("/proempsave")//load professional details
		public String proload()
		{
			return "Employeeinfo";
		}
		
		
		@RequestMapping(value="/prosave", method=RequestMethod.POST)//save profesional details
		public String profesionalsave(Pro emp,Model model)
		{
			
			repo1.save(emp);
			return "personaldetails";
		}
		
		
		
		
		
				
			
			 @RequestMapping("/admin")//load professional details home
				public String admin()
				
				{
			
				 
					return "welcomeadmin";
				}
		
			 
			 
			 @RequestMapping(value="/personaldetails12",method=RequestMethod.GET) //view all users   
			    public String viewAllUser(Model model){    
			        model.addAttribute("users",repo.findAll());
			        
			        model.addAttribute("users1",repo1.findAll());
			        
			        return "viewallpersonal";   
			    } 
			 
			 
			  @RequestMapping(value="/delete/{id}",
			    		method=RequestMethod.GET)
			    public String deleteUser(@PathVariable String id)
			    {
			    	repo.deleteById(id);
			    	 return "delete"; 
			    }
			    @RequestMapping(value="/edituser/{id}",
			    		method=RequestMethod.GET)
			    public String updateUser1(@PathVariable String id,Model m)
			    {
			 PerEmp user   =	repo.findById(id).get();
			    	m.addAttribute("command",user);
			    	 return "viewpersonal1"; 
			    	 
			    }
			    @RequestMapping(value="/edup", method=RequestMethod.POST)
				public String UpdateUser(//for Updation
						PerEmp emp,Model model)
				{
					
					repo.save(emp);
					return "sucess";
				}
			    
			    @RequestMapping(value="/professional12",method=RequestMethod.GET) //view all users   
			    public String viewAllUser1(Model model){    
			        model.addAttribute("users",repo1.findAll());
			        return "vpro";   
			    } 
			 
			 
			  @RequestMapping(value="/delete1/{id}",
			    		method=RequestMethod.GET)
			    public String deleteUser1(@PathVariable String id)
			    {
			    	repo1.deleteById(id);
			    	 return "delete"; 
			    }
			    @RequestMapping(value="/edituser1/{id}",
			    		method=RequestMethod.GET)
			    public String updateUser2(@PathVariable String id,Model m)
			    {
			 Pro user   =	repo1.findById(id).get();
			    	m.addAttribute("command",user);
			    	
			    	 return "empv";//view
			    	 
			    }
			    @RequestMapping(value="/edu1", method=RequestMethod.POST)
				public String UpdateUser1(//for Updation
						Pro emp,Model model)
				{
					
					repo1.save(emp);
					return "sucess";
				}
			    
			    
			    
			    
			 
		 
	 
			 
			 
		
			    
			   
			    
			    
			    
			    
			    
			    
			    
			    
			    
			
			   
			   
			    
			   
			    
			    
			 
			    	 
	//hello
			    	 
			    	 
					    
					    
					    
					    
					   
			    	 
			    	 
			    	 
			    	 
			    	 
			    	 
			    	 
			    	 
			    	 
			    	 
			    	 
			    	 
			    	 
			    	 
			    
			  
			    
			    
			    
			    
				@RequestMapping("/admin4")//load professional details home
				public String proloadhome5()
				{
					return "admin1";
				}
  
			    
				@RequestMapping("/admina")//load professional details home
				public String proloadhome6()
				{
					return "single";
				}
				
				 @RequestMapping(value="/edu12", method=RequestMethod.POST)
					public String UpdateUser12(//for Updation
							PerEmp emp,Model model)
					{
						
						repo.save(emp);
						return "sucess";
					} 
				 @RequestMapping(value="/edu13", method=RequestMethod.POST)
					public String UpdateUser13(//for Updation
							Pro emp,Model model)
					{
						
						repo1.save(emp);
						return "sucess";
					} 
				
				
	
				 
@RequestMapping(value="/personal44")//load professional details home
public String proloadhome7(@PathVariable String id,Model m)
{
	

	PerEmp emp1  =	repo.findById(id).get();
	m.addAttribute("command",emp1);
	 
	return "viewpersonal1";
}	 



@RequestMapping("/oniesoft")//load professional details home
public String proloadhome8()
{
	return "viewonie1";
}


			

@RequestMapping("/onie")//load professional details home
public String proloadhome7()
{
	return "viewonie";
}









@RequestMapping("/viewpersonal40")//welcome page
public String wel40()
{
	return "singleper";
}


@RequestMapping(value="/runp40")
public String ad40(@RequestParam String id, Model model)
{
	PerEmp emp2  =	repo.findById(id).get();
	model.addAttribute("command",emp2);
	
	
	return "viewpersonal1";
}




//Family

@RequestMapping("/fam12")//load professional details home
public String fam()
{
	return "family";
}
@RequestMapping("/efam")//load professional details home
public String fam1()
{
	return "family1";
}







				
		
//view all  family details













}
			    

	
	
