/HMS/Doctor-Panel/<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Lifeline-Dashboard</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicon -->
  <link href="/HMS/assets/img/favicon.png" rel="icon">

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
    rel="stylesheet">

  <!-- Icon Font Stylesheet -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
    rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
    rel="stylesheet">

  <!-- Libraries Stylesheet -->
  <link href="/HMS/Doctor-Panel/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="/HMS/Doctor-Panel/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

  <!-- Customized Bootstrap Stylesheet -->
  <link href="/HMS/Doctor-Panel/css/bootstrap.min.css" rel="stylesheet">

  <!-- Template Stylesheet -->
  <link href="/HMS/Doctor-Panel/css/style.css" rel="stylesheet">
  <style>
    th,
    td {
      text-align: center;
    }

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: "Inter", Arial, Helvetica, sans-serif;
    }

    .formbold-mb-5 {
      margin-bottom: 20px;
    }

    .formbold-pt-3 {
      padding-top: 12px;
    }

    .formbold-main-wrapper {
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 48px;
    }

    .formbold-form-wrapper {
      margin: 0 auto;
      max-width: 550px;
      width: 100%;
      background: white;
    }

    .formbold-form-label {
      display: block;
      font-weight: 500;
      font-size: 16px;
      color: #07074d;
      margin-bottom: 12px;
    }

    .formbold-form-label-2 {
      font-weight: 600;
      font-size: 20px;
      margin-bottom: 20px;
    }

    .formbold-form-input {
      width: 100%;
      padding: 12px 24px;
      border-radius: 6px;
      border: 1px solid #e0e0e0;
      background: white;
      font-weight: 500;
      font-size: 16px;
      color: #6b7280;
      outline: none;
      resize: none;
    }

    .formbold-form-input:focus {
      border-color: #6a64f1;
      box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
    }

    .formbold-btn {
      text-align: center;
      font-size: 16px;
      border-radius: 6px;
      padding: 14px 32px;
      border: none;
      font-weight: 600;
      background-color: #6a64f1;
      color: white;
      width: 100%;
      cursor: pointer;
    }

    .formbold-btn:hover {
      box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
    }

    .formbold--mx-3 {
      margin-left: -12px;
      margin-right: -12px;
    }

    .formbold-px-3 {
      padding-left: 12px;
      padding-right: 12px;
    }

    .flex {
      display: flex;
    }

    .flex-wrap {
      flex-wrap: wrap;
    }

    .w-full {
      width: 100%;
    }

    @media (min-width: 540px) {
      .sm\:w-half {
        width: 50%;
      }
    }
  </style>

</head>

