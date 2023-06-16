<!DOCTYPE html>
<html>
<head>
  <title>Employee Personal Details</title>
  <style>
    div {
      float:right;
    }

    .hidden {
      display: none;
    }
  </style>
  
  
    
    
    
	<script>
		function toggleVisaFields() {
			var selectElement = document.getElementById('have-visa');
			var visaFields = document.getElementsByClassName('visa-field');

			if (selectElement.value === 'yes') {
				for (var i = 0; i < visaFields.length; i++) {
					visaFields[i].style.display = 'table-row';
					visaFields[i].getElementsByTagName('input')[0].setAttribute('required', 'true');
				}
			} else {
				for (var i = 0; i < visaFields.length; i++) {
					visaFields[i].style.display = 'none';
					visaFields[i].getElementsByTagName('input')[0].removeAttribute('required');
				}
			}
		}
	</script>
	
	
	
	
	 
	<script>
		function toggleVisaFields1() {
			var selectElement = document.getElementById('have-visa1');
			var visaFields = document.getElementsByClassName('visa-field1');

			if (selectElement.value === 'yes') {
				for (var i = 0; i < visaFields.length; i++) {
					visaFields[i].style.display = 'table-row';
					visaFields[i].getElementsByTagName('input')[0].setAttribute('required', 'true');
					
					
				}
				
			} else {
				for (var i = 0; i < visaFields.length; i++) {
					visaFields[i].style.display = 'none';
					visaFields[i].getElementsByTagName('input')[0].removeAttribute('required');
				}
			}
		}
	</script>
	
  
</head>
<body bgcolor="lightgreen">
  <div>


<a href="/loginform">Logout</a>

</div>
  <br/> <br/>
  <center>
  <h1>Applicant Personal Details</h1>
    <form action="/persave" method="post" name="f" onsubmit="return check()">
      <table>
        
          <td><label> Name</label></td>
          <td><input type="text" name="name" /></td>
        </tr>
        <tr>
          <td><label>Mobile Number</label></td>
          <td><input type="text" name="mob" /></td>
        </tr>
        <tr>
          <td><label>Email</label></td>
          <td><input type="text" name="email" /></td>
        </tr>
        <tr>
        
        
        
        
        
        
       <tr>
       <td>Gender</td>
       <td>
       <input type="radio" name="gender" value="male" onChange={changeHandler}/>Male
       <input type="radio" name="gender" value="female"  onChange={changeHandler}/>Female<br/>
    
       </td>
       
       </tr>
       
        
       <tr>
       <td>Date of Birth</td>
       <td>
       <input type="date" name="date"/>
      
       </td>
       
       </tr>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
          <td><label>Aadhar Number</label></td>
          <td><input type="text" name="adhar" /></td>
        </tr>
        <tr>
          <td><label>PAN Card Number</label></td>
          <td><input type="text" name="pan" /></td>
        </tr>
        





       	<tr>
					<td><label>Do you have a Passport?</label></td>
					<td>
						<select id="have-visa1" name="val1" onchange="toggleVisaFields1()">
							<option  value="no">No</option>
							<option value="yes">Yes</option>
						</select>
					</td>
				</tr>
				
			
				
				
				<tr class="visa-field1 hidden">
					<td><label >Passport Number</label></td>
					<td><input type="text" id="visa-number" name="passportnumber"></td>
				</tr>
				
				
			
				
				
				
				
				<tr class="visa-field1 hidden">
					<td><label>Passport Expiry Date</label></td>
					<td><input type="date" id="visa-expiration" name="exp1"></td>
				</tr>
				
				
						
				<tr class="visa-field1 hidden">
					<td><label for>Passport Status</label></td>
					<td>
						<select id="visa-type1" name="status1">
							<option value="expired">Expired</option>
							<option value="active">Active</option>
       
       </select>
       </td>
       </tr>
				










       
       	<tr>
					<td><label for="have-visa">Do you have a VISA?</label></td>
					<td>
						<select id="have-visa" name="val2"onchange="toggleVisaFields()">
							<option value="no">No</option>
							<option value="yes">Yes</option>
						</select>
					</td>
				</tr>
				<tr class="visa-field hidden">
					<td><label for="visa-number">VISA Number</label></td>
					<td><input type="text" id="visa-number" name="visanumber"></td>
				</tr>
				<tr class="visa-field hidden">
					<td><label for="visa-expiration">VISA Expiry Date</label></td>
					<td><input type="date" id="visa-expiration" name="exp2"></td>
				</tr>
				<tr class="visa-field hidden">
					<td><label for="visa-type">VISA Type</label></td>
					<td>
						<select id="visa-type" name="status2">
						
						<option value="select">Select</option>
							<option value="tourist">Tourist VISA</option>
							<option value="business">Business VISA</option>
    <option value="student">Student VISA</option>
    <option value="work">Work VISA</option>
    <option value="transit">Transit VISA</option>
    <option value="spouse">Spouse VISA</option>
       
       </select>
       </td>
       </tr>



       




       
       
       
       <tr>
       <td>
       <label>Address</label><br/>
       </td>
       <td>
        <input type="text" name="adress"  onChange={changeHandler}/><br/>
       </td>
       </tr>
       
       
         <tr>
       <td>
       City
       </td>
       <td>
        <input type="text" name="city"  onChange={changeHandler}/><br/>
       </td>
       </tr>
      
        
        
         
 <tr>
       <td>
       State
       </td>
       <td>
       <input type="text" name="state"  onChange={changeHandler}/>
       </td>
       </tr>
      
       
 <tr>
       <td>
       <label>PIN Code</label>
       </td>
       <td>
        <input type="text" name="pinnumber"  onChange={changeHandler}/>
   
       </td>
       </tr>
      
       <tr>
       </tr>
       
 <tr>
       <td>
       <input type="submit" value="Submit"/>&nbsp;&nbsp;&nbsp;
       </td>
       <td>
        <input type="reset" value="Reset"/>&nbsp;&nbsp;&nbsp;
      
       </td>
       </tr>
      
       
       
       </table>
      
       
      



       

       </form>
      
      <br/>
      <a href="javascript:history.go(-1)">Previous</a>
        
      </center>
         
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
        	var v30=f.pinnumber.value;
        	var v31=/^\d{6}$/;
        	
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
			        			alert("Special Characters Not Allowed in City") 
			        	    
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
    
      
     
      </body>
      </html>