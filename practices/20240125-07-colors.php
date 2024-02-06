<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    td{
      width: 30px;
      height: 30px;
        
    }
  </style>
</head>
<body>
  <table>
    <!-- 色碼是16進位 -->
    <?php for($i = 0; $i < 16; $i++): ?> 
      <tr>
        <!-- X	參數視為整數並以十六進制數字呈現（帶有大寫字母） -->
        <td style="background-color: <?= sprintf('#%X00',$i)?>;"></td>           
      </tr>
      <?php endfor  ?>
      </table>
      </body>
      </html>