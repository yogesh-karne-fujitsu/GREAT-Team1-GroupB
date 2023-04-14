 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Welcome Page</title>
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
	.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgba(52,58,64,255);
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
  background-image: url(https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Fujitsu-Logo.svg/2560px-Fujitsu-Logo.svg.png);
  background-repeat: no-repeat;
  background-size: 40% 10%;
  background-position-x: 20px;
  background-position-y: 10px;
}
.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
  color: rgb(255, 0, 0);
}
#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
	  body{
	background-color: rgb(234, 232, 232);
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
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<br>
		<br>
		<br>
<br>
		<form id="export"  method="POST" action="export" align="left">
			<button type="export" class="btn btn btn-dark btn-m btn-block">Export</button>
		 </form><br>
	   <form  method="GET" action="courseinfo" align="left">
			<button type="courseinfo"  class="btn btn btn-dark btn-m btn-block">Add Courses</button>
		 </form>

	</div>
	<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>
	
		
		 

    <div class="card card-details">
      <h2 class="card-header">Trainee Records</h2>
		<form  class="form" method="GET" action="logout" align="right">
			<button type="logout"  class="btn btn-info btn-m ">logout</button>
		 </form>
      <form class="form" align="right" name="form1" method="post" action="response">
        <table class="table table-hover">
          <tr>
            <td>Approver Name :</td>
            <td>
              <select name="approver">
                <option value="" selected="selected">Select</option>
                <option>Anandhan</option>
                <option>Vishnu</option>
              </select>
            </td>
            <td>Batch :</td>
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
            <td>  <label><b>Employee Id : </b></label></td>
  <td><input list="empID" name="empID"></td>
 <datalist id="empID">
 
		
			<%
				try{
					//Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login_demo","root","welcome@123");
					Statement stat= con.createStatement();
					String query="select distinct emp_id from user ";
				
					ResultSet rel=stat.executeQuery(query);
			
					while(rel.next())
					{
						String empId= ""+rel.getString("emp_id");
						System.out.println(empId);
						
			%>
					<option value="<%=empId%>"> <%=empId%></option>
					
			<%
					}
					con.close();					
				}
				catch(Exception e)
				{
					
				}

			%>
	</datalist>
			
			<% String val=request.getParameter("empId"); 
				System.out.println(val);
				
				%>

               
            <td>Submit Date :</td>
            <td>
              <input type="date" name="subDate" required>
            </td>
          </tr>
          <tr>
            <td>
            <td>
              <button type="submit" class="btn btn-success btn-m">Search</button>
            </td>
            </td>
            <td>
            <td>
              <button type="reset" class="btn btn-danger btn-m">Clear</button>
            </td>
            </td>
          </tr>
        </table>
      </form>
    </div>
   
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "300px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
  </body>
</html>