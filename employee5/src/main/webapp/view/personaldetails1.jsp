
<head>
<Style>

div {
  float:right;
}
.background {
			background-image: url("https://images.unsplash.com/photo-1509909756405-be0199881695?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80");
			background-size: cover;
			opacity:0.5 ;
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			z-index: -1;
		}


.back1{
font-size: 35px;

color:green;
}
.edit-field{
color:green;
border:none;
background-color:;
font-size: 35px;


}


</Style>



</head>


<body bgcolor="lightblue">
<div class="background"></div>
<div>


<br/>
 <a href="/loginform">Logout</a>
</div>





<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 





<center>
<br/><br/><br/><br/><br/>
<form:form method="Post"  name="f" onsubmit="return check()">

    <table>
       
        
         <tr>
         
         <td>
         </td>
            
         
         
         
         <td>
         </td>
        
       <td class="back1"> Welcome <form:input path="ename" class="edit-field" readonly="true" size="1"/></td>
        </tr>

</table>
</form:form>



</center>



<center>

<br/><br/><br/>
<a href="/proempsave">Apply For ONiE Soft</a><br/><br/><br/>
<a href="/viewpersonal">View Your Application Details</a><br/>&nbsp;&nbsp;&nbsp;






</center>
</body>
