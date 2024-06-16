<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>Lifeline-Dashboard</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />
	<link href="assets/img/favicon.png" rel="icon">
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
      rel="stylesheet"
    />

    <!-- Icon Font Stylesheet -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
      rel="stylesheet"
    />

    <!-- Libraries Stylesheet -->
    <link href="/HMS/Dashbord/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="/HMS/Dashbord/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/HMS/Dashbord/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="/HMS/Dashbord/css/style.css" rel="stylesheet" />
  </head>

  <body>
    <div class="container-fluid position-relative d-flex p-0">
      <!-- Spinner Start -->
      <div
        id="spinner"
        class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
      >
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
              <img
                class="rounded-circle"
                src="/HMS/assets/img/user.png"
                alt=""
                style="width: 40px; height: 40px"
              />
              <div
                class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"
              ></div>
            </div>
            <div class="ms-3">
              <h6 class="mb-0"><%= session.getAttribute("userName")%></h6>
              <span>Patient</span>
            </div>
          </div>
          <div class="navbar-nav w-100">
            <a href="/HMS/Dashbord/index.jsp" class="nav-item nav-link active"
              ><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a
            >
            <a href="/HMS/Dashbord/dr_schedule.jsp" class="nav-item nav-link"
              ><i class="fa fa-tachometer-alt me-2"></i>Doctor Schedule</a
            >
            <a href="/HMS/Dashbord/med_history.jsp" class="nav-item nav-link"
              ><i class="fa fa-tachometer-alt me-2"></i>Medical History</a
            >
         
            <div class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
                ><i class="far fa-file-alt me-2"></i>Appointments</a
              >
              <div class="dropdown-menu bg-transparent border-0">
                <a href="/HMS/Dashbord/apnt_form.jsp" class="dropdown-item">Add Appointments</a>
                <a href="/HMS/Dashbord/updt-appoinmnt.jsp" class="dropdown-item">Update Appointments</a>
              </div>
            </div>
            <div class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
                ><i class="far fa-file-alt me-2"></i>Settings</a
              >
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
                class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0"
              >
                <a href="#" class="dropdown-item">
                  <div class="d-flex align-items-center">
                    <img
                      class="rounded-circle"
                      src="/HMS/assets/img/user.png"
                      alt=""
                      style="width: 40px; height: 40px"
                    />
                    <div class="ms-2">
                      <h6 class="fw-normal mb-0">Shadab send you a message</h6>
                      <small>15 minutes ago</small>
                    </div>
                  </div>
                </a>
                <hr class="dropdown-divider" />
                <a href="#" class="dropdown-item">
                  <div class="d-flex align-items-center">
                    <img
                      class="rounded-circle"
                      src="/HMS/assets/img/user.png"
                      alt=""
                      style="width: 40px; height: 40px"
                    />
                    <div class="ms-2">
                      <h6 class="fw-normal mb-0">Bilal send you a message</h6>
                      <small>15 minutes ago</small>
                    </div>
                  </div>
                </a>
                <hr class="dropdown-divider" />
                <a href="#" class="dropdown-item">
                  <div class="d-flex align-items-center">
                    <img
                      class="rounded-circle"
                      src="/HMS/assets/img/user.png"
                      alt=""
                      style="width: 40px; height: 40px"
                    />
                    <div class="ms-2">
                      <h6 class="fw-normal mb-0">Rukhsar send you a message</h6>
                      <small>15 minutes ago</small>
                    </div>
                  </div>
                </a>
                <hr class="dropdown-divider" />
                <a href="#" class="dropdown-item text-center">See all message</a>
              </div>
            </div>
            <div class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                <i class="fa fa-bell me-lg-2"></i>
                <span class="d-none d-lg-inline-flex">Notifications</span>
              </a>
              <div
                class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0"
              >
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
                <hr class="dropdown-divider" />
                <a href="#" class="dropdown-item text-center">See all notifications</a>
              </div>
            </div>
            <div class="nav-item dropdown">
              <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                <img
                  class="rounded-circle me-lg-2"
                  src="/HMS/assets/img/user.png"
                  alt=""
                  style="width: 40px; height: 40px"
                />
                <span class="d-none d-lg-inline-flex"><%= session.getAttribute("userName")%></span>
              </a>
              <div
                class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0"
              >
                <a href="#" class="dropdown-item">My Profile</a>
                <a href="#" class="dropdown-item">Settings</a>
                <a href="/HMS/index.jsp" class="dropdown-item">Log Out</a>
              </div>
            </div>
          </div>
        </nav>
        <!-- Navbar End -->

        <!-- Sale & Revenue Start -->
      <div class="container-fluid pt-4 px-4">
        <div class="row g-4">
            <div class="col-sm-6 col-xl-3">
                <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                    <i class="bi bi-people-fill fa-2x text-primary"></i>
                    <div class="ms-3">
                        <p class="mb-2">Total Staffs</p>
                        <h6 class="mb-0">295</h6>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                    <i class="fa fa-users fa-2x text-primary"></i>
                    <div class="ms-3">
                        <p class="mb-2">Total Branch</p>
                        <h6 class="mb-0">20</h6>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                    <i class="bi bi-house-door-fill fa-2x text-primary"></i>
                    <div class="ms-3">
                        <p class="mb-2">Total Rooms</p>
                        <h6 class="mb-0">256</h6>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                    <i class="fa fa-bed fa-2x text-primary"></i>
                    <div class="ms-3">
                        <p class="mb-2">Total Patients</p>
                        <h6 class="mb-0">434</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <div class="container-fluid pt-4 px-4">
          <div class="row g-4">
            <div class="col-sm-12 col-md-6 col-xl-4">
              <div class="h-100 bg-secondary rounded p-4">
                <div class="d-flex align-items-center justify-content-between mb-2">
                  <h6 class="mb-0">Messages</h6>
                  <a href="">Show All</a>
                </div>
                <div class="d-flex align-items-center border-bottom py-3">
                  <img
                    class="rounded-circle flex-shrink-0"
                    src="/HMS/assets/img/user.png"
                    alt=""
                    style="width: 40px; height: 40px"
                  />
                  <div class="w-100 ms-3">
                    <div class="d-flex w-100 justify-content-between">
                      <h6 class="mb-0">Dr. Shadab</h6>
                      <small>15 minutes ago</small>
                    </div>
                    <span>I recommend Ibuprofen 200mg..</span>
                  </div>
                </div>
                <div class="d-flex align-items-center border-bottom py-3">
                  <img
                    class="rounded-circle flex-shrink-0"
                    src="/HMS/assets/img/user.png"
                    alt=""
                    style="width: 40px; height: 40px"
                  />
                  <div class="w-100 ms-3">
                    <div class="d-flex w-100 justify-content-between">
                      <h6 class="mb-0">Dr. Hansh</h6>
                      <small>15 minutes ago</small>
                    </div>
                    <span>please take Amoxicillin 500mg..</span>
                  </div>
                </div>
                <div class="d-flex align-items-center border-bottom py-3">
                  <img
                    class="rounded-circle flex-shrink-0"
                    src="/HMS/assets/img/user.png"
                    alt=""
                    style="width: 40px; height: 40px"
                  />
                  <div class="w-100 ms-3">
                    <div class="d-flex w-100 justify-content-between">
                      <h6 class="mb-0">Dr. Rahul</h6>
                      <small>15 minutes ago</small>
                    </div>
                    <span>use OTC saline nasal spray...</span>
                  </div>
                </div>
                <div class="d-flex align-items-center pt-3">
                  <img
                    class="rounded-circle flex-shrink-0"
                    src="/HMS/assets/img/user.png"
                    alt=""
                    style="width: 40px; height: 40px"
                  />
                  <div class="w-100 ms-3">
                    <div class="d-flex w-100 justify-content-between">
                      <h6 class="mb-0">Dr. Arjun</h6>
                      <small>15 minutes ago</small>
                    </div>
                    <span>please follow up in one week...</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-6 col-xl-4">
              <div class="h-100 bg-secondary rounded p-4">
                <div class="d-flex align-items-center justify-content-between mb-4">
                  <h6 class="mb-0">Calender</h6>
                  <a href="">Show All</a>
                </div>
                <div id="calender"></div>
              </div>
            </div>
            
              <div class="col-sm-12 col-md-6 col-xl-4">
    <div class="h-100 bg-secondary rounded p-4">
        <div class="d-flex align-items-center justify-content-between mb-4">
            <h6 class="mb-0">To Do List</h6>
            <a href="">Show All</a>
        </div>
        <div class="d-flex mb-2">
            <input class="form-control bg-transparent" type="text" id="task-input" placeholder="Enter task" />
            <button type="button" class="btn btn-primary ms-2" id="add-task">Add</button>
        </div>
        <div id="task-list">
            <!-- Tasks will be displayed here -->
        </div>
    </div>
