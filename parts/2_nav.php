<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
  <!-- Navbar Brand-->
  <a class="navbar-brand ps-3" href="index_.php">Take Pet Away</a>

  <!-- Navbar Search-->
  <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0"></form>
  <!-- Navbar-->
  <!-- <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw">
        </i>
      </a>
      <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
        <li><a class="dropdown-item" href="login.html">登入</a></li>
      </ul>
    </li>
  </ul> -->
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
    </ul>
    <ul class="navbar-nav mb-2 mb-lg-0 ">
      <?php if (isset($_SESSION['user'])) : ?>
        <li class="nav-item">
          <a class="nav-link"><?= $_SESSION['user']['name'] ?></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="logout.php">登出</a>
        </li>
      <?php else : ?>
        <li class="nav-item">
          <a class="nav-link" href="login.php">登入</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="register.php">註冊</a>
        </li>
      <?php endif ?>
    </ul>
  </div>
</nav>