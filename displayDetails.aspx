<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="displayDetails.aspx.cs" Inherits="CrudApplication1.displayDetails" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>CRUD Application</title>
    
 

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>


    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="SignupSignin.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  
</head>
<body>
  
    <form id="form1" runat="server">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
         <a class="navbar-brand" href="home.aspx">App Name</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
            </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                     <ul class="navbar-nav">
                                             
                        <li class="nav-item">
                             <a class="nav-link" href="home.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="users.aspx">Users</a>
                        </li>
                                            
                         </ul>
      
                  </div>        
                     <ul class="nav navbar-nav navbar-right">

                           <li>
                                    <a href="#" ><span runat="server" id="showImg"></span><div style="color:white" runat="server" id="showName"></div></a>
                            </li>
                        <li class="nav-item">
                            <a class="nav-link" href="default.aspx">Logout</a>
                        </li>
                    </ul>
        </nav>
        <div class="container">
            <div class="page-header">
                <div class="text-right float-lg-right">
                <a class="btn btn-default"  href="home.aspx">
                    <span class="glyphicon glyphicon-list-alt"> </span>
                    Back
                </a>
                </div>
                <div class="text-right col-11">
                <a class="btn btn-primary"  href="editDetails.aspx">
                    <span class="glyphicon glyphicon-pencil"></span>
                    Edit
                </a>
                </div>
                 <h1>Show user</h1>
             </div>
         </div>
        <table>
            <tbody>
                <td style="padding-left : 150px">
                    <img src="img/usericon.png" width="100px" />
                </td>
                <td style="padding-left : 50px">
                     <b>Name :  </b>
                     <b id="displayName" runat="server"> </b>
                    <br />
                      <b>Email :  </b>
                     <b id="displayEmail" runat="server" >Email :</b>
                   <br />
                       
                  <b>Role : User</b>
                      
                        
                
                    </td>
                
            </tbody>
        </table>
        
</form>
       
</body>
</html>


