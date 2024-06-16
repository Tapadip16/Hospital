<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
  <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Make an Appointment</title>

    <!-- Favicons -->
    <link href="/HMS/assets/img/favicon.png" rel="icon" />

    <link rel="stylesheet" href="appointment.css"/>
    <link
      href="/maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
      rel="stylesheet"
      id="bootstrap-css"
    />

    <!-- Favicons -->
  <link href="/HMS/assets/img/favicon.png" rel="icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/HMS/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="/HMS/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="/HMS/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/HMS/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/HMS/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/HMS/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/HMS/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/HMS/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="style2.css" rel="stylesheet">

  </head>
  <body>
	  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">Lifeline@gmail.com</a>
        <i class="bi bi-phone"></i> 7074433909
      </div>
      <div class="d-none d-lg-flex social-links align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="/HMS/index.jsp">Lifeline</a></h1>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="/HMS/index.jsp">Home</a></li>
          <li><a class="nav-link scrollto" href="/HMS/index.jsp#about">About</a></li>
          <li><a class="nav-link scrollto" href="/HMS/index.jsp#services">Services</a></li>
          <li><a class="nav-link scrollto" href="/HMS/index.jsp#departments">Departments</a></li>
          <li><a class="nav-link scrollto" href="/HMS/index.jsp#doctors">Doctors</a></li>
          <li><a class="nav-link scrollto" href="/HMS/index.jsp#contact">Contact</a></li>
          <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 2</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
            </ul>
          </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="/HMS/forms/appointment.jsp" target="_blank" class="appointment-btn scrollto"><span class="d-none d-md-inline">Make an</span> Appointment</a>

      <a style="margin-left: 1rem;" href="/HMS/forms/login.jsp"><i class="bi bi-person-circle"></i></a>

    </div>
  </header>
  <!-- End Header -->

    <section id="appointment" class="appointment section-bg">
      <div class="container">
        <div class="logo text-center">
          <img class="logo-img" src="/HMS/assets/img/appointment.svg" alt="" />
        </div>
        <div class="section-title text-center pt-2">
          <h2>Make an Appointment</h2>
        </div>

        <form action="" method="post" role="form" class="email-form">
          <div class="row">
            <div class="col-md-4 form-group">
              <input
                type="text"
                name="name"
                class="form-control"
                id="name"
                placeholder="Your Name"
                data-rule="minlen:4"
                data-msg="Please enter at least 4 chars"
              />
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3 mt-md-0">
              <input
                type="email"
                class="form-control"
                name="email"
                id="email"
                placeholder="Your Email"
                data-rule="email"
                data-msg="Please enter a valid email"
              />
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3 mt-md-0">
              <input
                type="tel"
                class="form-control"
                name="phone"
                id="phone"
                placeholder="Your Phone"
                data-rule="minlen:4"
                data-msg="Please enter at least 4 chars"
              />
              <div class="validate"></div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 form-group mt-3">
              <input
                type="datetime"
                name="date"
                class="form-control datepicker"
                id="date"
                placeholder="Appointment Date"
                data-rule="minlen:4"
                data-msg="Please enter at least 4 chars"
              />
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
              <select name="doctor" id="doctor" class="form-select w-100">
                <option value="">Select Doctor</option>
                <option value="Doctor 1">Doctor 1</option>
                <option value="Doctor 2">Doctor 2</option>
                <option value="Doctor 3">Doctor 3</option>
              </select>
              <div class="validate"></div>
            </div>
            <div class="col-md-4 form-group mt-3">
              <select name="department" id="department" class="form-select w-100">
                <option value="">Select Department</option>
                <option value="Department 1">Department 1</option>
                <option value="Department 2">Department 2</option>
                <option value="Department 3">Department 3</option>
              </select>
              <div class="validate"></div>
            </div>
          </div>
          <div class="form-group mt-3">
            <textarea
              class="form-control"
              name="message"
              rows="5"
              placeholder="Message (Optional)"
            ></textarea>
            <div class="validate"></div>
          </div>
          <div class="text-center">
            <button type="submit" class="appointment-btn mt-3">Make an Appointment</button>
          </div>
        </form>
      </div>
    </section>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  </body>
</html>
