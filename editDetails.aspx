<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editDetails.aspx.cs" Inherits="CrudApplication1.editDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD Application</title>



    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />


    <meta name="viewport" content="width=device-width, initial-scale=1" />
   <%-- <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>--%>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>--%>
    <script src="SignupSignin.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script>

           
       ConfirmDialog('Are you sure');

        function ConfirmDialog(message) {
            $('<div></div>').appendTo('body')
                .html('<div><h6>' + message + '?</h6></div>')
                .dialog({
                    modal: true,
                    title: 'Delete message',
                    zIndex: 10000,
                    autoOpen: true,
                    width: 'auto',
                    resizable: false,
                    buttons: {
                        Yes: function () {
                            var DeleteAccount = function () {
                                $.ajax({
                                    url: "home.aspx/DeleteAccount",
                                    type: 'POST',
                                    contentType: 'application/json; charset=utf-8',
                                    dataType: 'json',

                                    success: function () {
                                        location.href = "home.aspx";
                                    }

                                });
                            }
                            DeleteAccount();

                            $(this).dialog("close");
                        },
                        No: function () {
                            $('body').append('<h1>Confirm Dialog Result: <i>No</i></h1>');

                            $(this).dialog("close");
                        }
                    },
                    close: function (event, ui) {
                        $(this).remove();
                    }
                });
        };

    </script>
    

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
                    <a href="#"><span runat="server" id="showImg"></span>
                        <div style="color: white" runat="server" id="showName"></div>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="default.aspx">Logout</a>
                </li>
            </ul>
        </nav>

        <div class="container">

            <div id="alert1" runat="server"></div>
            <div class="panel panel-default devise-bs">
                <div class="panel-heading">
                    <h4>Edit My Account</h4>
                </div>
                <div class="panel-body">

                    <form role="form">
                        <div class="form-group">
                            <label for="editName" runat="server">Name</label>
                            <input runat="server" class="form-control" id="editName" placeholder="Enter name">
                        </div>

                        <div class="form-group">
                            <label for="editEmail" runat="server">Email</label>
                            <input type="email" runat="server" class="form-control" aria-describedby="emailHelp" id="editEmail" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label for="editPswd" runat="server">Password</label>
                            <input type="password" runat="server" class="form-control" id="editPswd" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <label for="editConfirmPwd" runat="server">Confirm Password</label>
                            <input type="password" runat="server" class="form-control" id="editConfirmPwd" placeholder="Confirm Password">
                        </div>
                        <div class="form-group">
                            <label for="editCurrentPswd" runat="server">Current Passsword</label>
                            <input type="password" runat="server" class="form-control" id="editCurrentPswd" placeholder="Current Passsword">
                        </div>

                        <button type="button" class="btn btn-primary" id="updateBtn">Update</button>

                    </form>
                </div>
            </div>



        </div>

        <hr />
        <p>
            <a class="btn btn-danger" onclick="ConfirmDialog()">Cancel my account</a>
            <a class="btn btn-default" href="displayDetails.aspx">Back</a>
        </p>

    </form>



</body>
</html>
