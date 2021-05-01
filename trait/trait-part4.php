<?php
/*

*/
trait x1{
    public function fank1(){ // add me
        echo " Hallo welcam to my trait number 1 <hr>";
        return $this;
    }
}
trait x2{
    public function fank1(){ // add me
        echo " Hallo welcam to my trait number 2 <hr>";
        return $this;
    }
}
class Iphone{

    use x1 , x2 { 

//  [trait name] :: [method name ]  [keyword as ] [new name]
      x2 :: fank1 as AnasOS ; // استدعاء الفانكشن المتساوي بلاسم باسم مستعار 


//  [trait name] :: [method name ]  [keyword insteadOf ] [other method name]
      x1 :: fank1 insteadOf x2;  // استدعاء الفانكشن المتساويين بلاسماء واحدة بدلا من الاخرى   
    }
}

//----------------------------------------------------------------------------------
$iphon = new Iphone();
$iphon-> fank1();
$iphon-> AnasOS(); 
echo "<pre>"; print_r($iphon); echo "<pre>";

//---------------------------------------------------------------------------------

