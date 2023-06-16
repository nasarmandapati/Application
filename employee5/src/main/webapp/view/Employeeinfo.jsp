<!DOCTYPE html>
  <html>
  <head>
  <title>Applicant Professional  Details</title>
  <style>
  div {
      float:right;
    }
  .invalid {
            border: 1px solid red;
        }
        .hidden {
            display: none;
        }
  </style>
  

  
  </head>
  <body bgcolor="lightgreen">
  <div>
       
        <a href="/loginform">Log Out</a>
       </div>
       
  <center>
<h1>Applicant Professional  Details</h1>
      <form  action="/prosave" method="post" name="f" onSubmit="return check()">
    <table>
      <tr>
        <td>ONiE Soft Job ID </td>
        <td><input type="text" name="id" value="Sr JAVA Dev Jun23" style="color:blue" readonly="true"></td>
      </tr>
      <tr>
        <td>Email:</td>
        <td><input type="text" name="email"></td>
      </tr>
     
      
     
     
    <tr>
      <td>Duration - From:</td>
      <td>
        <input type="date" id="sdate" name="sdate">
      </td>
    </tr>
    <tr>
    
      <td>       To:
      
      
      </td>
      
      <td>
        <input type="date" id="edate" name="edate">
      </td>
    </tr>
    <tr>
      <td>Relevant IT/SW Exp. in Years:</td>
      <td>
        <input type="text" id="rexpy" name="rexpy">
      </td>
    </tr>
  
  
  <script>
    // Get the input fields
    const sdateInput = document.getElementById('sdate');
    const edateInput = document.getElementById('edate');
    const rexpyInput = document.getElementById('rexpy');
  
    // Add event listeners to the date inputs
    sdateInput.addEventListener('input', calculateExperience);
    edateInput.addEventListener('input', calculateExperience);
  
    // Function to calculate the experience in years
    function calculateExperience() {
      const startDate = new Date(sdateInput.value);
      const endDate = new Date(edateInput.value);
  
      if (!isNaN(startDate) && !isNaN(endDate)) {
        const millisecondsPerYear = 1000 * 60 * 60 * 24 * 365.25; // Approximate milliseconds in a year
        const experienceInYears = (endDate - startDate) / millisecondsPerYear;
  
        rexpyInput.value = experienceInYears.toFixed(2); // Set the value with 2 decimal places
      }
    }
  </script>
 
     
     
     
     
     
     
     
       
       <tr>
        <td>Notice Period in Days:</td>
        <td><input type="text" name="notice"></td>
      </tr>
      
      
      <tr>
        <td>LWD (If Resigned):</td>
        <td><input type="date" name="lwd"></td>
      </tr>
      
      
      <tr>
        <td>Immediate Joiner:</td>
        <td>
        <select name="immi">
        
        <option value="select">Select</option>
        
        <option value="yes">Yes</option>
        
        <option value="no">No</option>
        
        
        
        
        </select>
        
        
        
        </td>
      </tr>
       
      
      </tr>
      <tr>
        <td>Domain:</td>
        <td><input type="text" name="domain"></td>
      </tr>
      <tr>
        <td>Expertise In:</td>
        <td><input type="text" name="expertise"></td>
      </tr>
      <tr>
        <td>Primary Skills:</td>
        <td><input type="text" name="pskills"></td>
      </tr>
      <tr>
      
      <tr>
        <td>Current CTC:</td>
        <td><input type="text" name="cuctc"></td>
      </tr>
      
      <tr>
        <td>Expected CTC:</td>
        <td><input type="text" name="expctc"></td>
      </tr>
      
      <tr>
        <td>LinkedIn Profice:</td>
        <td><input type="text" name="link"></td>
      </tr>
      
      
     <tr>
        <td>Current Location:</td>
        <td><input type="text" name="culocation"></td>
      </tr>
      
      
      
       
     <tr>
        <td>Preferd Location:</td>
        <td><input type="text" name="prelocaion"></td>
      </tr>
      
      
      <tr>
      
        <td>Prog. Languages:</td>
        <td><input type="text" name="languages"></td>
      </tr>
      <tr>
        <td>Frameworks:</td>
        <td><input type="text" name="frameworks"></td>
      </tr>
      <tr>
        <td>Tools:</td>
        <td><input type="text" name="tools"></td>
      </tr>
      <tr>
        <td>Databases:</td>
        <td><input type="text" name="databases1"></td>
      </tr>
      <tr>
        <td>Servers:</td>
        <td><input type="text" name="servers"></td>
      </tr>
      <tr>
        <td>Cloud Services:</td>
        <td><input type="text" name="cloud"></td>
      </tr>
      
      
      
      
      
      
      
            <tr>
                <td>On-Site Travelled:</td>
                <td>
                    <select id="onSiteTravelled" class="input-field" name="val5" onchange="toggleFields()">
                        <option value="">Select</option>
                        <option value="yes">Yes</option>
                        <option value="no">No</option>
                    </select>
                </td>
            </tr>
            <tr id="countriesRow" class="hidden">
                <td>Countries:</td>
                <td>
                    <input type="text" id="countries" class="input-field" name="coun" >
                </td>
            </tr>
            <tr id="citiesRow" class="hidden">
                <td>Cities:</td>
                <td>
                    <input type="text" id="cities" class="input-field" name="citi" >
                </td>
            </tr>
            <tr id="onSiteCompanyNamesRow" class="hidden">
                <td>On-Site Company Names:</td>
                <td>
                    <input type="text" id="onSiteCompanyNames" class="input-field" name="onciti" >
                </td>
            </tr>
            <tr id="onSiteClientsSupportedRow" class="hidden">
                <td>On-Site Clients Supported:</td>
                <td>
                    <input type="text" id="onSiteClientsSupported" class="input-field" name="onciticli" >
                </td>
            </tr>
           
        
    
    
    <script>
        function toggleFields() {
            var onSiteTravelled = document.getElementById("onSiteTravelled");
            var countriesRow = document.getElementById("countriesRow");
            var citiesRow = document.getElementById("citiesRow");
            var onSiteCompanyNamesRow = document.getElementById("onSiteCompanyNamesRow");
            var onSiteClientsSupportedRow = document.getElementById("onSiteClientsSupportedRow");
            
            if (onSiteTravelled.value === "yes") {
                countriesRow.classList.remove("hidden");
                citiesRow.classList.remove("hidden");
                onSiteCompanyNamesRow.classList.remove("hidden");
                onSiteClientsSupportedRow.classList.remove("hidden");
            } else {
                countriesRow.classList.add("hidden");
                citiesRow.classList.add("hidden");
                onSiteCompanyNamesRow.classList.add("hidden");
                onSiteClientsSupportedRow.classList.add("hidden");
            }
        }
        
        function validateForm() {
            var isValid = true;
            
            var onSiteTravelled = document.getElementById("onSiteTravelled");
            var countries = document.getElementById("countries");
            var cities = document.getElementById("cities");
            var onSiteCompanyNames = document.getElementById("onSiteCompanyNames");
            var onSiteClientsSupported = document.getElementById("onSiteClientsSupported");
            
            // Check On-Site Travelled
            if (onSiteTravelled.value === "") {
                onSiteTravelled.classList.add("invalid");
                isValid = false;
            } else {
                onSiteTravelled.classList.remove("invalid");
            }
            
            // Check Countries
            if (countries.value === "" && !countries.classList.contains("hidden")) {
                countries.classList.add("invalid");
                isValid = false;
            } else {
                countries.classList.remove("invalid");
            }
            
            // Check Cities
            if (cities.value === "" && !cities.classList.contains("hidden")) {
                cities.classList.add("invalid");
                isValid = false;
            } else {
                cities.classList.remove("invalid");
            }
            
            // Check On-Site Company Names
            if (onSiteCompanyNames.value === "" && !onSiteCompanyNames.classList.contains("hidden")) {
                onSiteCompanyNames.classList.add("invalid");
                isValid = false;
            } else {
                onSiteCompanyNames.classList.remove("invalid");
            }
            
            // Check On-Site Clients Supported
            if (onSiteClientsSupported.value === "" && !onSiteClientsSupported.classList.contains("hidden")) {
                onSiteClientsSupported.classList.add("invalid");
                isValid = false;
            } else {
                onSiteClientsSupported.classList.remove("invalid");
            }
            
            return isValid;
        }
    </script>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      </table>
       
    <br>
  <table id="previousCompaniesTable">
    <tr>
     
      <th> Company Name</th>
       <th>Employee ID</th>
      
      <th>Location</th>
      <th>No.of Years Worked </th>
      <th>Duration From</th>
      <th>To</th>
      <th>Role</th>
      <th>Designation</th>
      <th>CTC (INR LPA)</th>
    </tr>
    <tr>
     <td><input type="text" name="prevCompanyName" class="input-field"></td>
      <td><input type="text" name="id1" class="input-field"></td>
     
      <td><input type="text" name="location" class="input-field"></td>
      <td><input type="number" name="workedYears" class="input-field" min="0"></td>
      <td><input type="date" name="prevFromDate" class="input-field"></td>
      <td><input type="date" name="prevToDate" class="input-field"></td>
      <td><input type="text" name="role" class="input-field"></td>
      <td><input type="text" name="designation" class="input-field"></td>
      <td><input type="text" name="ctc" class="input-field"></td>
    </tr>
  </table>

  <br>
  <input type="button" value="Add" onclick="addCompanyField()">
  <br><br><br>
   
       <input type="submit" value="Save&Next" style="color:green"/>&nbsp;&nbsp;&nbsp;
       
        <input type="reset" value="Reset"/>&nbsp;&nbsp;&nbsp;
      
       
