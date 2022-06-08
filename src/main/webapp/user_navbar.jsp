<%--
  Created by IntelliJ IDEA.
  User: harsh
  Date: 07-06-2022
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg bg-light" >
    <%
        String name = "";
        String email = "";
        User user = (User) session.getAttribute("current_user");
        if(user == null) {
            response.sendRedirect("login.jsp");
        } else {
            name = user.getName();
            email = user.getEmail();
        }
    %>
    <div class="container-fluid" style="background-color: #007aff;color: white;">
        <a class="navbar-brand" href="#" style="padding: 15px;color: white;font-weight: bold;letter-spacing: 1px;">Tech Blog</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp" style="color: white;">Home</a>
                </li>
                <li class="nav-item dropdown" >
                    <a class="nav-link dropdown-toggle" style="color:white;" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Categories
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link " aria-current="page" style="color:white;" href="#">Contact</a>
                </li>
            </ul>
            <div class="d-flex" role="search">
                <span><a style="color: white; text-decoration: none; padding-right:20px;cursor: pointer;"><%=email%></a></span>
                <span><a style="color: white; text-decoration: none; padding-right: 20px;" href="logout">Logout</a></span>
            </div>
        </div>
    </div>
</nav>
