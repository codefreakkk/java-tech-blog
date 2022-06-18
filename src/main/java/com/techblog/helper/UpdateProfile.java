package com.techblog.helper;

import com.techblog.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.*;
import java.io.*;
import java.sql.SQLException;
@MultipartConfig
public class UpdateProfile extends HttpServlet  {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException  {
        try {
            UserDao user = new UserDao(ConnectionProvider.getCon());
            Part file = req.getPart("file_");
            String fileName = file.getName();
            String path = req.getRealPath("/") + "uploads" + File.separator + fileName;
            user.updateProfile(file, path);
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
