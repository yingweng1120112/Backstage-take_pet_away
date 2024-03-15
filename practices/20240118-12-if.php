<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <?php
  $age = isset($_GET['age']) ?  intval($_GET['age']) : 0;

  if($age >= 18){
    echo'<h2>hi</h2>';
    echo 'img src=https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cat_November_2010-1a.jpg/1200px-Cat_November_2010-1a.jpg';
  } else {
    echo'<h3>nope</h3>';
    echo 'img src=https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cat_November_2010-1a.jpg/1200px-Cat_November_2010-1a.jpg';
  };
  ?>
</body>
</html>