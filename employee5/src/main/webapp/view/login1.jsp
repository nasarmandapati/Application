<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Spring MVC form tags</title>
</head>

<body bgcolor="lightyellow">
<br/><br/><br/>
<center>
    <h2 style="color:green">Login For Admin</h2>

    <form:form method="POST" modelAttribute="login" action="/logina"
    name="f" onsubmit="return check()">
        <table>
            <tr>
                <td>ID</td>
                <td><form:input path="id" /></td>
          
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
            
             <a href="/check331">Change Password</a>
            
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
             <div><a href="/admin1">Previous</a></div>
             </center>
            </body>
            </html>
            
             
            
            