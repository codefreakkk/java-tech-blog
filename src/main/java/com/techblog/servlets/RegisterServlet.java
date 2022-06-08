package com.techblog.servlets;

import com.techblog.dao.UserDao;
import com.techblog.entities.*;
import com.techblog.helper.ConnectionProvider;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class RegisterServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        try {
            PrintWriter out = res.getWriter();
            String name = req.getParameter("name");
            String email = req.getParameter("email");
            String pass1 = req.getParameter("pass1");
//            set user data
            User user = new User(name, email, pass1);
            UserDao userDao = new UserDao(ConnectionProvider.getCon());
            if(userDao.saveUser(user) == true) {
                out.println("1");
            } else {
                out.println("0");
            }
        } catch(Exception e) {
            System.out.println("RegisterServlet Error");
            e.printStackTrace();
        }
    }
}
