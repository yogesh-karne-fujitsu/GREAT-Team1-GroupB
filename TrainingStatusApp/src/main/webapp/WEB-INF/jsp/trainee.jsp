<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trainee</title>
    
<script LANGUAGE="JavaScript">
<!--
	function confirmSubmit() {
		var agree = confirm("Are you sure you want to save input details?");
		if (agree)
			return true;
		else
			return false;
	}
// -->
</script>
    <style>
        div {

  height: auto;

  width: auto;

}
        body {
	background-color: rgb(245, 245, 245);
	background-repeat: no-repeat;
	padding: 0%;
}
html {zoom: 100%;} 
        }
        /* -------------------------------- For topg--------------------- */
        .topg{
            margin-top: 1%;
            margin-bottom: 1%;
            margin-right: 5%;
        }

        .logo{
            font-size: 40px;
            float: left;
            color: red;
            margin-left: 4%;
            
        }
        
   
        .admin{
            background-color: rgb(200, 0, 0);
            color: white;
            border: none;
            height: 36px;
            width: 105px;
            border-radius: 2px;
            cursor: pointer;
            margin-right: 1%;
            margin-top: 1%;
        }
        .admin:hover, .submit:hover, .reset:hover, .faq:hover{
            opacity: 0.7;
        }

        .faq{
            background-color: rgb(2, 158, 255);
            color: white;
            border: none;
            height: 36px;
            width: 74px;
            border-radius: 12px;
            font-weight: bold;
            font-size: 15px;
            margin-right: 1%;
        }

        .empinfo{
            background-color: white;
            border-color: rgb(41, 118, 211);
            border-style: solid;
            border-width: 1px;
            color: rgb(41, 118, 211);
            height: 36px;
            width: 112px;
            border-radius: 2px;
            margin-right: 5%;
        }
        .empinfo:hover{
            background-color: rgb(41, 118, 211);
            color: white;
        }

        /* -------------------------------- For trainee heading --------------------- */
        .heading1 {
            font-size: hard;
            color: rgb(93, 129, 143);
            display: block;
            align-self: center;
            padding-bottom: 2%;
        }
        /* -------------------------------- For emp info --------------------- */
        .trninf {
            color: rgb(5, 5, 5);
            background-color: rgb(240, 255, 255);
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            font-weight: bold;
            margin-bottom: 2%;
           
        }
        /* ------------------------------------------------------- */
        .empid{
        border-radius: 10px;
        padding: 5px;
        margin-bottom: 2%;
        margin-left: 6%;
        }

       .empname{
        border-radius: 10px;
        padding: 5px;
        margin-bottom: 2%;
       }

       .empmailid{
        border-radius: 10px;
        padding: 5px;
        margin-bottom: 2%;

       }
      
       .empbatch{
        border-radius: 15px;
        padding: 5px;
        margin-bottom: 2%;
        margin-right: 16%;
        margin-left: 1%;
      
       }

       /*-------------------------------- For course heading ---------------------   */
        .heading2 {
            font-size: hard;
            color: rgb(93, 129, 143);
            display: block;
            align-self: center;
            width: 105%
            
        }
        /* ------------------------------------------------------- */
        .crsinf{
            color: rgb(5, 5, 5);
            background-color: rgb(240, 255, 255);
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            font-weight: bold;
            margin-top: 2%;
        }

        /* ------------ In .dates ------------------ */
        .trndate{
            border-radius: 10px;
            padding: 2px;
            margin-right: 10%;
        }
        .strtdate{
            border-radius: 10px;
            padding: 2px;
            margin-right: 10%;
        }
        .enddate{
            border-radius: 10px;
        }

        /* ------------ In .courseid ------------------ */
        .crsid{
            border-radius: 10px;
            padding: 2px;
           margin-left: 5%; 
        }
        .crsname{
            border-radius: 10px;
            padding: 2px;
            margin-left: 3%;
        }

        /* ------------ In .appro ------------------ */

        .tstscr{
            border-radius: 10px;
            padding: 2px;
           
        }

        .approver{
            border-radius: 10px;
            padding: 2px;
        }

        /* ------------ In .appro ------------------ */
        .butn{
            background-color: rgb(240, 255, 255);
            margin-bottom: 2%;
        }

        .submit{
            background-color: green;
            color: white;
            border: none;
            height: 36px;
            width: 105px;
            border-radius: 10px;
            cursor: pointer;
            margin-right: 13%;
        }

        .reset{
            background-color: orange;
            color: white;
            border: none;
            height: 36px;
            width: 105px;
            border-radius: 10px;
            cursor: pointer;
        }
        /* ------------ In .appro ------------------ */

        
    </style>


</head>

