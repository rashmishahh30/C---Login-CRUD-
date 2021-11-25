<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="CrudApplication1.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD Application</title>



    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />


    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
                <li class="nav-item">
                    <a class="nav-link" href="users.aspx">Login</a>
                </li>
            </ul>
        </nav>



        <div class="container">
            <div id="alert1" runat="server"></div>


            <div class="panel panel-default devise-bs">
                <div class="panel-heading">
                    <h4>Sign up</h4>
                </div>
                <div class="panel-body">

                    <form role="form">

                       

                        <div class="form-group">

                            <label for="SignupNameId" runat="server">Name</label>
                            <input id="SignupNameId" type="name" class="form-control" aria-describedby="nameHelp" placeholder="Enter name" />
                        </div>

                     

                        <div class='form-group'>
                            <label for="email">Email:</label>
                            <input class="form-control" type="email" id="SignupEmailId" name="email" placeholder="Enter Email"/>
                         
                        </div>
                        <div class="form-group">
                            <label for="SignupPwdId" runat="server">Password</label>
                            <input id="SignupPwdId" type="password" class="form-control" placeholder="Password" />
                        </div>

                        <div class="form-group">
                            <label for="SignupConfirmPwdId" runat="server">Confirm Password</label>
                            <input id="SignupConfirmPwdId" type="password" class="form-control" placeholder=" Confirm Password" />
                        </div>



                        <button type="button" class="btn btn-primary" id="SubmitBtn" data-disable-with="Sign Up">Sign Up</button>


                    </form>
                </div>
            </div>


            <div>

                <a class="btn btn-light" href="users.aspx">Sign in</a>
            </div>
        </div>



    </form>
</body>
</html>

