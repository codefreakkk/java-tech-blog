package com.techblog.servlets;

import com.techblog.dao.UserDao;
import com.techblog.entities.User;
import com.techblog.helper.ConnectionProvider;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class LoginServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        try {
            String name = req.getParameter("uname");
            String pass = req.getParameter("pass");
            UserDao userDao = new UserDao(ConnectionProvider.getCon());
            User user = userDao.getUserByEmailAndPassword(name, pass);
            if(user != null) {
                HttpSession session = req.getSession();
                session.setAttribute("current_user", user);
                res.sendRedirect("home.jsp");
                System.out.println("Inside If");
            } else {
                HttpSession session = req.getSession();
                session.setAttribute("msg", "Email or Pass not correct");
                res.sendRedirect("login.jsp");
            }
        } catch(Exception e) {
            System.out.println("LoginServlet Error");
            e.printStackTrace();
        }
    }
}
