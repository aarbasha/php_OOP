<?php
/*
    Class Abstraction
    - can not create objct from
    - made for othar classes to extandes prop& method 
    -can have method 7 probrats

    *Rulse to go on 
    *Force Developer To Follow your Method
*/ 
abstract class MakeDivace { 

   abstract public function TextPerfomance();   // no bady [abstract]
   abstract public function verifyOwner();      // no bady [abstract]
   abstract public function sayWelcam($n);        // no bady [abstract]
       

}

class macBook extends MakeDivace {

    public $owner;

    public function TextPerfomance(){
        echo "Perfomance is Good 100%";
    }
    public function verifyOwner(){
        echo "owner is verifed ";
    }
    public function sayWelcam($n){
        $this->owner = $n;
        echo "welcam " . $n;
    }
   
}

class iphone extends MakeDivace {

    public $owner;

    public function TextPerfomance(){
        echo "Perfomance is Good 100%";
    }
    public function verifyOwner(){
        echo "owner is verifed ";
    }
    public function sayWelcam($n){
        $this->owner = $n;
        echo "welcam " . $n;
    }
   
}

class ipad extends MakeDivace {

    public $owner;

    public function TextPerfomance(){
        echo "Perfomance is Good 100%";
    }
    public function verifyOwner(){
        echo "owner is verifed ";
    }
    public function sayWelcam($n){
        $this->owner = $n;
        echo "welcam ". $n;
    }
   
}

//---------------------------------------------------------------------------------------
$macbook = new macBook();
$macbook -> sayWelcam("Anas");

echo "<pre>"; print_r($macbook); echo "<pre>";
//--------------------------------------------------------------------------------------
$iphone = new iphone();
$iphone -> sayWelcam("Ahmad");

echo "<pre>"; print_r($iphone); echo "<pre>";
//----------------------------------------------------------------------------------------
$ipad = new ipad();
$ipad -> sayWelcam("Osama");

echo "<pre>"; print_r($ipad); echo "<pre>";