package com.techblog.helper;

import java.sql.*;
import com.mysql.jdbc.Driver;

import static java.lang.Class.forName;

public class ConnectionProvider {
    public static Connection con = null;
    public static Connection getCon() throws SQLException {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String serverName = "localhost:3306";
            String mydatabase = "blog";
            String url = "jdbc:mysql://" + serverName + "/" + mydatabase;
            String username = "root";
            String password = "";
            connection = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (Connection) connection;
    }
}
