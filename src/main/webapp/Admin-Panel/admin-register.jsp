<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
    .panel {
      display: grid;
      place-content: center;
      margin-top: 10%;

      .form {
        width: 800px;
        height: 450px;
        border-radius: 12px;

        .form-body {
          .row {
            padding: 20px 20px 20px 20px;

            .reg-dtls {
              width: 400px;
              height: 300px;
              display: grid;
              place-items: center;
              margin-top: 40px;

              .label {
                margin-left: 16px;
              }

              .input {
                width: 350px;
                height: 45px;
                padding-left: 16px;
                background: transparent;
                border: 2px solid #1977cc;
                border-radius: 36px;
                color: #1977cc;
              }

              .password-input-container {
                position: relative;
              }

              .password-toggle-button {
                position: absolute;
                top: 50%;
                right: 16px;
                transform: translateY(-50%);
                background: none;
                border: none;
                cursor: pointer;
                padding: 0;
                font-size: 20px;
                color: #1977cc;
              }

              .sbmt-btn {
                cursor: pointer;
                padding: 10px 24px;
                font-size: 18px;
                color: #1977cc;
                border: 2px solid #1977cc;
                border-radius: 36px;
                background-color: transparent;
                font-weight: 600;
                transition: all 0.3s cubic-bezier(0.23, 1, 0.320, 1);
                overflow: hidden;

                &::before {
                  content: '';
                  position: absolute;
                  inset: 0;
                  margin: auto;
                  width: 40px;
                  height: 40px;
                  border-radius: inherit;
                  scale: 0;
                  z-index: -1;
                  background-color: #1977cc;
                  transition: all 0.6s cubic-bezier(0.23, 1, 0.320, 1);
                }

                &:hover::before {
                  scale: 3;
                }

                &:hover {
                  color: #212121;
                  scale: 1.1;
                  box-shadow: 0 0px 20px rgba(25, 119, 104, 0.4);
                }

                &:active {
                  scale: 1;
                }
              }

            }

            .side-img {
              .img {
                width: 350px;
                height: 350px;
              }
            }
          }
        }
      }
    }
  </style>

</head>

<body>
  <div class="container-fluid position-relative d-flex p-0">
    <!-- Spinner Start -->
    <div id="spinner"
      class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
      <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>
    <!-- Spinner End -->


    <!-- Sidebar Start -->
    <div class="sidebar pe-4 pb-3">
      <nav class="navbar bg-secondary navbar-dark">
        <a href="/HMS/Admin-Panel/index.jsp" class="navbar-brand mx-4 mb-3">
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
            <a href="/HMS/Admin-Panel/dr_registration.jsp" class="nav-item nav-link  active dropdown-toggle"
              data-bs-toggle="dropdown"><i class="bi bi-person-fill-add me-2"></i>Registrations</a>
            <div class="dropdown-menu bg-transparent border-0">
              <a href="/HMS/Admin-Panel/dr_registration.jsp" class="dropdown-item">Dr Register</a>
              <a href="/HMS/Admin-Panel/admin-register.jsp" class="dropdown-item active">Admin Register</a>
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
                  <img class="rounded-circle" src="/HMS/assets/img/user.png" alt=""
                    style="width: 40px; height: 40px;">
                  <div class="ms-2">
                    <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                    <small>15 minutes ago</small>
                  </div>
                </div>
              </a>
              <hr class="dropdown-divider">
              <a href="#" class="dropdown-item">
                <div class="d-flex align-items-center">
                  <img class="rounded-circle" src="/HMS/assets/img/user.png" alt=""
                    style="width: 40px; height: 40px;">
                  <div class="ms-2">
                    <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                    <small>15 minutes ago</small>
                  </div>
                </div>
              </a>
              <hr class="dropdown-divider">
              <a href="#" class="dropdown-item">
                <div class="d-flex align-items-center">
                  <img class="rounded-circle" src="/HMS/assets/img/user.png" alt=""
                    style="width: 40px; height: 40px;">
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
              <hr class="dropdown-divider">
              <a href="#" class="dropdown-item">
                <h6 class="fw-normal mb-0">New user added</h6>
                <small>15 minutes ago</small>
              </a>
              <hr class="dropdown-divider">
              <a href="#" class="dropdown-item">
                <h6 class="fw-normal mb-0">Password changed</h6>
                <small>15 minutes ago</small>
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


      <!-- Panel Start -->
      <div class="panel container-fluid container">
        <div class="form bg-secondary">
          <form action="/HMS/admin_reg" class="form-body" id="admin" method="post">
            <div class="row">
              <h2 class="text-center text-primary mt-2">New Admin</h2>
              <div class="reg-dtls col-md-3">
                <div class="userName">
                  <label for="username" class="label">User Name</label>
                  <div class="userName-input-container">
                    <input type="text" class="input" id="username" name="user_admin" required>
                  </div>
                </div>
                <div class="password">
                  <label for="password" class="label">Password</label>
                  <div class="password-input-container">
                    <input type="password" class="input" id="password" name="pass_admin" required>
                    <button id="showPassword" class="password-toggle-button" type="button">
                      <i class="bi bi-eye"></i>
                    </button>
                    <button id="hidePassword" class="password-toggle-button" style="display:none;"
                      type="button">
                      <i class="bi bi-eye-slash"></i>
                    </button>
                  </div>
                </div>
                <button type="submit" class="sbmt-btn me-2">Register</button>
              </div>
              <div class="side-img col-md-3">
                <img src="img/admin.svg" alt="" class="img">
              </div>
            </div>
          </form>
        </div>
      </div>
      <!-- Panel End -->

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

    <!-- Template Javascript -->
    <script src="js/main.js"></script>

    <script>
      // Password View Function
      const showPasswordButton = document.getElementById("showPassword");
      const hidePasswordButton = document.getElementById("hidePassword");
      const passwordInput = document.getElementById("password");

      showPasswordButton.addEventListener("click", function (event) {
        event.preventDefault(); // Prevent the default behavior of the button
        passwordInput.type = "text";
        showPasswordButton.style.display = "none";
        hidePasswordButton.style.display = "block";
      });

      hidePasswordButton.addEventListener("click", function (event) {
        event.preventDefault(); // Prevent the default behavior of the button
        passwordInput.type = "password";
        hidePasswordButton.style.display = "none";
        showPasswordButton.style.display = "block";
      });
      
      
    </script>

</body>

</html>