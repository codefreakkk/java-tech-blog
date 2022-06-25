<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html class="no-js" lang="en-US">
<head>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

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
</head>

<body>

<!-- Loader -->
<div class="page-loader">
    <div class="progress"></div>
</div>

<%@include file="navbar.jsp"%>



<!-- Banner -->
<section id="home" class="banner slide-bg bottom-curve" style="height:75vh ;">

    <!-- Container -->
    <div class="container">

        <div class="row align-items-center">

            <!-- Content -->
            <div class="col-12 col-md-7 col-lg-6 res-margin">

                <!-- Banner text -->
                <div class="banner-text mt-5">

                    <h1 class="wow fadeInUp" data-wow-offset="10" data-wow-duration="1s" data-wow-delay="0s">
                        Welcome to Tech Blog
                    </h1>

                    <p class="wow fadeInUp" data-wow-offset="10" data-wow-duration="1s" data-wow-delay="0.3s">
                       Find all technology related
                        things here. Publish your own blogs and
                        solve your doubts here at one place
                    </p>

                </div>

            </div>


        </div>

    </div>
</section>

<!-- Services -->
<section id="services" class="bg-grey">

    <!-- Container -->
    <div class="container">

        <!-- Section title -->
        <div class="row justify-content-center">
            <div class="col-12 col-md-10 col-lg-6">

                <div class="section-title text-center">
                    <h3>Hey Posts Here</h3>
                    <p>Explore all blogs here at one place</p>
                </div>

            </div>
        </div>

        <!-- Items -->
        <div style=" display: grid; grid-template-columns: auto auto auto;" class="overview-item" id="item_cont">

        </div>

    </div>

</section>


<%@include file="footer.jsp"%>

<!-- Back to top -->
<a href="#top-page" class="to-top">
    <div class="icon icon-arrows-up"></div>
</a>




    <script>
        $(document).ready(function() {
            $.ajax({
                url: "FetchCategoryServlet",
                type: "POST",
                success: function(data) {
                    $("#item_cont").html(data);
                }
            })
        })
    </script>



<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/library/jquery/jquery.js"></script>
<script src="assets/library/jquery/jquery-easing.js"></script>

<!-- Bootstrap -->
<script src="assets/library/bootstrap/js/bootstrap.min.js"></script>

<!-- Plugins -->
<script src="assets/library/retina/retina.min.js"></script>
<script src="assets/library/backstretch/jquery.backstretch.min.js"></script>
<script src="assets/library/swiper/swiper-bundle.min.js"></script>
<script src="assets/library/owlcarousel/owl.carousel.min.js"></script>
<script src="assets/library/slick/slick.js"></script>
<script src="assets/library/waypoints/jquery.waypoints.min.js"></script>
<script src="assets/library/isotope/isotope.pkgd.min.js"></script>
<script src="assets/library/waitforimages/jquery.waitforimages.min.js"></script>
<script src="assets/library/lightcase/js/lightcase.js"></script>
<script src="assets/library/wow/wow.min.js"></script>
<script src="assets/library/parallax/jquery.parallax.min.js"></script>
<script src="assets/library/counterup/jquery.counterup.min.js"></script>
<script src="assets/library/magnificpopup/jquery.magnific-popup.min.js"></script>
<script src="assets/library/ytplayer/jquery.mb.ytplayer.min.js"></script>

<!-- Main -->
<script src="assets/js/main.js"></script>

<!-- Settings (Remove it on your site) -->
<script src="assets/library/settings/jquery.cookies.min.js"></script>
<script src="assets/library/settings/settings.js"></script>


</html>