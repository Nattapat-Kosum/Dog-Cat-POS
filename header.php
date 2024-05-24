<?php
// error_reporting(0);
include("src/db/connect.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="src/css/style.css">

    <!-- Font @Google Font font.google.com -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fuzzy+Bubbles&family=Hind+Siliguri:wght@300&family=Noto+Sans+Thai:wght@300&display=swap" rel="stylesheet">

    <!-- icon -->
    <script src="https://kit.fontawesome.com/f72915bcd5.js" crossorigin="anonymous"></script>

    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-lg bg-body-tertiary mb-2">
  <div class="container">
    <a class="navbar-brand fs-3" href="./index.php">PetPOS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">

      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <?php if ($_SESSION['user_id']) { ?>
            <a class="nav-link text-decoration-underline" style="color: blue;" href="#">Welcome (<?php echo $_SESSION['username'] ?>)</a>
          <?php } ?>
        </li>

        <li class="nav-item">
          <a class="nav-link text-decoration-underline" style="color:green;" href="/dogcatPos/backend/">Go to Dashboard</a>
        </li>

        <li class="nav-item">
          <a class="nav-link text-decoration-underline" style="color:red;" href="./login-register/logout.php">logout.</a>
        </li>
      </ul>
      
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>