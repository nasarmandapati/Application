<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>

<title>Spring Boot Mvc Form</title>
</head>
 <center>
   
<body bgcolor="lightblue">

  
<table border="2" width="70%" cellpadding="2">  

     
   <c:forEach var="edu" items="${users}">   
  
   
   
   <tr>
   <td>Employee Name</td>
   
   <td>${edu.name}</td> 
   </tr>
   <tr>
   <td>E-mail</td>
   
   <td>${edu.email}</td> 
   </tr>
   
   
   <tr>
   <td>Mobile Number:</td>
   <td>${edu.mob}</td>   
   </tr>
   
   <tr>
   <td>Adhar Number</td> 
   <td>${edu.adhar}</td>
   </tr>
   <tr>
   <td>Pan Number</td> 
   <td>${edu.pan}</td>
   </tr>
   
    <tr>
   <td>Do You Have Passport?</td> 
   <td>${edu.val1}</td>
   </tr>
   
   
   
    <tr>
   <td>Passport Number</td> 
   <td>${edu.passportnumber}</td>
   </tr>
   
    <tr>
   <td>Passport Expired Date</td> 
   <td>${edu.exp1}</td>
   </tr>
   
    <tr>
   <td>Passport Status</td> 
   <td>${edu.status1}</td>
   </tr>
   
   
    <tr>
   <td>Do You Have Visa?</td> 
   <td>${edu.val2}</td>
   </tr>
   
   
   
    <tr>
   <td>Visa Number</td> 
   <td>${edu.visanumber}</td>
   </tr>
   
   
    <tr>
   <td>Visa Expired Date</td> 
   <td>${edu.exp2}</td>
   </tr>
   
   
    <tr>
   <td>Visa Type</td> 
   <td>${edu.status2}</td>
   </tr>
   
   
   <tr>
   <td>Gender</td>
   <td>${edu.gender}</td>
   </tr>
   <tr>
   <td>Date Of Birth</td>
   <td>${edu.date}</td> 
   </tr>
   
   <tr>
   <td>Adress</td>
   <td>${edu.adress}</td>
   </tr>
   <tr>
   <td>City</td>
   <td>${edu.city}</td> 
   </tr>
   
   <tr>
   <td>State</td>
   <td>${edu.state}</td>
   </tr>
   
   <tr>
   <td><a href="/delete/${edu.email}">Delete</a></td>
   <td><a href="/edituser/${edu.email}">Edit</a></td>
    </tr>  
    
    </c:forEach>  
   </table> 
   
   //
   <center>
     
<h3>Professional  Details</h3>  
<table border="1"width="70%" cellpadding="4">  
<body bgcolor="lightblue">


     
   <c:forEach var="edu" items="${users1}">   
   <center>
   
   <tr> 
   <td>ONiE Soft Job ID</td> 
   <td>${edu.id}</td> 
   </tr>
   
   
   
  <tr>
   
   <td>Email</td>
   
   <td>${edu.email}</td>
  
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
   
   <td>Notice Period</td>
   
   <td>${edu.notice}</td>
  
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
   
   <td>Current Ctc</td>
   
   <td>${edu.cuctc}</td>
  
   </tr>
   
   
  <tr>
   
   <td>Expected Ctc</td>
   
   <td>${edu.expctc}</td>
  
   </tr>
   
   
    
  <tr>
   
   <td>LinkedIn</td>
   
   <td>${edu.link}</td>
  
   </tr>
   
   
    
  <tr>
   
   <td>Current Location</td>
   
   <td>${edu.culocation}</td>
  
   </tr>
   
   <tr>
   
   <td>Preferd Location</td>
   
   <td>${edu.culocation}</td>
  
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
   
   <th>Previous Company Details</th>
   
   
  
   </tr>
   
   
  
    
  <tr>
   
   <td>Previous Company Name</td>
   
   <td>${edu.prevCompanyName}</td>
  
   </tr>
   
   
  <tr>
   
   <td>Employee Id</td>
   
   <td>${edu.id1}</td>
  
   </tr>
   
   
    
   <tr>
   
   <td>Location</td>
   
   <td>${edu.location}</td>
  
   </tr>
   
   
    
   
    
 <tr>
   
   <td>Worked Years</td>
   
   <td>${edu.workedYears}</td>
  
   </tr>
   
   
    
   
 <tr>
   
   <td>Duration From	</td>
   
   <td>${edu.prevFromDate}</td>
  
   </tr>
   
    
   
   
 <tr>
   
   <td>To</td>
   
   <td>${edu.prevToDate}</td>
  
   </tr>
   
   
   
 <tr>
   
   <td>Role</td>
   
   <td>${edu.role}</td>
  
   </tr>
   
 <tr>
   
   <td>Designation</td>
   
   <td>${edu.designation}</td>
  
   </tr>
   
 <tr>
   
   <td>CTC</td>
   
   <td>${edu.ctc}</td>
  
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
  </center>
</body>
</html>