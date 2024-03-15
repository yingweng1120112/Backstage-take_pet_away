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
  <table style="background-image:url(https://okawariplease.files.wordpress.com/2017/09/pompompurin.png?w=676)">
    
    <?php for($i = 0; $i < 16; $i++): ?> 
      <tr>
        <?php for ($k = 0; $k <16; $k++) :
        $a = rand(0,15);        
          ?>
        <td style="background-color: <?= sprintf('#000%X',$a)?>;"></td>  
        <?php endfor  ?>
      </tr>
      <?php endfor  ?>
      </table>
      </body>
      </html>