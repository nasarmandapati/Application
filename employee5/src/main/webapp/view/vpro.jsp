<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<center>
     
<h1>Professional  Details</h1>  
<table border="1"width="70%" cellpadding="4">  
<body bgcolor="lightblue">


     
   <c:forEach var="edu" items="${users1}">   
   <center>
   
   <tr> 
   <td>Id No</td> 
   <td>${edu.id}</td> 
   </tr>
   
  
   <tr>
   <td>Employee Name</td>
   <td>${edu.ename}</td>   
   </tr>
   
   <tr>
   <td>Total Experience In Years</td>
   
   <td>${edu.expy}</td>
   
   </tr>
   
   <tr>
   <td>Relevant IT/SW Experience In Years</td> 
   <td>${edu.rexpy}  </td> 
   
  </td> 
   </tr>
   
   <tr>
   <td>Duration From</td> 
   <td>${edu.sdate} </td> 
   </tr>
   
   <tr>
   
   <td>To</td>
   
   <td>${edu.edate}</td>
  
   </tr>
   
   
    <tr>
   <td>Domain</td> 
   <td>${edu.domain}</td>
  
 
   </tr>
   
   <tr>
   <td>Expertise</td> 
   <td>${edu.expertise}</td>
   </tr>
   
   <tr>
   <td>Primary Skills</td> 
   <td>${edu.pskills}</td>
   </tr>
   
   <tr>
   <td>Languages</td> 
   <td>${edu.languages}</td>
  
  
   </tr>
   <tr>
   <td>Frameworks</td> 
   <td>${edu.frameworks}</td>
 
   </tr>
   <tr>
   <td>Tools</td> 
   <td>${edu.tools}</td>
  
  
   </tr>
   
   <tr>
   <td>Databases</td> 
   <td>${edu.databases1}</td>
  
  
   </tr>
   <tr>
   <td>Servers</td> 
   <td>${edu.servers}</td>
  
  
   </tr>
   <tr>
   <td>Cloud</td> 
   <td>${edu.cloud}</td>
  
  
   </tr>
   
   <tr>
   <td><a href="/delete1/${edu.id}">Delete</a></td>
   <td><a href="/edituser1/${edu.id}">Edit</a></td>
    </tr>  
   
   </c:forEach>  
    </table> 
     </center> 
   <div>
     <a href="javascript:history.go(-1)">Go back</a>
   </div>
   
 
</body>
   