package com.techblog.servlets;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.*;

public class LogoutServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        HttpSession session = req.getSession(false);
        session.invalidate();
        res.sendRedirect("index.jsp");
    }
}
