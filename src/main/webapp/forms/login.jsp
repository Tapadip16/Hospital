<html>
  <head>
    <title>Register/Login - Lifeline</title>
	<link href="/HMS/assets/img/favicon.png" rel="icon">
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />
    <link rel="stylesheet" type="text/css" href="/HMS/forms/login.css" />
    <link rel="stylesheet" type="text/css" href="/HMS/forms/style2.css" />
    <link
      href="https://fonts.googleapis.com/css?family=IBM+Plex+Sans&display=swap"
      rel="stylesheet"
    />

    <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />

    <link rel="stylesheet" href="assets/vendor/fontawesome-free/css/fontawesome.min.css" />
    <link
      href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
      rel="stylesheet"
      id="bootstrap-css"
    />

    <style>
      .form-control {
        border-radius: 0.75rem;
      }
    </style>

    <script>
      var check = function () {
        if (
          document.getElementById("password").value == document.getElementById("cpassword").value
        ) {
          document.getElementById("message").style.color = "#5dd05d";
          document.getElementById("message").innerHTML = "Matched";
        } else {
          document.getElementById("message").style.color = "#f55252";
          document.getElementById("message").innerHTML = "Not Matching";
        }
      };

      function alphaOnly(event) {
        var key = event.keyCode;
        return (key >= 65 && key <= 90) || key == 8 || key == 32;
      }

      function checklen() {
        var pass1 = document.getElementById("password");
        if (pass1.value.length < 6) {
          alert("Password must be at least 6 characters long. Try again!");
          return false;
        }
      }
      <% if ("failed".equals(request.getAttribute("status"))) { %>
      alert("Login failed. Please check your credentials.");
  	  <% } %>
    </script>
  </head>

  <!------ Include the above in your HEAD tag ---------->
  <body>
  <!-- ======= Top Bar ======= -->
  	<!-- ======= Top Bar ======= -->
	<div id="topbar" class="d-flex align-items-center fixed-top">
		<div class="container d-flex justify-content-between">
			<div class="contact-info d-flex align-items-center">
				<i class="bi bi-envelope"></i> <a
					href="mailto:contact@example.com">Lifeline@gmail.com</a>
				<i class="bi bi-phone"></i> 7074433909
			</div>
			<div class="d-none d-lg-flex social-links align-items-center">
				<a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
				<a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
				<a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
				<a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
			</div>
		</div>
	</div>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top">
		<div class="container d-flex align-items-center">

			<h1 class="logo me-auto"><a href="/HMS/index.jsp">Lifeline</a></h1>

			<nav id="navbar" class="navbar order-last order-lg-0">
				<ul>
					<li><a class="nav-link scrollto"
							href="/HMS/index.jsp#hero">Home</a></li>
					<li><a class="nav-link scrollto" href="/HMS/index.jsp#about">About</a>
					</li>
					<li><a class="nav-link scrollto "
							href="/HMS/index.jsp#services">Services</a></li>
					<li><a class="nav-link scrollto" href="/HMS/index.jsp#departments">Departments</a></li>
					<li><a class="nav-link scrollto" href="/HMS/index.jsp#doctors">Doctors</a>
					</li>
					<li><a class="nav-link scrollto" href="/HMS/index.jsp#contact">Contact</a>
					</li>
					
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav><!-- .navbar -->

			<a href="/HMS/forms/login.jsp" target="_blank"
				class="appointment-btn scrollto"><span
					class="d-none d-md-inline">Make an</span> Appointment</a>

			<a style="margin-left: 1rem;" href="/HMS/forms/login.jsp"><i
					class="bi bi-person-circle"></i></a>

		</div>
	</header>
	<!-- End Header -->
    <!-- End Header -->

    <div class="container register" style="font-family: 'IBM Plex Sans', sans-serif">
      <div class="row">
        <div class="col-md-3 register-left" style="margin-top: 10%; right: 5%;">
          <img src="/HMS/assets/img/doct_tmp.jpg" alt=""/>
          <h3>Welcome Everyone</h3>
        </div>
        <div class="col-md-9 register-right" style="margin-top: 40px; left: 80px">
          <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist" style="width: 40%">
            <li class="nav-item">
              <a
                class="nav-link active"
                id="home-tab"
                data-toggle="tab"
                href="#home"
                role="tab"
                aria-controls="home"
                aria-selected="true"
                >Patient</a
              >
            </li>
            <li class="nav-item">
              <a
                class="nav-link"
                id="profile-tab"
                data-toggle="tab"
                href="#profile"
                role="tab"
                aria-controls="profile"
                aria-selected="false"
                >Doctor</a
              >
            </li>
            <li class="nav-item">
              <a
                class="nav-link"
                id="profile-tab"
                data-toggle="tab"
                href="#admin"
                role="tab"
                aria-controls="admin"
                aria-selected="false"
                >Admin</a
              >
            </li>
          </ul>
          <div class="tab-content" id="myTabContent">
            <div
              class="tab-pane fade show active"
              id="home"
              role="tabpanel"
              aria-labelledby="home-tab"
            >
              <h3 class="register-heading">Register as Patient</h3>
              <form method="post" action="/HMS/registration">
                <div class="row register-form">
                  <div class="col-md-6">
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        placeholder="First Name *"
                        name="fname"
                        onkeydown="return alphaOnly(event);"
                        required
                      />
                    </div>
                    <div class="form-group">
                      <input
                        type="email"
                        class="form-control"
                        placeholder="Your Email *"
                        name="email"
                      />
                    </div>
                    <div class="form-group">
                      <input
                        type="password"
                        class="form-control"
                        placeholder="Password *"
                        id="password"
                        name="password"
                        onkeyup="check();"
                        required
                      />
                    </div>

                    <div class="form-group">
                      <div class="maxl">
                        <label class="radio inline">
                          <input type="radio" name="gender" value="Male" checked />
                          <span> Male </span>
                        </label>
                        <label class="radio inline">
                          <input type="radio" name="gender" value="Female" />
                          <span>Female </span>
                        </label>
                      </div>
                       <a class="nav-link"
                         id="profile-tab"
                         data-toggle="tab"
                         href="#login"
                         role="tab"
                         aria-controls="login"
                         aria-selected="false"
                         >Already have an account?</a>
                  </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        placeholder="Last Name *"
                        name="lname"
                        onkeydown="return alphaOnly(event);"
                        required
                      />
                    </div>

                    <div class="form-group">
                      <input
                        type="tel"
                        minlength="10"
                        maxlength="10"
                        name="contact"
                        class="form-control"
                        placeholder="Your Phone *"
                      />
                    </div>
                    <div class="form-group">
                      <input
                        type="password"
                        class="form-control"
                        id="cpassword"
                        placeholder="Confirm Password *"
                        name="cpassword"
                        onkeyup="check();"
                        required
                      /><span id="message"></span>
                    </div>
                    <input
                      type="submit"
                      class="btnRegister"
                      name="patsub1"
                      onclick="return checklen();"
                      value="Register"
                    />
                  </div>
                </div>
              </form>
            </div>

            <div
              class="tab-pane fade show"
              id="profile"
              role="tabpanel"
              aria-labelledby="profile-tab"
            >
              <h3 class="register-heading">Login as Doctor</h3>
              <form method="post" action="/HMS/doctor_login">
                <div class="row register-form">
                  <div class="col-md-6">
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        placeholder="User Name *"
                        name="dname"
                        onkeydown="return alphaOnly(event);"
                        required
                      />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input
                        type="password"
                        class="form-control"
                        placeholder="Password *"
                        name="dpass"
                        required
                      />
                    </div>

                    <input type="submit" class="btnRegister" name="docsub1" value="Login" />
                  </div>
                </div>
              </form>
            </div>
            
            <div
              class="tab-pane fade show"
              id="login"
              role="tabpanel"
              aria-labelledby="profile-tab"
            >
              <h3 class="register-heading">Login as Patient</h3>
              <form method="post" action="/HMS/Login">
                <div class="row register-form">
                  <div class="col-md-6">
                    <div class="form-group">
                      <input
                        type="tel"
                        minlength="10"
                        maxlength="10"
                        name="cont"
                        id="cont"
                        class="form-control"
                        placeholder="Your Phone *"
                      />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input
                        type="password"
                        class="form-control"
                        placeholder="Password *"
                        name="password3"
                        id="assword3"
                        required
                      />
                    </div>

                    <input type="submit" class="btnRegister" name="docsub1" value="Login" />
                  </div>
                </div>
               
              </form>
            </div>

            <div
              class="tab-pane fade show"
              id="admin"
              role="tabpanel"
              aria-labelledby="profile-tab"
            >
              <h3 class="register-heading">Login as Admin</h3>
              <form method="post" action="/HMS/admin_login">
                <div class="row register-form">
                  <div class="col-md-6">
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        placeholder="User Name *"
                        name="user_admin"
                        onkeydown="return alphaOnly(event);"
                        required
                      />
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <input
                        type="password"
                        class="form-control"
                        placeholder="Password *"
                        name="pass_admin"
                        required
                      />
                    </div>

                    <input type="submit" class="btnRegister" name="adsub" value="Login" />
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>

  <script
    src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
crossorigin="anonymous"
  ></script>
  <script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
crossorigin="anonymous"
  ></script>
  <script
    src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
crossorigin="anonymous"
  ></script>

  <script
    src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
crossorigin="anonymous"
  ></script>
</html>
