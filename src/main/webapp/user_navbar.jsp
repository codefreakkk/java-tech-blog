<%@include file="user_profile_modal.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg" style="background-color: #007aff;color: white;">

    <div class="container-fluid" style="background-color: #007aff;color: white;">
        <a class="navbar-brand" href="index.jsp" style="padding: 8px;color: white;font-weight: bold;letter-spacing: 1px;">Tech Blog</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home.jsp" style="color: white;">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " aria-current="page" style="color:white;" href="addcategory.jsp">Add category</a>
                </li>
            </ul>
            <div class="d-flex" role="search">
                <span data-bs-toggle="modal" data-bs-target="#exampleModal"><a style="color: white; text-decoration: none; padding-right:20px;cursor: pointer;"><%=email%></a></span>
                <span><a style="color: white; text-decoration: none; padding-right: 20px;" href="logout">logout</a></span>
            </div>
        </div>
    </div>
</nav>
