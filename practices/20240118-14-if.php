<!DOCTYPE html>
<html lang="zh-hant-TW">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>

<body>
  <?php
  $age = isset($_GET['age']) ? intval($_GET['age']) : 0;

  if ($age >= 18) :
  ?>
    <h2>歡迎光臨</h2>
    <img src="https://www.purina.co.uk/sites/default/files/2023-03/Hero%20Pedigree%20Cats.jpg" width="300">
  <?php
  else :
  ?>
    <h3>長大後再來</h3>
    <img src="https://static01.nyt.com/images/2023/12/12/climate/12cli-cats/12cli-cats-videoSixteenByNineJumbo1600.jpg" width="300">
  <?php endif; ?>
</body>

</html>