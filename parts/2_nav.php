<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
  <!-- Navbar Brand-->
  <a class="navbar-brand ps-3" href="index_.php">Take Pet Away</a>

  <!-- Navbar Search-->
  <!-- <fo class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0"></fo/rm> -->

  <!-- Navbar-->
  <ul class="navbar-nav ms-auto me-3 me-lg-4">
    <li class="nav-item px-2">
      <a class="nav-link <?= $pageName == "pet_list" ? "active" : "" ?>" href="pet_list.php">寵物列表</a>
    </li>
    <li class="nav-item px-2">
      <a class="nav-link <?= $pageName == "pet_add" ? "active" : "" ?>" href="pet_add.php">新增寵物</a>
    </li>
    <li class="nav-item dropdown px-2">
      <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        <i class="fas fa-user fa-fw"></i></a>
      <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
        <li><a class="dropdown-item" href="login.html">登入</a></li>
      </ul>
    </li>
  </ul>
</nav>