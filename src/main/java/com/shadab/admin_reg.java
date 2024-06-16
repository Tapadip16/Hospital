package com.shadab;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin_reg")
public class admin_reg extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("user_admin");
        String passwd = request.getParameter("pass_admin");
        PrintWriter out = response.getWriter();
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/hospital_management_system", "root", "shadab");
            PreparedStatement pst = con.prepareStatement("insert into admin(name, password) values (?, ?)");
            pst.setString(1, name);
            pst.setString(2, passwd);
            int hua = pst.executeUpdate();
            if (hua > 0) {
            	request.setAttribute("registrationSuccess", "Registration successful!");
            } else {
                request.setAttribute("status", "");
            }
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
        response.sendRedirect("Admin-Panel/admin-register.jsp");
    }
}
