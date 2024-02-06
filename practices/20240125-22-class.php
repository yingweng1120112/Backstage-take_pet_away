<?php
//class類別 type類型(如interface介面:response)
//instance object 個體 實體
//類別本身不是實際存在的物件，而是用來創建實例的模板。
//例如，一個 Person 類別可能包含姓名、年齡等屬性，以及走路、說話等方法。但 Person 本身不是具體的人，而是描述了人的特性和行為的模板。
class Person {
  public $name; //公開屬性2
  public $mobile;
  
  private $sno; // 私有屬性 活動範圍只在特定類型裡
  function __construct($name, $mobile, $sno) { //自動被呼叫
    $this->name = $name;
    $this->mobile = $mobile;
    $this->sno = $sno;
  }

  function getInfo() { //不會被自動呼叫
    return [
      "name"=> $this->name,
      "mobile"=> $this->mobile,
    ];
  }

  //getter 讀取器
  function getSno() { //要先定義此方法 之後用這個才拿的到值
    return $this->sno;
  }

  //setter設定器  
  function setSno($v){
    $this->sno = $v;
  }
}

$p1 = new Person('David','09123456789','abcd'); //使用 new 創建物件實例
echo "$p1->name <br>";
echo "$p1->mobile <br>";

//echo "$p1->sno"; 私有所以不能用
//透過方法讀取私有屬性
$p1->name = "皮卡丘";
echo json_encode($p1->getInfo(),JSON_UNESCAPED_UNICODE);
echo "<br>";
echo $p1 -> getSno();

