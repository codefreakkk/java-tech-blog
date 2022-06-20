package com.techblog.servlets;

import com.techblog.dao.CategoryDao;
import com.techblog.entities.Category;
import com.techblog.helper.ConnectionProvider;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.*;

public class AddCategoryServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        try {
            PrintWriter out = res.getWriter();
            String title = req.getParameter("title");
            String content = req.getParameter("content");
            Category cat = new Category(title, content);
            CategoryDao cd = new CategoryDao(ConnectionProvider.getCon());
            if(cd.saveCategory(cat)) {
                out.println("1");
            } else {
                out.println("0");
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
