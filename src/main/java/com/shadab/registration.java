package com.shadab;
import java.io.IOException;
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

@WebServlet("/registration")
public class registration extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String first_name = request.getParameter("fname");
        String email = request.getParameter("email");
        String passwd = request.getParameter("password");
        String gender = request.getParameter("gender");
        String last_name = request.getParameter("lname");
        String contact = request.getParameter("contact");
        Connection con = null;
        RequestDispatcher dispatcher = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/hospital_management_system", "root", "shadab");
            PreparedStatement pst = con.prepareStatement("insert into register(firstname, lastname, mail, phoneno, gender, password) values (?, ?, ?, ?, ?, ?)");
            pst.setString(1, first_name);
            pst.setString(2, last_name);
            pst.setString(3, email);
            pst.setString(4, contact);
            pst.setString(5, gender);
            pst.setString(6, passwd);
            int hua = pst.executeUpdate();
            if (hua > 0) {
                HttpSession session = request.getSession();
                session.setAttribute("userName", first_name);
                dispatcher = request.getRequestDispatcher("/forms/medhistory_form.jsp");
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
