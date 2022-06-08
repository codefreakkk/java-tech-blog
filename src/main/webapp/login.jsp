<%@page import="com.techblog.helper.ConnectionProvider"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.techblog.entities.User" %>
<!DOCTYPE html>
<!-- === Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- ===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- ===== CSS ===== -->
    <link rel="stylesheet" href="assets/css/login-register.css">

    <title>Login & Registration Form</title>
</head>
<body>

<section class="hero" >
</section>

<%
    String msg = (String) session.getAttribute("msg");
%>

<div class="container">
    <div class="forms">
        <div class="form login">
            <div class="title" style="margin-bottom: 10px;">Login</div>
            <%
                if (msg != null) {
                    %>
                    <%=msg%>
            <%
                    session.removeAttribute("msg");
                }
            %>

<%--login formm--%>
            <form action="LoginServlet" method="POST">
                <div class="input-field">
                    <input type="text" name="uname" id="login_name" placeholder="Enter your email" required>
                    <i class="uil uil-envelope icon"></i>
                </div>

                <div class="input-field">
                    <input type="password" id="login_password" name="pass" class="password" placeholder="Enter your password" required>
                    <i class="uil uil-lock icon"></i>
                    <i class="uil uil-eye-slash showHidePw"></i>
                </div>

                <div class="input-field button">
                    <input type="submit" id="loginButton" value="Login Now">
                </div>
            </form>

            <div class="login-signup">
                    <span class="text">Not a member?
                        <a href="#" class="text signup-link">Signup now</a>
                    </span>
            </div>

        </div>

        <!-- Registration Form -->
        <div class="form signup">
            <span class="title">Registration</span>

            <form id="myform">
                <div class="input-field">
                    <input type="text" id="name" placeholder="Enter your name" required>
                    <i class="uil uil-user"></i>
                </div>
                <div class="input-field">
                    <input type="text" id="email" placeholder="Enter your email" required>
                    <i class="uil uil-envelope icon"></i>
                </div>
                <div class="input-field">
                    <input type="password" id="pass1" class="password" placeholder="Create a password" required>
                    <i class="uil uil-lock icon"></i>
                </div>
                <div class="input-field">
                    <input type="password" id="pass2" class="password" placeholder="Confirm a password" required>
                    <i class="uil uil-lock icon"></i>
                    <i class="uil uil-eye-slash showHidePw"></i>
                </div>

                <div class="input-field button">
                    <input type="button" id="signup" value="Signup Now">
                </div>
            </form>

            <div class="login-signup" >
                    <span class="text">Already Signed Up ?
                        <a style="cursor:pointer;" class="text login-link">Login now</a>
                    </span>
            </div>
        </div>
    </div>
</div>

    <script>
        $(document).ready(function() {
            //sign up feature
            let signup = $("#signup")
            $("#signup").on("click", function() {
               let name = $("#name").val();
               let email = $("#email").val();
               let pass1 = $("#pass1").val();
               let pass2 = $("#pass2").val();
                if(pass1 == pass2 && pass1.length != 0) {
                    $.ajax({
                        url: "RegisterServlet",
                        type: "POST",
                        data: {
                            name: name,
                            email: email,
                            pass1: pass1,
                        },
                        success: function (data) {
                            if (data == 1) {
                                alert("You have Signed Up !")
                                location.href = "login.jsp";
                            } else {
                                alert("Sign Up unsuccessful")
                                $("#name").val("");
                                $("#email").val("");
                                $("#pass1").val("");
                                $("#pass2").val("")
                            }
                        },
                        error: function (data) {
                            alert("Internal Server error")
                            location.href = "login.jsp";
                        }
                    })
                } else {
                    alert("Password Not match");
                    $("#name").val("");
                    $("#email").val("");
                }
            })
        //    login feature
        <%--    $("#loginButton").on('click', function () {--%>
        <%--        let login_name = $("#login_name").val();--%>
        <%--        let login_pass = $("#login_password").val();--%>
        <%--        $.ajax({--%>
        <%--            url: "LoginServlet",--%>
        <%--            type: "POST",--%>
        <%--            data: {--%>
        <%--                uname: login_name,--%>
        <%--                pass: login_pass--%>
        <%--            },--%>
        <%--            success: function(data) {--%>
        <%--                console.log(data)--%>
        <%--            },--%>
        <%--            error: function(error) {--%>
        <%--                console.log(`error occured ${error}`);--%>
        <%--            }--%>
        <%--        })--%>
        <%--    })--%>

        })
    </script>


<script src="assets/js/login-register.js"></script>

</body>
</html>