<body>
  <div class="container-fluid position-relative d-flex p-0 ">
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
        <a href="index.html" class="navbar-brand mx-4 mb-3">
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
            <h6 class="mb-0"><%= session.getAttribute("userName")%></h6>
            <span>Doctor</span>
          </div>
        </div>
        <div class="navbar-nav w-100">
          <a href="/HMS/Doctor-Panel/index.jsp" class="nav-item nav-link "><i
              class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
          <a href="/HMS/Doctor-Panel/dr_schedule.jsp" class="nav-item nav-link "><i
              class="fa fa-tachometer-alt me-2"></i>Doctor Schedule</a>
          <a href="/HMS/Doctor-Panel/med_history.jsp" class="nav-item nav-link"><i
              class="fa fa-tachometer-alt me-2"></i>Medical History</a>
          <a href="/HMS/Doctor-Panel/updt-appoinmnt.jsp" class="nav-item nav-link "><i
              class="fa fa-tachometer-alt me-2"></i>Appointments</a>
          <div class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i
                class="far fa-file-alt me-2"></i>Settings</a>
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
        <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
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
              <hr class="dropdown-divider">
              <a href="#" class="dropdown-item text-center">See all message</a>
            </div>
          </div>
          <div class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
              <i class="fa fa-bell me-lg-2"></i>
              <span class="d-none d-lg-inline-flex">Notificatin</span>
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
              <hr class="dropdown-divider">
              <a href="#" class="dropdown-item text-center">See all notifications</a>
            </div>
          </div>
          <div class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
              <img class="rounded-circle me-lg-2" src="/HMS/assets/img/user.png" alt=""
                style="width: 40px; height: 40px;">
              <span class="d-none d-lg-inline-flex"><%= session.getAttribute("userName")%></span>
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


      <!-- Form Start -->
      <div class="container-fluid pt-4 px-4">
        <div class="formbold-main-wrapper">
          <!-- Author: FormBold Team -->
          <div class="formbold-form-wrapper">
            <form action="https://formbold.com/s/FORM_ID" method="POST">
              <div class="formbold-mb-5">
                <label for="name" class="formbold-form-label"> Full Name </label>
                <input type="text" name="name" id="name" placeholder="Full Name"
                  class="formbold-form-input" />
              </div>
              <div class="formbold-mb-5">
                <label for="phone" class="formbold-form-label"> Phone Number </label>
                <input type="text" name="phone" id="phone" placeholder="Enter your phone number"
                  class="formbold-form-input" />
              </div>
              <div class="formbold-mb-5">
                <label for="email" class="formbold-form-label"> Email Address </label>
                <input type="email" name="email" id="email" placeholder="Enter your email"
                  class="formbold-form-input" />
              </div>
              <div class="flex flex-wrap formbold--mx-3">
                <div class="w-full sm:w-half formbold-px-3">
                  <div class="formbold-mb-5 w-full">
                    <label for="date" class="formbold-form-label"> Date </label>
                    <input type="date" name="date" id="date" class="formbold-form-input" />
                  </div>
                </div>
                <div class="w-full sm:w-half formbold-px-3">
                  <div class="formbold-mb-5">
                    <label for="time" class="formbold-form-label"> Time </label>
                    <input type="time" name="time" id="time" class="formbold-form-input" />
                  </div>
                </div>
              </div>

              <div class="formbold-mb-5 formbold-pt-3">
                <label class="formbold-form-label formbold-form-label-2">
                  Address Details
                </label>
                <div class="flex flex-wrap formbold--mx-3">
                  <div class="w-full sm:w-half formbold-px-3">
                    <div class="formbold-mb-5">
                      <input type="text" name="area" id="area" placeholder="Enter area"
                        class="formbold-form-input" />
                    </div>
                  </div>
                  <div class="w-full sm:w-half formbold-px-3">
                    <div class="formbold-mb-5">
                      <input type="text" name="city" id="city" placeholder="Enter city"
                        class="formbold-form-input" />
                    </div>
                  </div>
                  <div class="w-full sm:w-half formbold-px-3">
                    <div class="formbold-mb-5">
                      <input type="text" name="state" id="state" placeholder="Enter state"
                        class="formbold-form-input" />
                    </div>
                  </div>
                  <div class="w-full sm:w-half formbold-px-3">
                    <div class="formbold-mb-5">
                      <input type="text" name="post-code" id="post-code" placeholder="Post Code"
                        class="formbold-form-input" />
                    </div>
                  </div>
                </div>
              </div>

              <div>
                <button class="formbold-btn">Book Appointment</button>
              </div>
            </form>
          </div>
        </div>

      </div>
      <!-- Form End -->


      <!-- Back to Top -->
      <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
          class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/HMS/Doctor-Panel/lib/chart/chart.min.js"></script>
    <script src="/HMS/Doctor-Panel/lib/easing/easing.min.js"></script>
    <script src="/HMS/Doctor-Panel/lib/waypoints/waypoints.min.js"></script>
    <script src="/HMS/Doctor-Panel/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="/HMS/Doctor-Panel/lib/tempusdominus/js/moment.min.js"></script>
    <script src="/HMS/Doctor-Panel/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="/HMS/Doctor-Panel/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="/HMS/Doctor-Panel/js/main.js"></script>
</body>

</html>