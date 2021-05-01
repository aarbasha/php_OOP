<?php
/*

*/

trait oneD{

    public function oneD(){
        echo "This is function 1d <hr>";
    }
}
trait tweD{

    public function tweD(){
        echo "This is function 2d <hr>";
    }
}
trait threeD{

    public function threeD(){
        echo "This is function 3d <hr>";
    }

}
//------------------------------------------------------------------------------------------------
class Iphone {
    use oneD;
    use tweD;
    use threeD;

    public function sayHallo(){ // add me
        echo " Hallo welcam to my iphone <hr>";
    }
}
class Sony {
    use threeD;
    public function sayHallo(){ //add me 
        echo " Hallo welcam to my Sony <hr>";
    }
}
//----------------------------------------------------------------------------------
$x = new Iphone();
$x ->oneD();
$x ->tweD();
$x ->threeD();
$x -> sayHallo();
echo "<pre>"; print_r($x); echo "<pre>";

//---------------------------------------------------------------------------------
$y = new Sony();
$y ->threeD();
$y -> sayHallo();
echo "<pre>"; print_r($y); echo "<pre>";