</form>

<script>
  var i = 1;

  function addCompanyField() {
    i++;
    var previousCompaniesTable = document.getElementById("previousCompaniesTable");
    var rowCount = previousCompaniesTable.rows.length;

    var newRow = previousCompaniesTable.insertRow(rowCount);
    newRow.innerHTML = `
    	<td><input type="text" name="prevCompanyName${rowCount}" class="input-field" required></td>
        
      <td><input type="text" name="id1${rowCount}" class="input-field" required></td>
      
      <td><input type="text" name="location${rowCount}" class="input-field" required></td>
      <td><input type="number" name="workedYears${rowCount}" class="input-field" min="0" required></td>
      <td><input type="date" name="prevFromDate${rowCount}" class="input-field" required></td>
      <td><input type="date" name="prevToDate${rowCount}" class="input-field" required></td>
      <td><input type="text" name="role${rowCount}" class="input-field" required></td>
      <td><input type="text" name="designation${rowCount}" class="input-field" required></td>
      <td><input type="text" name="ctc${rowCount}" class="input-field" required></td>
    `;
  }
</script>
  




<script>
  function validateForm() {
    var inputFields = document.getElementsByClassName("input-field");
    var isValid = true;

    for (var i = 0; i < inputFields.length; i++) {
      if (inputFields[i].value === "") {
        inputFields[i].classList.add("invalid");
        isValid = false;
      } else {
        inputFields[i].classList.remove("invalid");
      }
    }

    return isValid;
  }
