<head>
<title>Spring MVC form tags</title>

</head>

<body bgcolor="lightyellow">
<br/><br/><br/>
<center>
    <h2 style="color:green">Check Details By Domain</h2>

    <form action="/per412" name="f" onsubmit="return check()">
   <table>
   <tr>
   <td>Domain</td>
   
   </td>
   <td>
   <input type="text" name="domain"/>
   </td>
   </tr>
   
   <tr>
   <td></td>
   </tr>
    <tr>
   <td></td>
   </tr>
    <tr>
   <td></td>
   </tr>
   
   <tr>
   <td>
   <input type="submit" value="Check"/>
   </td>
   </tr>
   </table>
    
    
    </form>
     <br/>
      <a href="javascript:history.go(-3)">Previous</a>
    <center>
    <script>
    
          
          function check(){
        	  var v1=f.id.value;
        	 // var v2=f.id.value;
        	 
        	
        	 
        	  
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