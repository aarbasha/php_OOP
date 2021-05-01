<?php
/*
    Final = Funciton NOT Edit != extends [غير قابل لتوريث]
*/
class AppDivace { // Final = Funciton NOT Edit != extends [غير قابل لتوريث]

    //proprety الخصائص
    public $ram = '2GB'; //Defulte
    public $inch = '6.6 INCH';
    public $space = '32 GB';
    public $color = 'gray';
    public $network = "4G";
    // public $price = "1000$";
    public $name;

    public function changSpace($Ra ,$In ,$Sp, $Co){
        $this->ram      = $Ra;
        $this->inch     = $In;
        $this->space    = $Sp;
        $this->color    = $Co;
    }

    /*final*/ public function sayHallo($n){ // Final = Funciton NOT Edit 
        $this->name = $n;
        echo "welcam to " . $n;
    }

}
$iphone6plus = new AppDivace();
$iphone6plus -> changSpace("256GB" , "5.6 inch" , "1024 GB" , "Black");
$iphone6plus -> sayHallo("Apple");
echo "<pre>";

print_r($iphone6plus);
echo "<pre>";
//--------------------------------------------------------------------------------------

class Sony extends AppDivace {

    // public $camera = '25Mb';
    
}
$SonyM2 = new Sony();
$SonyM2 -> changSpace("256GB" , "5.6 inch" , "1024 GB" , "Black" ,"54654Mb");
// $SonyM2->price = "500$";  // Add class 
$SonyM2 -> sayHallo("Sony");

echo "<pre>";
print_r($SonyM2);
echo "<pre>";
