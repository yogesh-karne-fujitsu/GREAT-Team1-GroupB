
<!DOCTYPE html>
<html>
  <head>
    <title>Welcome</title>
    <meta charset="ISO-8859-1">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <style>
body{
background-color: rgb(245, 245,245);
padding:2%;
	}
.card-header {
 background-color:#D3d3d3;
 box-shadow: 2px 2px 2px 2px grey;
    }
.form {
 background-color: rgb(249, 245, 245);
 box-shadow: 2px 2px 2px 2px grey;
    }
label {
margin: .75rem;
    }
.logout-button {
 background: #71D5E4;
 border: 1px solid #000;
 box-shadow: 2px 2px 2px 2px grey;
 padding:15%;
    }
td {
font-weight: 700;
    }
.card-details {
 width: 1000px;
 margin: auto;
 margin-top: 10px;
    }

 #course{
 margin-left: 1140px;
    }
    
 </style>
 <body >
 <div class="card card-details">
 <h2 class="card-header" align="center"><b>Trainee Records</b></h2>
 <form  class="form" method="GET" action="logoutToAdmin" align="right">
<button type="logout"  class="btn btn-danger btn-m">Logout</button>
</form>

 <form class="form" align="right" name="form1" method="post" action="response">
  <table class="table table-hover">
  <tr>
  <td>Approver Name<span class="text-dark">*</span>:</td>
  <td>
 <select name="approver">
 <option value="" selected="selected">Select</option>
 <option>Anandhan</option>
 <option>Vishnu</option>
 </select>
 </td>
 <td>Batch Name :</td>
  <td>
 <select name="batName">
 <option value="" selected="selected">Select Batch</option>
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
 </select>
  </td>
  </tr>
  <tr>
  <td>Employee ID :</td>
  <td><input list="empId" name="empID" placeholder="Employee Id"></td>
   <td>Submit Date<span class="text-dark">*</span> :</td>
   <td>
   <input type="date" name="subDate" required>
   </td>
   </tr>
   <tr>
   <td>
   <td>
   <button type="submit" class="btn btn-success btn-m">Search</button>
   </td>
   <td>
   <button type="reset"  class="btn btn-warning" >Clear</button>
   </td>
   </tr>
   </table>
   </form>
   </div>

  </body>
</html>