package com.shadab;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/appointmentreg")
public class appointmentreg extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 String name = request.getParameter("name");
         String contact = request.getParameter("cont");
         String date = request.getParameter("date");
         String gender = request.getParameter("gender");
         String address = request.getParameter("address");
         String doctor = request.getParameter("doctor");
         String department = request.getParameter("department");
        PrintWriter out = response.getWriter();
        Connection con = null;
        RequestDispatcher dispatcher = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/hospital_management_system", "root", "shadab");
            PreparedStatement pst = con.prepareStatement("insert into appointment values (?, ?, ?, ?, ?, ?, ?)");
            pst.setString(1, name);
            pst.setString(2, contact);
            pst.setString(3, date);
            pst.setString(4, gender);
            pst.setString(5, address);
            pst.setString(6, doctor);
            pst.setString(7, department);
            int hua = pst.executeUpdate();
            if (hua > 0) {
                HttpSession session = request.getSession();
                session.setAttribute("userName", name);
                dispatcher = request.getRequestDispatcher("Dashbord/index.jsp");
            } else {
                request.setAttribute("status", "");
            }
            dispatcher.forward(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

