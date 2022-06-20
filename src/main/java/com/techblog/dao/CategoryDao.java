package com.techblog.dao;

import com.techblog.entities.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CategoryDao {
    public Connection con;
    public CategoryDao(Connection con) {
        this.con = con;
    }
    public boolean saveCategory(Category cat) {
        int flag = 0;
        String sql = "INSERT INTO `category` (`cat_title`, `cat_content`) VALUES (?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cat.getTitle());
            ps.setString(2, cat.getContent());
            flag = ps.executeUpdate();
        } catch(Exception e) {
            e.printStackTrace();
        }
        if(flag > 0) return true;
        else return false;
    }
    public ResultSet getAllData() {
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM `category`";
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
        } catch(Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    public Category fetchTitleAndContent(Category cat, int cid) {
        Category category = null;
        try {
            String sql = "SELECT * FROM `category` WHERE `cid` = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                category = new Category();
                category.setTitle(rs.getString("cat_title"));
                category.setContent(rs.getString("cat_content"));
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        return category;
    }
}
