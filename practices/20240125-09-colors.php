<!DOCTYPE html>
<html lang="zh-hant-TW">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    td {
      width: 30px;
      height: 30px;

    }
  </style>
</head>

<body>
  <table>
    <?php for ($i = 0; $i < 16; $i++) :  ?>
      <tr>
        <?php for ($k = 0; $k < 16; $k++) :  
          $r = rand(0, 15); //rand —產生一個隨機整數 (最小,最大)
          $g = rand(0, 15);
          $b = rand(0, 15);
          ?>
          <td style="background-color: <?= sprintf('#%X%X%X', $r, $g, $b) ?>;"></td>
        <?php endfor  ?>
      </tr>
    <?php endfor  ?>
  </table>
</body>

</html>