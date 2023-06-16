<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
 <!DOCTYPE html>
 <html>
 <head>
 <title>
 
 </title>
 <style>
 
.background {
			background-image: url("");
			background-size:50%;
			opacity:0.5 ;
			position: fixed;
			top:0;
			left:-2;
			width: 100%;
			height: 100%;
			z-index: -1;
			
		}
		
  
 </style>
 </head>
<body bgcolor="lightpink">

    <center>
    <div class="background"></div>

<h2 style="color:red">View Or Update Personal Details</h2>


<form:form method="Post" action="/edu12" name="f" onsubmit="return check()">

    <table>
       
        
         <tr>
        <td>Employee Name</td>
        <td> <form:input path="name" class="edit-field"/></td>
        </tr>
        
        
        <tr>
        <td>Date of Birth</td>
        <td> <form:input path="date"/></td>
        </tr>
        
        
         <tr>
        <td>Gender</td>
        <td> <form:input path="gender"/></td>
        </tr>
      
       <tr>
        <td>Mobile Number</td>
        <td> <form:input path="mob"/></td>
        </tr>
      
         <tr>
        <td>E-mail</td>
        <td> <form:input path="email"/></td>
        </tr>
        
         <tr>
        <td>Aadhar Number</td>
        <td> <form:input path="adhar"/></td>
        </tr>
        
         <tr>
        <td>PAN Card Number</td>
        <td> <form:input path="pan"/></td>
        
        </tr>
        
        
         <tr>
        <td>Do you have Passport?</td>
        <td> <form:input path="val1"/></td>
        
        </tr>
        
         <tr>
        <td>Passport Number</td>
        <td> <form:input path="passportnumber"/></td>
        
        </tr>
        
         <tr>
        <td>Passport Expire Date</td>
        <td> <form:input path="exp1"/></td>
        
        </tr>
        
        
         <tr>
        <td>Passport Status</td>
        <td> <form:input path="status1"/></td>
        
        </tr>
        
        
        
         <tr>
        <td>Do you have Visa?</td>
        <td> <form:input path="val2"/></td>
        
        </tr>
        
        
         <tr>
        <td>Visa Number</td>
        <td> <form:input path="visanumber"/></td>
        
        </tr>
        
       
         <tr>
        <td>Visa Expire Date</td>
        <td> <form:input path="exp2"/></td>
        
        </tr>
        
       
        <tr>
        <td>Visa Type</td>
        <td> <form:input path="status2"/></td>
        
        </tr>
        
       
       
       
       
        
        
        
        <tr>
        <td>Address</td>
        <td> <form:input path="adress"/></td>
        </tr>
        
         <tr>
        <td>City</td>
        <td> <form:input path="city"/></td>
        </tr>
        
         <tr>
         
        <td>State</td>
        
        <td>
         <form:input path="state"/>
        
        </td>
        
        </tr>
        
        
         <tr>
         
        <td>Pin Code</td>
        
        <td>
         <form:input path="pinnumber"/>
        
        </td>
        
        </tr>
        
        
         
      <tr>
        <td>
         <input type="submit" value="Update"/>
         
         <td>
       
       <input type="reset" value="Reset"/>
      </td>
      </tr>
      
       
        
        
        
        
    </table>
    
</form:form>


<br>




        
      <script>
    function check(){
        	 var v3=f.name.value;
        	var v4=/^[a-zA-Z\s]*$/;
        	var v5=f.mob.value;
        	var v6=/^\d{10}$/;
        	 var v7=f.email.value;
        	 
        	 var x = document.f.email.value;
        	 
          	  i1 = x.indexOf("@");
          	  i2 = x.lastIndexOf(".");
        	  
           	  var v8=f.adhar.value;
           	var v9=/^\d{12}$/;
           	
          	var v10=f.pan.value;
      	  
           	
           	
           	
        	var v11=/[A-Z0-9]/;
          	  

          	 var v22=f.gender.value;
          	 var v23=f.date.value;
          	 
          	 
          	var v24=f.adress.value;
        	var v25=/^[a-zA-Z\s]*$/;
        	
        	var v26=f.city.value;
        	var v27=/^[a-zA-Z\s]*$/;
        	
        	var v28=f.state.value;
        	var v29=/[A-Z0-9]/;
        	
        	  
    if(v3==""){
		alert("Please Fill The Name") 
    
		return false;
    }
	  
    if(!f.name.value.match(v4)){
		alert("Name Alphabets Only") 
    
		return false;
    }
    if(v5==""){
  		alert("Please Fill The Mobile Number") 
  		return false;
  	  }  
	  if(!f.mob.value.match(v6))
	  {
	  alert("Mobile Number must be 1 to 10 Integers");
	 
	  return false;
	  }
	  
	  
	  if(v7==""){
  		alert("Please Fill The Email"); 
  		return false;
  	  }
  	  if (i1 < 1 || (( i2 - i1) < 2 ))
  	  {
  	  alert("Please enter correct email ID")
  	  
  	  return false;
  	  }
	  
  	if(v8==""){
  		alert("Please Fill The Adhar Number") 
  		return false;
  	  }  
	  if(!f.adhar.value.match(v9))
	  {
	  alert("Adhar Number must be 1 to 12 Integers");
	 
	  return false;
	  }
	  
	  
	  
	  	if(v10==""){
	  		alert("Please Fill The Pan Number") 
	  		return false;
	  	  }  
		  if(!f.pan.value.match(v11))
		  {
		  alert(" Characters and Numeric have length 10 in pan");
		 
		  return false;
		  }
		  if(v10.length<10){
      		alert(" Pan Length Maximum 10 Characters") 
      		return false;
      	  }
		  
		  
		  
	  
		  
		  
		  
		  
		  
		  
		  
		  
		  
    	  
					    if(v22==""){
			        		alert("Please Fill The Gender") 
			        		return false;
			        	  }
					    
			        	  if(v23==""){
			        		alert("Please Fill The Date Of Birth") 
			        		return false;
			        	  }
			         	  
			        	    if(v24==""){
			        			alert("Please Fill The Adress") 
			        	    
			        			return false;
			        	    }
			        	    
			        		  
			        	    if(!f.adress.value.match(v25)){
			        			alert("Special Characters Not Allowed in Adress ") 
			        	    
			        			return false;
			        	    }
			        	    
			        	    if(v26==""){
			        			alert("Please Fill The City") 
			        	    
			        			return false;
			        	    }
			        		  
			        	    if(!f.city.value.match(v27)){
			        			alert("Special Characters Not Allowed") 
			        	    
			        			return false;
			        	    }
			        	    if(v28==""){
			        			alert("Please Fill The State") 
			        	    
			        			return false;
			        	    }
			        	    
			        	    
			        	    if(v30==""){
			        	  		alert("Please Fill The Pin Code") 
			        	  		return false;
			        	  	  }  
			        		  if(!f.pinnumber.value.match(v31))
			        		  {
			        		  alert("Pin Number must be 1 to 6 Integers");
			        		 
			        		  return false;
			        		  }
			        		  
    }
    

			        		
	  
	  	  
   </script>
   
      
   <br>
    <a href="javascript:history.go(-1)">Go back</a>
   
   
</body>
</html>




        
        
        
        
        
        
        
        
        
        
     
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
     
        
        
        
        
        
        
        
        
        
        
       