<body>

	

    <div class="topg" >

        <div align="right" class="btn3">
            <p align="left" class="logo">FUJITSU</p>
            <button class="faq">FAQ</button>
            <button class="empinfo">Emp Info</button>

        </div>
        <h2>${successMsg}</h2>

    </div>

<form method="post" action ="welcome" modelAttribute="user" enctype="multipart/form-data">

    <div align="center" class="heading1" style="margin-right:130px;">
        <h2 align="center" class="card-header"><b>Trainee Info:</b></h2>
    </div>

        <div align="center" class="trninf">
            <table style="width: 80%;">

            <tr>
            <td><label for="empid">Employee ID<span class="text-dark">*</span> :</label>
            <input type="text" name="empId"  class="empid" placeholder="Enter Your ID"></td>

            <td align="center"><label for="empname">Employee Name<span class="text-dark">*</span> :</label>
            <input type="text" name="empName"  class="empname" placeholder="Enter Your Name"></td></tr>

            <br>

            <tr><td><label for="empmailid">Employee Mail ID<span class="text-dark">*</span> :</label>
            <input type="mail" name="mailId"  class="empmailid" placeholder="Enter Your Mail Id"></td>

            <td align="center"><label for="empbatch">Employee Batch<span class="text-dark">*</span> :</label>
            <select class="empbatch" name="batch" id="empbatch" style="width: 120px; text-align: center;">
                <option>January</option>
                <option>February</option>
                <option>March</option>
                <option>April</option>
                <option>May</option>
                <option>June</option>
                <option>July</option>
                <option>August</option>
                <option>September</option>
                <option>October</option>
                <option>November</option>
                <option>December</option>
            </select></td></tr>
        </table>
        </div>
    

    <div align="center" class="heading2">
        <h2 align="center" class="card-header"><b>Course Details:</b></h2>
    </div>

        <div align="center" class="crsinf">
<br>
            <div class="dates">
             <table style="width: 80%;">
             <tr>
                <td align="left"><label for="trndate">Training Date :</label>
                <input type="date" name="trainDate"  class="trndate" placeholder="Select Date"">

                <td align="left"><label for="strtdate">Start Date :</label>
                <input type="date" name="srDate" class="strtdate" placeholder="Select Date"style="margin-right:-95px;">

                <td align="center"><label for="enddate">End Date :</label>
                <input type="date" name="enDate" class="enddate" placeholder="Select Date">
                </tr>
                  </table>
            </div>
<br>
            <div class="courseid">
                <table style="width: 80%;">
                <tr>
                <td align="left"><label for="crsid">Course ID :</label>
                <input type="text" name="courseId" class="crsid" placeholder="Course id" id="crsid">
                </td>
                 
                <td align="left"><label for="crsname">Course Name :</label>
                <input type="text" name="courseName" class="crsname" placeholder="Course Name"style="margin-right:110px;"></td></tr>
                </table>
            </div>
 <br>           
            <div class="ss">
              <table style="width: 80%;">
              <tr>
                <td align="left"><label for="emailss" >Email Screenshot :</label>
                <input type="file" id="fileName" name="emSrn"  class="emailss" name="emailss" accept=".jpg,.jpeg,.png" onchange="validateFileType()"> </td>
                
 </tr>
                  </table>
 
            </div>
  <br>
    <div class="ss">
              <table style="width: 80%;">
              <tr>
  <td align="left"><label for="sabass">Saba Screenshot :</label>
                <input type="file" id="fileName" class="sabass" name="sabaSrn" accept=".jpg,.jpeg,.png" onchange="validateFileType()"> </td>
              </tr>
                </table>
                 </div>       
 <br>
    <div class="ss">
              <table style="width: 80%;">
              <tr>
             <td align="left"><label for="testscrss">Test Score Screenshot :</label>

                <input type="file" id="fileName" class="testscrss" name="testScrn" accept=".jpg,.jpeg,.png" onchange="validateFileType()"></td>
                <td align="left" ><label for="tstscr" >Test Score :</label >
                    <input type="text" name="testScore" class="tstscr" placeholder="Enter Your Score" style="margin-right:455px;"></td>
                </tr>
                </table>
      </div>           
<br>

<div class="appro">  
                <table style="width: 80%;">     
                    <tr>  
                    

                    <td align="left"><label for="approver">Approver Name:</label>
                    <select name="apName" id="approver" class="approver">
                    <option>Anandhan</option>
                    <option>Vishnu</option>
                    </td>
                </tr>
                </table>
            </div>
        </div>
    

<div class="butn" align="center">


<br>
<br>
<button type="submit" value='Submit' name='Submit'
 class="btn btn-success" onClick='return confirmSubmit()'>Submit</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="reset"  class="btn btn-warning">Clear</button>

<br>
<br>
<br>

</div>

</form>
</body>

</html>