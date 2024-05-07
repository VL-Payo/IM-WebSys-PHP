<head> 
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="header.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>

    <!--NAVBAR-->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <div id="main">
            <button class="openbtn" onclick="openNav()">&#9776; </button>
        </div>
        </li>
        <div class="nav-box">
        <img src="../image/logo.png" class="logo" alt="logo" width="85" height="85">
        <li class="nav-item d-none d-sm-inline-block">
            <a href="index3.html" class="nav-link" onclick="openNav()">Home</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
            <a href="./login.php" class="nav-link" onclick="openNav()">Logout</a>
        </li>
    </div>
    </ul>

 
  </nav>
    
    <!--SIDEBAR-->
    <div id="mySidebar" class="sidebar">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <!--STUDENT-->
        <button class="dropdown-side-link">Student
            <i class="fa fa-caret-down" aria-hidden="true"></i>
        </button>
            <div class="side-drop-container">
                <a href="#" class="side-link">View Student</a>
                <a href="#" class="side-link">Add Student</a>
                <a href="#" class="side-link">Edit Student</a>
                <a href="#" class="side-link">Remove Student</a>
            </div>
        <!--TEACHER-->
        <button class="dropdown-side-link" >Teacher
            <i class="fa fa-caret-down" aria-hidden="true"></i>
        </button>
            <div class="side-drop-container">
                <a href="#" class="side-link">View Teacher</a>
                <a href="#" class="side-link">Add Teacher</a>
                <a href="#" class="side-link">Edit Teacher</a>
                <a href="#" class="side-link">Remove Teacher</a>
            </div>
        <!--SUBJECTS-->
        <button class="dropdown-side-link">Teacher
            <i class="fa fa-caret-down" aria-hidden="true"></i>
        </button>
            <div class="side-drop-container">
                <a href="#" class="side-link">View Subjects</a>
                <a href="#" class="side-link">Add Subjects</a>
                <a href="#" class="side-link">Edit Subjects</a>
                <a href="#" class="side-link">Remove Subjects</a>
            </div>
    </div>

<script>
function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft = "0";
}

/* For the dropdown links*/
var dropdown = document.getElementsByClassName("dropdown-side-link");
var i;
for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });
}
</script>
</div>

