package com.shadab;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Login")
public class login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cont = request.getParameter("cont");
        String passwd = request.getParameter("password3");
        RequestDispatcher dispatcher = null;
        Connection con = null;
        try {
        	Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/hospital_management_system", "root", "shadab");
            PreparedStatement pst = con.prepareStatement("select * from register where phoneno = ? and password = ?");
            pst.setString(1, cont);
            pst.setString(2, passwd);
            
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {                
            	String userName = rs.getString("firstname");
                HttpSession session = request.getSession();
                session.setAttribute("userName", userName);
                dispatcher = request.getRequestDispatcher("/Dashbord/index.jsp");
            } else {
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("/forms/login.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        dispatcher.forward(request, response);
    }
}