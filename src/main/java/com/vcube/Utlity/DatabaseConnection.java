
 package com.vcube.Utlity;

 import java.sql.Connection;
 import java.sql.DriverManager;
 import java.sql.SQLException;

 public class DatabaseConnection {
     private Connection con;

     public Connection getConnection() {
         try {
             Class.forName("com.mysql.cj.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentweb", "root", "root");
         } catch (ClassNotFoundException | SQLException e) {
             e.printStackTrace();
         }
         return con;
     }

     public void closeConnection() {
         if (con != null) {
             try {
                 con.close();
             } catch (SQLException e) {
                 e.printStackTrace();
             }
         }
     }
 }

