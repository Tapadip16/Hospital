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

@WebServlet("/admin_login")
public class admin_login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usr = request.getParameter("user_admin");
        String passwd = request.getParameter("pass_admin");
        RequestDispatcher dispatcher = null;
        Connection con = null;
        try {
        	 Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/hospital_management_system", "root", "shadab");
            PreparedStatement pst = con.prepareStatement("select * from admin where name = ? and password = ?");
            pst.setString(1, usr);
            pst.setString(2, passwd);

            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
            	String name = rs.getString("name");
            	 HttpSession session = request.getSession();
                 session.setAttribute("adminName", name);
                dispatcher = request.getRequestDispatcher("/Admin-Panel/index.jsp");
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