package com.vcube.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vcube.Model.LoginModel;
import com.vcube.Model.RegisterModel;

public class StudentDAO {
	static Connection con;
	String status="fail";

public String InsertData(RegisterModel rm) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
	        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/studentweb", "root", "root");
	        PreparedStatement  ps=con.prepareStatement("insert into StudentData(username,email,gender,branch,phonenumber,dob,password)values(?,?,?,?,?,?,?)");
            ps.setString(1, rm.getUsername());
            ps.setString(2, rm.getEmail());
            ps.setString(3, rm.getGender());
            ps.setString(4, rm.getBranch());
            ps.setString(5, rm.getPhonenumber());
            ps.setString(6, rm.getDob());
            ps.setString(7, rm.getPassword());         
		         int r =ps.executeUpdate();

	         if(r>0) {
	        	 status="success";
    }
		} catch (Exception e) {
			e.printStackTrace();
		}	
	return status;
	
}


public RegisterModel SelectData(LoginModel lm) {
    RegisterModel registerModel = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/studentweb", "root", "root");
        PreparedStatement  ps=con.prepareStatement("select * from StudentData where email=? and password=?");
        ps.setString(1, lm.getEmail());
        ps.setString(2, lm.getPassword());
        ResultSet rs = ps.executeQuery();
        
        if (rs.next()) {
            registerModel = new RegisterModel();
            registerModel.setUsername(rs.getString("username"));
            registerModel.setEmail(rs.getString("email"));
            registerModel.setPhonenumber(rs.getString("phonenumber"));
            registerModel.setDob(rs.getString("dob"));
            registerModel.setGender(rs.getString("gender"));
            registerModel.setBranch(rs.getString("branch"));
            System.out.println("Retrieved user data: " + registerModel);
        }
	}
        catch (Exception e) {
			e.printStackTrace();
		}
    return registerModel;}



public List<RegisterModel> getAllStudent() {
    List<RegisterModel> list = new ArrayList<>();

    try {
    	
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentweb", "root", "root");
        System.out.println("Database connection established");

        PreparedStatement ps = con.prepareStatement("SELECT * FROM StudentData");
        ResultSet rs = ps.executeQuery();

        while (rs.next()) {
            RegisterModel m = new RegisterModel(
                rs.getInt("id"), 
                rs.getString("username"), 
                rs.getString("phonenumber"),
                rs.getString("email"), 
                rs.getString("branch"), 
                rs.getString("dob"), 
                rs.getString("gender"), 
                rs.getString("password")
            );
            System.out.println("Fetched student: " + m);
            list.add(m);
        }

    } catch (Exception e) {
        e.printStackTrace();
    }
    return list;
}

public RegisterModel getStudentById(int id) {
    try {
     
			Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentweb", "root", "root");

         PreparedStatement ps = con.prepareStatement("SELECT * FROM StudentData WHERE id = ?");

        ps.setInt(1, id);

       ResultSet rs = ps.executeQuery();
       
            while (rs.next()) {
               return  new RegisterModel(
              rs.getInt("id"),
             rs.getString("username"),
             rs.getString("phonenumber"),
              rs.getString("email"),
                rs.getString("branch"),
                rs.getString("dob"),
               rs.getString("gender"),
                rs.getString("password")

            );
            }
        }
    catch (Exception e) {
        e.printStackTrace();
    }
    return null;
}


public String DeleteStudentById(int id) {
    Connection con = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentweb", "root", "root");

        PreparedStatement pstmt = con.prepareStatement("DELETE  FROM StudentData WHERE id=?");
        pstmt.setInt(1, id);
int r=pstmt.executeUpdate();
if(r>0) {
         status="success";  
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    return status;
}
public String updateStudentById(RegisterModel rm) {
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentweb", "root", "root");

        String updateQuery = "UPDATE StudentData SET username = ?, email = ?, branch = ?, dob = ?, gender = ?, phonenumber = ? WHERE id = ?";

        PreparedStatement preparedStatement = con.prepareStatement(updateQuery);
        preparedStatement.setString(1, rm.getUsername());
        preparedStatement.setString(2, rm.getEmail());
        preparedStatement.setString(3, rm.getBranch());
        preparedStatement.setString(4, rm.getDob());
        preparedStatement.setString(5, rm.getGender());
        preparedStatement.setString(6, rm.getPhonenumber());
        preparedStatement.setInt(7, rm.getId());

        int result = preparedStatement.executeUpdate();
        if (result > 0) {
            return "SUCCESS";
        } 
    } catch (Exception e) {
        e.printStackTrace();
    }
    return "FAIL";
}

public RegisterModel getStudentByUsername(String username) {
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentweb", "root", "root");

        PreparedStatement ps = con.prepareStatement("SELECT * FROM StudentData WHERE username = ?");
        ps.setString(1, username);

        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            return new RegisterModel(
                    rs.getInt("id"),
                    rs.getString("username"),
                    rs.getString("phonenumber"),
                    rs.getString("email"),
                    rs.getString("branch"),
                    rs.getString("dob"),
                    rs.getString("gender"),
                    rs.getString("password")
            );
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    return null;
}
}