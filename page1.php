<?php

/*
self vs $this :
--------------------------------------------------------------------------------------
self =>
1-refer to cuennt class
2-access satic members
3-not use ($) ==> const 
--------------------------------------------------------------------------------------
$this =>
1-refer to cuennt object
2-access not satic members
3-use ($) ==> var 

*/
class AppDivace {

    //proprety الخصائص
    public $ram = '2GB'; //Defulte
    public $inch = '6.6 INCH';
    public $space = '32 GB';
    public $color = 'gray';
    public $ownername;

    //Constans الثوابت
    const OWNERNAME = 8; //ex --> self


    //function Methods

    public function SetOwnerName($owner){

        if(strlen($owner) < self::OWNERNAME){

            echo "owner name cant be less than " . self::OWNERNAME ." chars";
        }else{
            echo "Good Name (:"; 
        }
       
    }
}
/*-------------------------------------------------------------*/
$iphone6plus = new AppDivace();
$iphone6plus -> ram = '2GB';
$iphone6plus -> inch = '5 INCH';
$iphone6plus -> space = '128 GB';
$iphone6plus -> color = 'black';
// $iphone6plus -> ownername = 'ios4';
$iphone6plus -> SetOwnerName("anas_arbasha"); // run function 
echo AppDivace::OWNERNAME;                   // print Constant

echo "<pre>";
print_r($iphone6plus);
echo "<pre>";

/*-------------------------------------------------------------*/
$iphone7plus = new AppDivace();
$iphone7plus -> ram = '8GB';
$iphone7plus -> inch = '8 INCH';
$iphone7plus -> space = '128 GB';
$iphone7plus -> color = 'gold';
echo "<pre>";
print_r($iphone7plus);
echo "<pre>";
/*-------------------------------------------------------------*/
$iphone = new AppDivace();
echo "<pre>";
print_r($iphone);
echo "<pre>";