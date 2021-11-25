$(document).ready(function () {

    $("#SubmitBtn").click(function () {
        var SignUpName = $("#SignupNameId").val();
        var SignUpEmail = $("#SignupEmailId").val();
        var SignUpPswd = $("#SignupPwdId").val();
        var SignUpCnfPswd = $("#SignupConfirmPwdId").val();


        if (SignUpName == "" && SignUpEmail == "" && SignUpPswd == "" && SignUpCnfPswd == "") {
            var divhtml = "";
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert' aria-label='close'>x</button>";
            divhtml += "<p>2 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Name Can't be blank</li>";
            divhtml += "<li>Email Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }

        else if (SignUpName == null || SignUpName == "" || SignUpName === "undefined") {
            var divhtml = "";
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>1 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Name Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);

        }
        else if (SignUpEmail == null || SignUpEmail == "" || SignUpEmail === "undefined") {
            var divhtml = "";
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>1 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Email Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);

        }
        else if (SignUpPswd == null || SignUpPswd == "" || SignUpPswd === "undefined") {
            var divhtml = "";
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>1 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Password Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }
        else if (SignUpCnfPswd !== SignUpPswd) {
            var divhtml = "";
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>1 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Password confirmation doesn't match Password</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }

        else {
            var userDetails = function () {
                $.ajax({
                    type: 'POST',
                    contentType: "application/json; charset=utf-8",
                    url: "UserDetails.asmx/Save",
                    dataType: 'json',                   
                    data: "{ 'userName':' " + SignUpName + "', 'userEmail': '" + SignUpEmail + "' , 'userPswd': '" + SignUpPswd + "'}",
                    success: function () {
                        location.href = "https://localhost:44364/home.aspx"
                    }
                });

            }
            userDetails();
        }


    });

    $("#signinbBtn").click(function () {

        var SignInEmail = $("#SigninEmailId").val();
        var SignInPswd = $("#SigninPassword").val();
        if (SignInEmail == "" || SignInPswd == "") {
            var divhtml = "";
            divhtml += "<div class='alert alert-success'>Invalid Email or Password";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "</div >";
            $("#alert").html(divhtml);
        }
        else {
            var DispDetails = function (SignInEmail, SignInPswd) {
                $.ajax({
                    url: "UserDetails.asmx/displayDetails",
                    type: 'POST',
                    data: { SignInEmail: SignInEmail, SignInPswd: SignInPswd },
               
                    dataType: 'json',
                    success: function (data) {
                        if (data.d == null || data.d == "" || data.d === "Undefined") {
                            var divhtml = "";
                            divhtml += "<div class='alert alert-success'>Invalid Email or Password";
                            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
                            divhtml += "</div >";
                            $("#alert").html(divhtml);
                        }
                        else
                        {
                            location.href = "home.aspx";
                        }
                        // var userHtml = "";
                        // userHtml += "<div style = 'color:white'><span><img src='Images/UserIcon.jpg' width='20px'/></span>" + data.FirstName + "</div>";
                        //$("#UserName").html(userHtml);

                    }
                });
            }
            DispDetails(SignInEmail, SignInPswd);
        }
    });
    $("#Logout").click(function () {

        $.ajax({
            url: "UserDetails.asmx/LogoutUser",
            type: 'POST',
            dataType: 'json'


        });
    });

    $("#updateBtn").click(function () {
        var UserName = $("#editName").val();
        var Email = $("#editEmail").val();
        var password = $("#editPswd").val();
        var CnfirmPswd = $("#editConfirmPwd").val();
        var CurPswd = $("#editCurrentPswd").val();

        if (UserName == "" && Email == "" && CurPswd == "") {
            var divhtml = "";
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>3 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Name Can't be blank</li>";
            divhtml += "<li>Email Can't be blank</li>";
            divhtml += "<li>Current Password Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }
        else if (UserName == "" || UserName == null || UserName === "undefined") {
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>1 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Name Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }
        else if (Email == "" || Email == null || Email === "undefined") {
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>1 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Email Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }
        else if (CurPswd == "" || CurPswd == null || CurPswd === "undefined") {
            divhtml += "<div class='alert alert-danger'>";
            divhtml += "<button class='close' type='button' data-dismiss='alert'>x</button>";
            divhtml += "<p>1 errors prohibited this user from being saved:<p>";
            divhtml += "<ul>";
            divhtml += "<li>Current Password Can't be blank</li>";
            divhtml += "</ul>";
            divhtml += "</div > ";
            $("#alert1").html(divhtml);
        }
        else {
            var updateDetails = function () {
                $.ajax({
                    url: "UserDetails.asmx/UpdateDetails",
                    type: 'POST',
                    data: "{ 'UserName':'" + UserName + "','Email':'" + Email + "','password':'" + password + "','CurPswd':'" + CurPswd + "' }",
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    success: function () {
                        location.href = "home.aspx";
                    }


                });

            }
            updateDetails();
        }

    });
});