package com.shadab;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/medicl_his")
public class medicl_his extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get parameters from the form
        String name = request.getParameter("name");
        long age = Long.parseLong(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String[] conditions = { request.getParameter("condition1"), request.getParameter("condition2"), request.getParameter("condition3"), request.getParameter("condition4") };
        String[] diagnoses = { request.getParameter("diagnosis_date1"), request.getParameter("diagnosis_date2"), request.getParameter("diagnosis_date3"), request.getParameter("diagnosis_date4") };
        String[] medications = { request.getParameter("medication1"), request.getParameter("medication2"), request.getParameter("medication3"), request.getParameter("medication4") };
        String[] dosages = { request.getParameter("dosage1"), request.getParameter("dosage2"), request.getParameter("dosage3"), request.getParameter("dosage4") };
        String[] frequencies = { request.getParameter("frequency1"), request.getParameter("frequency2"), request.getParameter("frequency3"), request.getParameter("frequency4") };
        String[] measurements = { request.getParameter("measurement1"), request.getParameter("measurement2"), request.getParameter("measurement3") };
        String[] results = { request.getParameter("result1"), request.getParameter("result2"), request.getParameter("result3") };
        String[] allergens = { request.getParameter("allergen1"), request.getParameter("allergen2") };
        String[] reactions = { request.getParameter("reaction1"), request.getParameter("reaction2") };

        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3307/hospital_management_system", "root", "shadab");

            // Create the SQL query to insert into the table
            String insertQuery = "INSERT INTO patientinfo (name, age, gender, condition1, condition2, conditon3, condition4, "
                    + "diagnosis_date1, diagnosis_date2, diagnosis_date3, diagnosis_date4, medication1, medication2, medication3, medication4, "
                    + "dosage1, dosage2, dosage3, dosage4, frequency1, frequency2, frequency3, frequency4, measurement1, measurement2, measurement3, "
                    + "result1, result2, result3, allergen1, allergen2, reaction1, reaction2) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            PreparedStatement pst = con.prepareStatement(insertQuery);

            // Set values for the prepared statement
            pst.setString(1, name);
            pst.setLong(2, age);
            pst.setString(3, gender);

            for (int i = 0; i < 4; i++) {
                pst.setString(4 + i, conditions[i]);
                pst.setString(8 + i, diagnoses[i]);
                pst.setString(12 + i, medications[i]);
                pst.setString(16 + i, dosages[i]);
                pst.setString(20 + i, frequencies[i]);
            }

            for (int i = 0; i < 3; i++) {
                pst.setString(24 + i, measurements[i]);
                pst.setString(27 + i, results[i]);
            }

            for (int i = 0; i < 2; i++) {
                pst.setString(30 + i, allergens[i]);
                pst.setString(32 + i, reactions[i]);
            }

            int rowsInserted = pst.executeUpdate();

            if (rowsInserted > 0) {
                HttpSession session = request.getSession();
                session.setAttribute("userName", name);
                response.sendRedirect(request.getContextPath() + "/Dashbord/index.jsp");
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
    }
}
