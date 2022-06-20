package com.techblog.servlets;

import com.techblog.dao.CategoryDao;
import com.techblog.helper.ConnectionProvider;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.*;
import java.sql.ResultSet;

public class FetchCategoryServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
            CategoryDao obj = new CategoryDao(ConnectionProvider.getCon());
            ResultSet rs = obj.getAllData();
            while(rs.next()) {
                int cid = rs.getInt(1);
                String cat_title = rs.getString(2);
                String cat_content = rs.getString(3);
                PrintWriter out = res.getWriter();
                out.println("  <div class=\"row overview-box d-flex flex-wrap\">\n" +
                        "            <div class=\"icon icon-basic-compass\"></div>\n" +
                        "            <div class=\"content\">\n" +
                        "                <h6 class=\"font-weight-bold mb-2 mt-0\"><a style='cursor:pointer;color:black;' href=viewcategory.jsp?cid="+cid+">"+cat_title+"</a></h6>\n" +
                        "                <p>"+cat_content.substring(0, 20)+"</p>\n" +
                        "            </div>\n" +
                        "        </div>");
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
