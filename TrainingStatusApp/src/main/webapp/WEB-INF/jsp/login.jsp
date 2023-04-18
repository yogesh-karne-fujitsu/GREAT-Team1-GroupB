<html>
<head>
    <title>Trainee Login Page</title>
    <link href="webjars/bootstrap/4.6.0./css/bootstarp.min.css" rel="stylesheet">
    
    <style>
    table,
    th
    { border-collapse: collapse;}
   form{
    margin-left:80px;
  	margin-right:80px;
    margin-top: 50px;
    margin-bottom: 50px;
                        }
     center1{
          
        width:100px;
        margin: 50px auto;
        position: absolute;
        top:80px;
        left: 400px;
        color:rgb(255, 255, 255);
       
        }
        center2{
          
        width:100px;
        margin: 50px auto;
        position: absolute;
        top:80px;
        left: 470px;
        color:rgb(248, 6, 6);
        }
       
          center3
              {  
               width:450px;
               margin: 50px auto;
               position: absolute;
               top:110px;
               left: 400px;
               background-color:rgb(255, 251, 251) ;
               box-shadow: 2px 2px 2px 2px grey;
               border-radius: 10px;
                background-position: right top;
                 background-size: 25% 30%;
                 background-repeat: no-repeat;
                
                                                    }
       body{
              
               background-color: rgb(245, 245, 245); 
               background-size: 145% 145%, 20% 30%;
               background-position:  left top,left top;
               background-repeat: no-repeat;
                padding: 10%;                                  }
       
      #button1{
          
           
           height:45px; 
           width=160px;
           border: 5px; 
            background-color:rgb(245, 104, 104); 
           font-size:medium;
           border-radius: 5px;
           color:#fff;
                           }
         #button1:hover{
                     background-color:rgb(25, 71, 189);
                    }   
          #button3{
           height:45px; 
           width=160px;
           border: 5px; 
         
             background-color:rgb(240,43,43);
           font-size:medium;
           border-radius: 5px;
           color:#fff;
                           }
         
         #button3:hover{
                     background-color:rgb(25, 71, 189);
                    }              
       #button2{
    
           background:rgb(25, 71, 189);
           height:30px; 
           width=150px;
           border: 5px;
           border-radius:3px;
           font-size: medium;
           padding:1px 20px;
           color:#fff;
                              }
       #button2:hover{            
                    background-color:rgb(15, 39, 99);
                    }
                    
     input[type="text"],
    input[type="password"]{
    width :60%;
    padding:12 px 20 px;
    height:25px;
    display:inline-block;
    border-radius:5px;
    border:1px solid #ccc;
    border-sizing: border-box;
    }               
 

        </style>
    
</head>
    <body>
   	
    	 <div class="card" style=width:500px;margin:auto;margin-top:50px;>
 		 <div class="login-form">
         <div class="container-fluid" align="center">
         <tr>
         <form  method="GET" action="traineelogin">
	         <center1>
	         
		        <button id="button1" style="height:30px;  width=250px">Trainee</button>
	         </center1>
         </form>
         <form method="GET" action="adminLogin" >
	         <center2>
		        <button id="button3" style="height:30px;  width=250px" action="loginPage">Admin</button>
	         </center2>
         </form>
         </tr>
         <th>
         </form>
         </th>
		<center3>
		
		
		  <form  method="post">
		
        <br/><b>Admin ID :</b>&nbsp;&nbsp;&nbsp;<input type="text" name="userId" class="form-control mt-3" required/>
        <br>
        <div>
        <br/><b>Password :</b>&nbsp;&nbsp;&nbsp;<input type="password" name="password" class="form-control mt-3" required//> <br>
        </div>
        <br/>
 <button id="button2" >Login</button>
    </form>
       <h2>${errorMsg}</h2> 
        </div>
        </div>
		</div>
	

</body>
</html>