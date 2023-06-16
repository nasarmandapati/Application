

      
         <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Spring MVC form tags</title>

</head>

<body bgcolor="lightyellow">
<br/><br/><br/>
<center>
    <h2 style="color:green">Check Details </h2>

    <form:form method="POST" modelAttribute="login" action="runp1"    
    name="f" onsubmit="return check()">
        <table>
             <tr>
                <td>Email</td>
                <td><form:input path="email"  id="email"/></td>
          
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
            </tr>
            
            <tr>
            <td></td>
           
            
                <td><input  type="submit" value="Check"
                style="color:blue" width="50%"></td>
            </tr>
            
            </table>
            
            <br/> <br/> 
             <div><a href="javascript:history.go(-1)">Go back</a></div>
            
            </center>
            </form:form>
            
             <script>
         
               
          function check(){
        	  var v1=f.id.value;
        	  var v2=f.id.value;
        	 
        	
        	//  var v6=f.password.value;
        	 // var v = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[*&@#]).{6,}/; 
        	  
        	 
        	  
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
   
            </body>
            </html>

      