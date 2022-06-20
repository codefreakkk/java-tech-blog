<%@ page import="com.techblog.entities.User" %>
<%@ page import="com.techblog.dao.CategoryDao" %>
<%@ page import="com.techblog.helper.ConnectionProvider" %>
<%@ page import="com.techblog.entities.Category" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_navbar.jsp" %>
<%
    int id = 0;
    User u = (User) session.getAttribute("current_user");
    String title = "";
    String content = "";
    if(u == null) {

    } else {
        id = u.getId();
    }
    int cid = Integer.parseInt(request.getParameter("cid"));
    Category cat = new Category();
    CategoryDao obj = new CategoryDao(ConnectionProvider.getCon());
    cat = obj.fetchTitleAndContent(cat, cid);
    title = cat.getTitle();
    content = cat.getContent();
%>
<html>
<head>
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <!-- Title -->
    <title>Naxos - App Landing Page Template</title>

    <!-- Favicon -->
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">

    <!-- Google web font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:200,300,400,500,700">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/library/bootstrap/css/bootstrap.min.css">

    <!-- Font awesome -->
    <link rel="stylesheet" href="assets/library/fontawesome/css/all.min.css">

    <!-- Linea icons -->
    <link rel="stylesheet" href="assets/library/linea/arrows/styles.css" />
    <link rel="stylesheet" href="assets/library/linea/basic/styles.css" />
    <link rel="stylesheet" href="assets/library/linea/ecommerce/styles.css" />
    <link rel="stylesheet" href="assets/library/linea/software/styles.css" />
    <link rel="stylesheet" href="assets/library/linea/weather/styles.css" />

    <!-- Animate -->
    <link rel="stylesheet" href="assets/library/animate/animate.css">

    <!-- Lightcase -->
    <link rel="stylesheet" href="assets/library/lightcase/css/lightcase.css">

    <!-- Swiper -->
    <link rel="stylesheet" href="assets/library/swiper/swiper-bundle.min.css">

    <!-- Owl carousel -->
    <link rel="stylesheet" href="assets/library/owlcarousel/owl.carousel.min.css">

    <!-- Slick carousel -->
    <link rel="stylesheet" type="text/css" href="assets/library/slick/slick.css">

    <!-- Magnific popup -->
    <link rel="stylesheet" href="assets/library/magnificpopup/magnific-popup.css">

    <!-- YTPlayer -->
    <link rel="stylesheet" href="assets/library/ytplayer/css/jquery.mb.ytplayer.min.css">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/media.css">

    <!-- Color schema -->
    <link rel="stylesheet" href="assets/colors/turquoise.css" class="colors">

    <!-- Settings (Remove it on your site) -->
    <link rel="stylesheet" href="assets/library/settings/settings.css">

    <script async src='../../cdn-cgi/bm/cv/669835187/api.js'></script></head>
</head>
<body>


<div class="container">

        <h3 class="mt-5"><%=title%></h3>
        <div style="width: 90%;margin-top: 20px;padding-left: 5px; ">
            <%=content%>
        </div>
</div>




</body>
</html>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
