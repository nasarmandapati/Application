
          <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Spring MVC form tags</title>
</head>

<body bgcolor="lightyellow">
<br/><br/><br/>
<center>

    <h2 style="color:green">Login For Job Application</h2>

    <form:form method="POST" modelAttribute="login" action="/login5"
    name="f" onsubmit="return check()">
        <table>
            <tr>
                <td>Email</td>
                <td><form:input path="email" /></td>
          
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
                <td>Password</td>
                <td><form:password path="password" /></td>
            </tr>
             </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            <tr>
                <td><input type="submit" value="Login"
                style="color:blue"></td>
            </tr>
            
        
            
            </table>
            
            
            </form:form>
         
            <a href="/check33">Change Password</a>
             <script>
         
               
          function check(){
        	  var v1=f.id.value;
        	  var v2=f.id.value;
        	 
        	
        	 // var v6=f.password.value;
        	  //var v = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[*&@#]).{6,}/; 
        	  
        	 
        	  
        	  if(v1==""){
        		alert("Please Fill The Id") 
        		return false;
        	  }
        	  
        	  if(v1.length<6){
        		alert("Id Maximum 6 Characters") 
        		return false;
        	  }
        	 
        	
        	  
        	  
        	  
        	  
        	
        	 
          }
        	
           </script> 
           <br/> <br/> <br/>
             <div><a href="/">Previous</a></div>
             </center>
            </body>
            </html>
            
             
            