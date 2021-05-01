<?php
/*
Magic Methods [ Get  && Set ]
-call:
-called when Incoking Function Not Accessible or not Found
-accpot twe parametars [method , parametars]
*/
class Iphone {
    public $name;
    public $ram;
    private $coloring;

    // public function __get($prop){
    //     echo "tha proberty name [" . $prop . "[ is note found <hr> ";
    // }

      public function __set($prop , $value){ // اما بجعل اسم الخاصية برايفت او استخدام الفانكشن سيت 
      echo "tha proberty name [" . $prop . "[ is note found <hr> ";
      echo "and tha value [" . $value . "]is note used ";
     }

}


$iphone = new Iphone("Anas" , "256GB");
$iphone -> color='red';
$iphone -> coloring='red';

echo "<pre>";
print_r($iphone);
echo "<pre>";
