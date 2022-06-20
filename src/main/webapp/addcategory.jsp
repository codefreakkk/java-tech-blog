<%@ page import="com.techblog.entities.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="user_navbar.jsp" %>
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
    <h4 class="mt-5">Add Category</h4>

    <div id="alert">

    </div>

    <form id="cat_form">
    <div class="mb-3 mt-3">
        <input type="text" autofocus="true" id="title" class="form-control" name="c1" placeholder="Title here" aria-describedby="emailHelp">
    </div>
    <div class="mb-3">
        <textarea class="form-control" id="content" name="c2" placeholder="Content here" rows="17"></textarea>
    </div>
    <button id="add_cat" type="button" class="btn btn-primary">Submit</button>
    </form>


    <script>
        $(document).ready(function() {
            $('#add_cat').on('click', function() {
                let title = $("#title").val();
                let content = $("#content").val();
                if(title.length == 0 && content.length == 0) {
                    $("#alert").html(`<div class="alert alert-danger alert-dismissible fade show mt-3 mb-3" role="alert">
                                    <strong>Alert !</strong> Please fill all the information
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>`)
                } else {
                    $.ajax({
                        url: "AddCategoryServlet",
                        type: "POST",
                        data: {
                            title: title,
                            content: content
                        },
                        success: function (data) {
                            if (data == 1) {
                                $("#alert").html(`<div class="alert alert-success alert-dismissible fade show mt-3 mb-3" role="alert">
                                    <strong>Success !</strong> Category added successfully
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>`)
                            } else {
                                $("#alert").html(`<div class="alert alert-warning alert-dismissible fade show mt-3 mb-3" role="alert">
                                    <strong>Alert !</strong> Category not added
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>`)
                            }
                        }
                    })
                }
                $("#title").val("");
                $("#content").val("");
            })
        })
    </script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

</body>
</html>
