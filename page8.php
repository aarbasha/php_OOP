<?php
/*
Magic Methods [ __construct ]
-construct تبني
-Destruct تهدم
*/
class Iphone {
    public $name;
    public $ram;

    // public function sayHallo($n){
    //     $this->name =$n;
    //    echo 'Hallo user ' . $n; 
    // }

    public function __construct($n , $r){ // new [ will viwe is one in body page after all ]
        $this-> name =$n;
        $this-> ram =$r;
        echo 'Hallo user ' . $n . "And is Ram is :" . $r; 
    }
}


$iphone = new Iphone("Anas" , "256GB");
// $iphone -> sayHallo("Anas");

echo "<pre>";
print_r($iphone);
echo "<pre>";
