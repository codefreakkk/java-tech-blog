package com.techblog.dao;

import com.techblog.entities.User;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.*;

@MultipartConfig
public class UserDao {
    private Connection con;
    public UserDao(Connection con) {
        this.con = con;
    }
    public boolean saveUser(User user) {
        int flag = 0;
        try {
//            check if email exist or not
            String sql1 = "SELECT `email` from `user`";
            PreparedStatement ps1 = con.prepareStatement(sql1);
            ResultSet rs = ps1.executeQuery();
            while(rs.next()) {
                if(rs.getString("email").equals(user.getEmail())) {
                    return false;
                }
            }
//            insert values into db
            String sql2 = "insert into `user` (`name`, `email`, `pass`) values (?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql2);
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPass());
            flag = ps.executeUpdate();
        } catch(Exception e) {
            e.printStackTrace();
        }

        if(flag > 0) return true;
        else return false;
    }

    public User getUserByEmailAndPassword(String email, String pass) {
        User user = null;
        try {
            String sql = "SELECT * from `user` where `email`=? and `pass`=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public void updateProfile(Part file, String path) {
      try {
          String fileName = file.getName();
          InputStream is = file.getInputStream();
          byte[] data = new byte[is.available()];
          is.read(data);
          FileOutputStream fos = new FileOutputStream(path);
          fos.write(data);
          fos.close();
          System.out.println("File Uploaded Successfully");
      } catch(Exception e) {
          e.printStackTrace();
      }
    }
}
