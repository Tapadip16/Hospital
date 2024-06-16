<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title>Lifeline-Dashboard</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <meta content="" name="keywords" />
  <meta content="" name="description" />

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
</head>

<body>
  <div class="container-fluid position-relative d-flex p-0">
    <!-- Spinner Start -->
    <div id="spinner"
      class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
      <div class="spinner-border text-primary" style="width: 3rem; height: 3rem" role="status">
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
              style="width: 40px; height: 40px" />
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
          <a href="/HMS/Admin-Panel/index.jsp" class="nav-item nav-link active"><i
              class="bi bi-clipboard-data-fill me-2"></i>Dashboard</a>
          <div class="nav-item dropdown">
            <a href="/HMS/Admin-Panel/dr_registration.jsp" class="nav-item nav-link dropdown-toggle"
              data-bs-toggle="dropdown"><i class="bi bi-person-fill-add me-2"></i>Registrations</a>
            <div class="dropdown-menu bg-transparent border-0">
              <a href="/HMS/Admin-Panel/dr_registration.jsp" class="dropdown-item">Dr Register</a>
              <a href="/HMS/Admin-Panel/admin-register.jsp" class="dropdown-item">Admin Register</a>
            </div>
          </div>
          <a href="/HMS/Admin-Panel/med_history.jsp" class="nav-item nav-link"><i
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
          <input class="form-control bg-dark border-0" type="search" placeholder="Search" />
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
                  <img class="rounded-circle" src="/HMS/assets/img/user.png" alt=""
                    style="width: 40px; height: 40px" />
                  <div class="ms-2">
                    <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                    <small>15 minutes ago</small>
                  </div>
                </div>
              </a>
              <hr class="dropdown-divider" />
              <a href="#" class="dropdown-item">
                <div class="d-flex align-items-center">
                  <img class="rounded-circle" src="/HMS/assets/img/user.png" alt=""
                    style="width: 40px; height: 40px" />
                  <div class="ms-2">
                    <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                    <small>15 minutes ago</small>
                  </div>
                </div>
              </a>
              <hr class="dropdown-divider" />
              <a href="#" class="dropdown-item">
                <div class="d-flex align-items-center">
                  <img class="rounded-circle" src="/HMS/assets/img/user.png" alt=""
                    style="width: 40px; height: 40px" />
                  <div class="ms-2">
                    <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                    <small>15 minutes ago</small>
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
                <small>15 minutes ago</small>
              </a>
              <hr class="dropdown-divider" />
              <a href="#" class="dropdown-item">
                <h6 class="fw-normal mb-0">New user added</h6>
                <small>15 minutes ago</small>
              </a>
              <hr class="dropdown-divider" />
              <a href="#" class="dropdown-item">
                <h6 class="fw-normal mb-0">Password changed</h6>
                <small>15 minutes ago</small>
              </a>
            </div>
          </div>
          <div class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
              <img class="rounded-circle me-lg-2" src="/HMS/assets/img/user.png" alt=""
                style="width: 40px; height: 40px" />
              <span class="d-none d-lg-inline-flex">Shadab</span>
            </a>
            <div
              class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
              <a href="#" class="dropdown-item">My Profile</a>
              <a href="/HMS/index.jsp" class="dropdown-item">Log Out</a>
            </div>
          </div>
        </div>
      </nav>
      <!-- Navbar End -->

      <div class="container-fluid pt-4 px-4">
        <div class="row g-4">
          <div class="col-sm-6 col-xl-3">
            <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
              <i class="fa-solid fa-user-doctor fa-3x text-primary"></i>
              <div class="ms-3">
                <p class="mb-2">Total Doctors</p>
                <h6 class="mb-0">85</h6>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-xl-3">
            <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
              <i class="fa-solid fa-bed-pulse fa-3x text-primary"></i>
              <div class="ms-3">
                <p class="mb-2">Total Patients</p>
                <h6 class="mb-0">954</h6>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-xl-3">
            <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
              <i class="fa-solid fa-bed fa-3x text-primary"></i>
              <div class="ms-3">
                <p class="mb-2">Total Beds</p>
                <h6 class="mb-0">1000</h6>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-xl-3">
            <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
              <i class="fa-solid fa-clock-rotate-left fa-3x text-primary"></i>
              <div class="ms-3">
                <p class="mb-2">Last Maintenance</p>
                <h6 class="mb-0">6 Months ago</h6>
              </div>
            </div>
          </div>
        </div>
      </div>


    <!-- Content End -->

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
        class="bi bi-arrow-up"></i></a>
  </div>

  <!-- JavaScript Libraries -->
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="/HMS/Admin-Panel/lib/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
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