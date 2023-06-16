
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Spring MVC form tags</title>
<style>
td{
padding:2;
margin:2;

}
</style>
</head>

<body bgcolor="lightgreen">
<br/><br/><br/>
<center>
    <h2>Register For Admin</h2>

    <form:form method="POST" modelAttribute="customer" action="register1" 
    name="f" onsubmit="return check()">
        <table>
            <tr>
                <td> ID</td>
                <td><form:input path="id" /></td>
            </tr>
            
            <tr>
                <td>Name</td>
                <td><form:input path="ename" name="ename"/></td>
            </tr>
            
            
            
            <tr>
                <td>Email</td>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
              <td>Mobile Number</td>
                <td><form:input path="mob" /></td>
            </tr>
            <tr>
                <td> Password</td>
                <td><form:password path="password" /></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><form:password path="cnpassword" /></td>
            </tr>
            <tr>
            <td></td>
            </tr>
            <tr>
            <tr>
            <td></td>
            </tr>
            <tr>
            
                <td><input type="submit" value="Register"
                style="color:green"></td>
            </tr>
            <tr>
            <td>
            <br/> <br/>
            <a href="/admin1">Previous</a>
            </td>
            </tr>
            </table>
            </form:form>
            </center>
  <script>
         
               
          function check(){
        	  var v1=f.id.value;
        	  var v2=f.id.value;
        	  
        	  var v44=f.ename.value;
        	  var v45=/^[a-zA-Z\s]*$/;
        	  
        	  
        	  
        	  var v3=f.email.value;
        	 
        	  var x = document.f.email.value;
        	  i1 = x.indexOf("@");
        	  i2 = x.lastIndexOf(".");
        	  
        	  var v4=f.mob.value;
        	  
        	  var v5 = /^\d{10}$/;
        	//  var v6=f.password.value;
        	//  var v = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[*&@#]).{6,}/; 
        	  
        	  var v7=f.cnpassword.value;
        	  
        	  if(v1==""){
        		alert("Please Fill The Id") 
        		return false;
        	  }
        	  
        	  if(v1.length<6){
        		alert("Id Maximum 6 Characters") 
        		return false;
        	  }
        	  
        	  if(v44==""){
            		alert("Please Fill The Name") 
            		return false;
            	  }
          	  
          	  if(!f.ename.value.match(v45)){
          			alert("Name Alphabets Only") 
          	    
          			return false;
          	    }
            	  
        	 
        	  
        	  if(v3==""){
        		alert("Please Fill The Email"); 
        		return false;
        	  }
        	  if (i1 < 1 || (( i2 - i1) < 2 ))
        	  {
        	  alert("Please enter correct email ID")
        	  
        	  return false;
        	  }
        	  
        	  if(v4==""){
          		alert("Please Fill The Mobile Number") 
          		return false;
          	  }  
        	  if(!f.mob.value.match(v5))
        	  {
        	  alert("Mobile Number must be 1 to 10 Integers");
        	 
        	  return false;
        	  }
        	  
        	  
        	  
        	
          	  
          	if(v7==""){
        		alert("Please Fill The Confirm Password") 
        		return false;
        	  }
          	
          	
          	if(v6!=v7){
        		alert("Password ShouldMatch") 
        		return false;
        	  }
          	  
        	 
          }
        	
           </script> 
   
            </body>
            </html>
            
            ___________________