</div>
</div>
</div>
              </div>
            </div>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/HMS/Dashbord/lib/chart/chart.min.js"></script>
    <script src="/HMS/Dashbord/lib/easing/easing.min.js"></script>
    <script src="/HMS/Dashbord/lib/waypoints/waypoints.min.js"></script>
    <script src="/HMS/Dashbord/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="/HMS/Dashbord/lib/tempusdominus/js/moment.min.js"></script>
    <script src="/HMS/Dashbord/lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="/HMS/Dashbord/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="/HMS/Dashbord/js/main.js"></script>
    <script>
    // Add a task when the "Add" button is clicked
    document.getElementById("add-task").addEventListener("click", function() {
        const taskInput = document.getElementById("task-input");
        const taskText = taskInput.value.trim();

        if (taskText !== "") {
            addTask(taskText);
            taskInput.value = "";
        }
    });

    // Handle the "Enter" key press in the input field
    document.getElementById("task-input").addEventListener("keyup", function(event) {
        if (event.key === "Enter") {
            document.getElementById("add-task").click();
        }
    });

    // Function to add a task
    function addTask(taskText) {
        const taskList = document.getElementById("task-list");
        const taskItem = document.createElement("div");
        taskItem.className = "d-flex align-items-center border-bottom py-2";
        taskItem.innerHTML = `
            <input class="form-check-input m-0" type="checkbox">
            <div class="w-100 ms-3">
                <div class="d-flex w-100 align-items-center justify-content-between">
                    <span>${taskText}</span>
                    <button class="btn btn-sm" onclick="deleteTask(this)"><i class="fa fa-times"></i></button>
                </div>
            </div>
        `;
        taskList.appendChild(taskItem);
    }

    // Function to delete a task
    function deleteTask(button) {
        const taskItem = button.closest(".d-flex");
        taskItem.remove();
    }
</script>
  </body>
</html>
