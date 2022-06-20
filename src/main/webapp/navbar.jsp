<%@ page import="com.techblog.entities.User" %>
<!-- Header -->
<header id="top-page" class="header">

    <!-- Main menu -->
    <div id="mainNav" class="main-menu-area animated" >
        <div class="container">
            <div class="row align-items-center">

                <div class="col-12 col-lg-2 d-flex justify-content-between align-items-center">

                    <!-- Logo -->
                    <div class="logo">

                      <h3 style="color:white;margin-top: 11px;">Tech Blog</h3>

                    </div>

                    <!-- Burger menu -->
                    <div class="menu-bar d-lg-none">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>

                </div>

                <div class="op-mobile-menu col-lg-10 p-0 d-lg-flex align-items-center justify-content-end">

                    <!-- Mobile menu -->
                    <div class="m-menu-header d-flex justify-content-between align-items-center d-lg-none">

                        <!-- Logo -->
                        <a href="#" class="logo">
                            <img src="images/logo.png" alt="Naxos" data-rjs="2" />
                        </a>

                        <!-- Close button -->
                        <span class="close-button"></span>

                    </div>

                    <!-- Items -->
                    <ul class="nav-menu d-lg-flex flex-wrap list-unstyled justify-content-center">

                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger active" href="index.jsp">
                                <span>Home</span>
                            </a>
                        </li>

<%--                        <li class="nav-item">--%>
<%--                            <a class="nav-link js-scroll-trigger active" href="contact.jsp">--%>
<%--                                <span>Contact</span>--%>
<%--                            </a>--%>
<%--                        </li>--%>

<%--                        <li class="nav-item">--%>
<%--                            <a class="nav-link js-scroll-trigger active" href="categories.jsp">--%>
<%--                                <span>Categories</span>--%>
<%--                            </a>--%>
<%--                        </li>--%>
                        <%
                            User user = (User) session.getAttribute("current_user");
                            if(user == null) {
                                %>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger active" href="login.jsp">
                                <span>Login</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger active" href="login.jsp">
                                <span>Sign Up</span>
                            </a>
                        </li>
                        <%
                            } else {
                                %>

                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger active" href="home.jsp">
                                <span>Explore</span>
                            </a>
                        </li>

                        <%
                            }
                        %>

                    </ul>

                </div>

            </div>
        </div>
    </div>

</header>