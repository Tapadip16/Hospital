<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Lifeline-Dashboard</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
  <link href="/HMS/Admin-Panel/img/favicon.ico" rel="icon" />

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
    rel="stylesheet" />

  <!-- Icon Font Stylesheet -->
  
     <link href="/HMS/Admin-Panel/lib/node_modules/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
  <link href="/HMS/Admin-Panel/lib/node_modules/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />

  <!-- Libraries Stylesheet -->
  <link href="/HMS/Admin-Panel/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
  <link href="/HMS/Admin-Panel/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

  <!-- Customized Bootstrap Stylesheet -->
  <link href="/HMS/Admin-Panel/css/bootstrap.min.css" rel="stylesheet" />

  <!-- Template Stylesheet -->
  <link href="/HMS/Admin-Panel/css/style.css" rel="stylesheet" />
    <style>
        th,
        td {
            text-align: center;
        }
    </style>

</head>

<body>
    <div class="container-fluid position-relative d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner"
            class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;"
                role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-secondary navbar-dark">
                <a href="index.jsp" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>Lifeline</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="/HMS/assets/img/user.png" alt=""
                            style="width: 40px; height: 40px;">
                        <div
                            class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1">
                        </div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0"><%= session.getAttribute("adminName")%></h6>
                        <span>Admin</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <a href="index.jsp" class="nav-item nav-link"><i
                            class="bi bi-clipboard-data-fill me-2"></i>Dashboard</a>
                    <div class="nav-item dropdown">
                        <a href="/HMS/Admin-Panel/dr_registration.jsp" class="nav-item nav-link dropdown-toggle"
                            data-bs-toggle="dropdown"><i
                                class="bi bi-person-fill-add me-2"></i>Registrations</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="/HMS/Admin-Panel/dr_registration.jsp" class="dropdown-item">Dr Register</a>
                            <a href="/HMS/Admin-Panel/admin-register.jsp" class="dropdown-item">Admin Register</a>
                        </div>
                    </div>
                    <a href="/HMS/Admin-Panel/med_history.jsp" class="nav-item nav-link active"><i
                            class="bi bi-hourglass-bottom me-2"></i>Medical History</a>
                    <a href="/HMS/Admin-Panel/updt-appoinmnt.jsp" class="nav-link"><i
                            class="bi bi-file-earmark-medical-fill me-2"></i>Appointments</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i
                                class="bi bi-gear-fill me-2"></i>Settings</a>
                        <div class="dropdown-menu bg-transparent border-0">
                                     <a href="/HMS/index.jsp#about" class="dropdown-item">Hospital Details</a>
              						 <a href="/HMS/index.jsp#services" class="dropdown-item">Services Details</a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
                <a href="index.jsp" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                <form class="d-none d-md-flex ms-4">
                    <input class="form-control bg-dark border-0" type="search" placeholder="Search">
                </form>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="fa fa-envelope me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Message</span>
                        </a>
                        <div
                            class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user5.jpg" alt=""
                                        style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Anubhav send you a message</h6>
                                        <small>04 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user3.jpg" alt=""
                                        style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Tapadip send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user2.jpg" alt=""
                                        style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Viru send you a message</h6>
                                        <small>23 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user4.jpg" alt=""
                                        style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Arjun send you a message</h6>
                                        <small>20 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="fa fa-bell me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Notifications</span>
                        </a>
                        <div
                            class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Profile updated</h6>
                                <small>10 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">New user added</h6>
                                <small>10 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Password changed</h6>
                                <small>10 minutes ago</small>
                            </a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="/HMS/assets/img/user.png" alt=""
                                style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex">Shadab</span>
                        </a>
                        <div
                            class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">My Profile</a>
                            <a href="#" class="dropdown-item">Settings</a>
                            <a href="/HMS/index.jsp" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->


            <!-- Table Start -->
            <div class="container-fluid pt-4 px-4">
    <div class="row g-4">
        <div class="col-12">
            <div class="bg-secondary rounded h-100 p-4">
                <h6 class="mb-4">Patient Information</h6>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Patient Name</th>
                                <th>Age</th>
                                <th>Gender</th>
                                <th>Condition 1</th>
                                <th>Condition 2</th>
                                <th>Condition 3</th>
                                <th>Condition 4</th>
                                <th>Diagnosis Date 1</th>
                                <th>Diagnosis Date 2</th>
                                <th>Diagnosis Date 3</th>
                                <th>Diagnosis Date 4</th>
                                <th>Medication 1</th>
                                <th>Medication 2</th>
                                <th>Medication 3</th>
                                <th>Medication 4</th>
                                <th>Dosage 1</th>
                                <th>Dosage 2</th>
                                <th>Dosage 3</th>
                                <th>Dosage 4</th>
                                <th>Frequency 1</th>
                                <th>Frequency 2</th>
                                <th>Frequency 3</th>
                                <th>Frequency 4</th>
                                <th>Measurement 1</th>
                                <th>Measurement 2</th>
                                <th>Measurement 3</th>
                                <th>Result 1</th>
                                <th>Result 2</th>
                                <th>Result 3</th>
                                <th>Allergen 1</th>
                                <th>Allergen 2</th>
                                <th>Reaction 1</th>
                                <th>Reaction 2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                Connection con = null;
                                ResultSet rs = null;
                                Statement st = null;
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3307/hospital_management_system", "root", "shadab");
                                    st = con.createStatement();
                                    String query = "SELECT * FROM patientinfo";
                                    rs = st.executeQuery(query);
                                    while (rs.next()) { %>
                                        <tr>
                                            <td><%= rs.getString("name") %></td>
                                            <td><%= rs.getLong("age") %></td>
                                            <td><%= rs.getString("gender") %></td>
                                            <td><%= rs.getString("condition1") %></td>
                                            <td><%= rs.getString("condition2") %></td>
                                            <td><%= rs.getString("conditon3") %></td>
                                            <td><%= rs.getString("condition4") %></td>
                                            <td><%= rs.getString("diagnosis_date1") %></td>
                                            <td><%= rs.getString("diagnosis_date2") %></td>
                                            <td><%= rs.getString("diagnosis_date3") %></td>
                                            <td><%= rs.getString("diagnosis_date4") %></td>
                                            <td><%= rs.getString("medication1") %></td>
                                            <td><%= rs.getString("medication2") %></td>
                                            <td><%= rs.getString("medication3") %></td>
                                            <td><%= rs.getString("medication4") %></td>
                                            <td><%= rs.getString("dosage1") %></td>
                                            <td><%= rs.getString("dosage2") %></td>
                                            <td><%= rs.getString("dosage3") %></td>
                                            <td><%= rs.getString("dosage4") %></td>
                                            <td><%= rs.getString("frequency1") %></td>
                                            <td><%= rs.getString("frequency2") %></td>
                                            <td><%= rs.getString("frequency3") %></td>
                                            <td><%= rs.getString("frequency4") %></td>
                                            <td><%= rs.getString("measurement1") %></td>
                                            <td><%= rs.getString("measurement2") %></td>
                                            <td><%= rs.getString("measurement3") %></td>
                                            <td><%= rs.getString("result1") %></td>
                                            <td><%= rs.getString("result2") %></td>
                                            <td><%= rs.getString("result3") %></td>
                                            <td><%= rs.getString("allergen1") %></td>
                                            <td><%= rs.getString("allergen2") %></td>
                                            <td><%= rs.getString("reaction1") %></td>
                                            <td><%= rs.getString("reaction2") %></td>
                                        </tr>
                                    <%
                                    }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                } finally {
                                    if (rs != null) rs.close();
                                    if (st != null) st.close();
                                    if (con != null) con.close();
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
            <!-- Table End -->


            <!-- Back to Top -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
                    class="bi bi-arrow-up"></i></a>
        </div>

        <!-- JavaScript Libraries -->
         <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="/HMS/Admin-Panel/lib/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/HMS/Admin-Panel/lib/chart/chart.min.js"></script>
    <script src="/HMS/Admin-Panel/lib/easing/easing.min.js"></script>
    <script src="/HMS/Admin-Panel/lib/waypoints/waypoints.min.js"></script>
    <script src="/HMS/Admin-Panel/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="/HMS/Admin-Panel/lib/tempusdominus/js/moment.min.js"></script>
    <script src="/HMS/Admin-Panel/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="/HMS/Admin-Panel/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="/HMS/Admin-Panel/js/main.js"></script>
</body>

</html>