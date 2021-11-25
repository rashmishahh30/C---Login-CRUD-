<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="CrudApplication1.users" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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

    <title>CRUD Application</title>
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
                <li class="nav-item">
                    <a class="nav-link" href="users.aspx">Login</a>
                </li>


            </ul>
        </nav>

        <div class="container">

            <div id="alert" runat="server"></div>

            <div class="panel panel-default devise-bs">
                <div class="panel-heading">
                    <h4>Sign in</h4>
                </div>
                <div class="panel-body">

                    <form role="form">

                        <div class="form-group">
                            <label for="SigninEmailId" runat="server">Email</label>
                            <input type="email" runat="server" class="form-control" id="SigninEmailId" aria-describedby="emailHelp" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label for="SigninPassword" runat="server">Password</label>
                            <input type="password" runat="server" class="form-control" id="SigninPassword" placeholder="Password">
                        </div>

                        

                        <div class="checkbox">
                            <label>
                                <input type="checkbox" value="">Remember me</label>
                        </div>
                        
                        <button type="button" class="btn btn-primary" id="signinbBtn" data-disable-with="Sign In" itemref="home.aspx" >Sign In</button>

                    </form>
                </div>
            </div>



            <div>
                <a class="btn btn-light" href="signup.aspx">Sign up</a>

            </div>
        </div>





    </form>
</body>
</html>

