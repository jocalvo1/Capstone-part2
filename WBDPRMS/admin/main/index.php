<?php
session_start();
if (!isset($_SESSION['admin_username'])) {
  header("Location: ../index.php");
  exit();
}
require ('../../includes/admin/dashboardController.php');
?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>WBDPRMS - Home</title>
  <?php
  include '../../templates/links.php';
  ?>
</head>

<body>
  <div class="wrapper">
    <!-- SIDEBAR Start -->
    <?php
    include '../templates/sidebar.php';
    ?>
    <!-- SIDEBAR End -->
    <div class="main-panel">
      <!-- TOPNAV Start -->
      <?php
      include '../templates/topnav.php';
      ?>
      <!-- TOPNAV End -->
      <div class="content">
        <!-- Your content goes here -->
        <div class="row">
          <div class="col-md-3">
            <div class="card card-user">
              <div class="image">
                <img src="../../pictures/admin/users.jpg" alt="...">
              </div>
              <div class="card-body mb-">
                <p class="text-primary fs-2 text-center mt-4">
                  User Accounts
                </p>
                <p class="text-center mb-4 fs-2">
                  <?php echo $totalUsers; ?>
                </p>
                <hr>
                <div class="row">
                  <div class="col-lg-6 col-md-6 col-6 ml-auto mr-auto text-center">
                    <h5><?php echo $countPendingUsers ?></h5>
                    <a href="../../admin/accounts/userPending.php"><small>PENDING</small></a>
                  </div>
                  <div class="col-lg-6 col-md-6 col-6 ml-auto mr-auto text-center">
                    <h5><?php echo $countApprovedUsers ?></h5>
                    <a href="../../admin/accounts/index.php"><small>REGISTERED</small></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-3">
            <div class="card card-user">
              <div class="image">
                <img src="../../pictures/admin/users.jpg" alt="...">
              </div>
              <div class="card-body mb-">
                <p class="text-primary fs-2 text-center mt-4">
                  Staff Accounts
                </p>
                <p class="text-center mb-4 fs-2">
                  <?php echo $totalStaffs; ?>
                </p>
                <hr>
                <div class="row">
                  <div class="col-lg-6 col-md-6 col-6 ml-auto mr-auto text-center">
                    <h5><?php echo $countPendingStaffs ?></h5>
                    <a href="../../admin/accounts/staffPending.php"><small>PENDING</small></a>
                  </div>
                  <div class="col-lg-6 col-md-6 col-6 ml-auto mr-auto text-center">
                    <h5><?php echo $countApprovedStaffs ?></h5>
                    <a href="../../admin/accounts/staff.php"><small>REGISTERED</small></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-3">
            <div class="card card-user">
              <div class="image">
                <img src="../../pictures/admin/users.jpg" alt="...">
              </div>
              <div class="card-body mb-">
                <p class="text-primary fs-2 text-center mt-4">
                  Patient Records
                </p>
                <p class="text-center mb-4 fs-2">
                  <?php echo $totalPatients; ?>
                </p>
                <hr>
                <div class="row">
                  <div class="col-lg-6 col-md-6 col-6 ml-auto mr-auto text-center">
                    <h5><?php echo $countPendingPatients ?></h5>
                    <a href="../../admin/patient/pending.php"><small>PENDING</small></a>
                  </div>
                  <div class="col-lg-6 col-md-6 col-6 ml-auto mr-auto text-center">
                    <h5><?php echo $countApprovedPatients ?></h5>
                    <a href="../../admin/patient/index.php"><small>REGISTERED</small></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-3">
            <div class="card card-user">
              <div class="image">
                <img src="../../pictures/admin/users.jpg" alt="...">
              </div>
              <div class="card-body mb-">
                <p class="text-primary fs-2 text-center mt-4">
                  Appointments
                </p>
                <p class="text-center mb-4 fs-2">
                  <?php echo $totalAppointments; ?>
                </p>
                <hr>
                <div class="row">
                  <div class="col-lg-6 col-md-6 col-6 ml-auto mr-auto text-center">
                    <h5><?php echo $countPendingAppointments ?></h5>
                    <a href="../../admin/appointment/pending.php"><small>PENDING</small></a>
                  </div>
                  <div class="col-lg-6 col-md-6 col-6 ml-auto mr-auto text-center">
                    <h5><?php echo $countApprovedAppointments ?></h5>
                    <a href="../../admin/appointment/index.php"><small>APPROVED</small></a>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>

        <div class="row">
          <div class="col-md-3">
            <div class="card card-user">
              <div class="image">
                <img src="../../pictures/admin/users.jpg" alt="...">
              </div>
              <div class="card-body mb-">
                <p class="text-primary fs-2 text-center mt-4">
                  Posts
                </p>
                <p class="text-center mb-4 fs-2">
                  <?php echo $totalPosts; ?>
                </p>
                <hr>
                <div class="row">
                  <div class="col-lg-6 col-md-6 col-6 ml-auto mr-auto text-center">
                    <h5><?php echo $countEvents; ?></h5>
                    <a href="../../admin/posts/index.php"><small>EVENTS</small></a>
                  </div>
                  <div class="col-lg-6 col-md-6 col-6 ml-auto mr-auto text-center">
                    <h5><?php echo $countAnnouncements; ?></h5>
                    <a href="../../admin/posts/announcement.php"><small>ANNOUNCEMENTS</small></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <?php
      include '../../templates/footer.php';
      ?>
    </div>
  </div>
</body>

</html>