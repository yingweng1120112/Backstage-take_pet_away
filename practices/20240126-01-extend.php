<?php
//class類別 type類型(如interface介面:response)
//instance object 個體 實體
class Person {
  public $name; 
  public $mobile;  
  function __construct($name, $mobile) {
    $this->name = $name;
    $this->mobile = $mobile;
  }
  
  //references被幾個東西參考到
  //overrides 覆蓋
  function getInfo() {
    return [
      "name"=> $this->name,
      "mobile"=> $this->mobile,
    ];
  }
}

//Employee繼承Person的公開屬性
class Employee extends Person {
  public $salary;
//沒有預設值要給3個參數 有的話就2個
  function __construct($name, $mobile, $salary = 35000)
  //呼叫父類別的建構函數 只能在最前面呼叫
  {
  parent::__construct($name, $mobile);
  $this->salary = $salary;
}

  function getInfo() {
    //拿到陣列
    $info = parent::getInfo();
    //在陣列新增屬性
    $info['salary'] = $this ->salary;
    return $info;
  }
}

$p1 = new Employee('David','09123456789');
echo json_encode($p1->getInfo());
echo '<br>';



