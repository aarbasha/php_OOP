<?php
/*

*/
trait myFuter{
    public function sayHallo($s){ // add me
        echo " Hallo welcam to my trait <hr>";
       return $this;
  }

}
class AplleDivce{

     public function sayHallo($s){ // add me
         echo " Hallo welcam to my " . $s . "<hr>";
        return $this;
   }

}
class Iphone extends AplleDivce{
    use myFuter;
}
class Sony extends AplleDivce{
    use myFuter;
}

// trait AllDiymantion {
//     use oneD ,tweD , threeD;
// }

// trait oneD{

//     public function oneD(){
//         echo "This is function 1d <hr>";
//         return $this;
//     }
// }
// trait tweD{

//     public function tweD(){
//         echo "This is function 2d <hr>";
//         return $this;
//     }
// }
// trait threeD{

//     public function threeD(){
//         echo "This is function 3d <hr>";
//         return $this;
//     }

// }
// //------------------------------------------------------------------------------------------------
// class Iphone {
//     use AllDiymantion;

//     public function sayHallo(){ // add me
//         echo " Hallo welcam to my iphone <hr>";
//         return $this;
//     }
// }
// class Sony {
//     use threeD;
//     public function sayHallo(){ //add me 
//         echo " Hallo welcam to my Sony <hr>";
//         return $this;
//     }
// }
//----------------------------------------------------------------------------------
$x = new Iphone();
// $x ->oneD()->tweD()->threeD()-> sayHallo();
$x-> sayHallo("iphon");
echo "<pre>"; print_r($x); echo "<pre>";

//---------------------------------------------------------------------------------
$y = new Sony();
// $y ->threeD() -> sayHallo();
$y-> sayHallo("sony");
echo "<pre>"; print_r($y); echo "<pre>";