</script>
  
    
      
       
       
        
       <script>
       function check(){
    	   var v1=f.id.value;
    	   var v2=f.ename.value;
    	   var v3=/^[a-zA-Z\s]*$/;
    	   
    	   var v4=f.expy.value;
    	   var v5=/^[0-9]*$/;
    	   
    	   var v6=f.rexpy.value;
    	   var v7=/^[0-9]*$/;
    	   
    	   var v8=f.sdate.value;
    	   
    	   var  v9=f.edate.value;
    	   var v10=f.domain.value;
    	   
    	   var v11=f.expertise.value;
    	   var v12= f.pskills.value;
    	   var v13= f.languages.value;
    	  
    	   
    	   
    	  if(v1==""){
    		  
    		  alert("Please Fill The Employee ID");
    		  return false;
    	  }
    	   
    	  if(v2==""){
    		  
    		  alert("Please Fill The Employee Name");
    		  return false;
    	  }
    	  if(!f.ename.value.match(v3)){
    			alert("Employee Name Alphabets Only") 
    	    
    			return false;
    	    }
if(v4==""){
    		  
    		  alert("Please Fill The Total Experience");
    		  return false;
    	  }
if(!f.expy.value.match(v5)){
	alert(" Experience Numeric Only") 

	return false;
}

if(v6==""){
	  
	  alert("Please Fill The Relevant IT/SW Experience");
	  return false;
}
if(!f.rexpy.value.match(v7)){
alert("Relevant IT/SW Experience Numeric Only") 

return false;
}
if(v8==""){
	  
	  alert("Please Fill The Duration Start Date");
	  return false;
}
if(v9==""){
	  
	  alert("Please Fill The Duration End Date");
	  return false;
}
if(v10==""){
	  
	  alert("Please Fill The Domain");
	  return false;
}
if(v11==""){
	  
	  alert("Please Fill The Expertisation");
	  return false;
}
if(v12==""){
	  
	  alert("Please Fill The Primary Skills");
	  return false;
}
if(v13==""){
	  
	  alert("Please Fill The Languages");
	  return false;
}
    	  
       }
       
       </script>
       
       
    
  
      <br/>
      <a href="javascript:history.go(-1)">Previous</a>
       </center>
 </body>
 </html>