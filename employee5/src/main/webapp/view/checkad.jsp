
         
<html>
<head>
<title>Spring MVC form tags</title>
</head>

<body bgcolor="lightyellow">
<br/><br/><br/>
<center>

    <h2 style="color:green">Login For Job Application</h2>

    <form method="POST"  action="/login199"
    name="f" onsubmit="return check()">
        <table>
        <tr>
          <td>E-mail</td>
            <td><input type="text" name="email" /></td>
        </tr>
            <tr>
                <td>Old Password</td>
                <td><input type="text"name="password"/></td>
          
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
            <tr>
            </tr>
          
          
            
            
                <td><input type="submit" value="Change"
                style="color:blue"></td>
            </tr>
            
        
            
            </table>
            
            
            </form>
         
          
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
           <br/>
           <a href="/changepass11">Forget Password</a>
           <br/> <br/> <br/>
             <div><a href="/loginform1">Previous</a></div>
             </center>
            </body>
            </html>
            
             
            