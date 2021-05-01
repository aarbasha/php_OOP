<?php
/*

*/
class AppDivace {

    //proprety الخصائص
    public $ram = '2GB'; //Defulte
    public $inch = '6.6 INCH';
    public $space = '32 GB';
    public $color = 'gray';

    public function changSpace($Ra ,$In ,$Sp, $Co){
        $this->ram      = $Ra;
        $this->inch     = $In;
        $this->space    = $Sp;
        $this->color    = $Co;
    }

}
/*-------------------------------------------------------------*/
$iphone6plus = new AppDivace();
$iphone6plus -> changSpace("256GB" , "5.6 inch" , "1024 GB" , "Black");


// $iphone6plus -> ram = '2GB';
// $iphone6plus -> inch = '5 INCH';
// $iphone6plus -> space = '128 GB';
// $iphone6plus -> color = 'black';

echo "<pre>";
print_r($iphone6plus);
echo "<pre>";
/*-------------------------------------------------------------*/
$iphone7plus = new AppDivace();
$iphone6plus -> changSpace("8GB" , "8 inch" , "128 GB" , "Gold");


// $iphone7plus -> ram = '8GB';
// $iphone7plus -> inch = '8 INCH';
// $iphone7plus -> space = '128 GB';
// $iphone7plus -> color = 'gold';
echo "<pre>";
print_r($iphone7plus);
echo "<pre>";
/*-------------------------------------------------------------*/
$iphone = new AppDivace();
echo "<pre>";
print_r($iphone);
echo "<pre>";