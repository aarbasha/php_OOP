<?php
/*
Magic Methods [ Get  && Set ]
-Clone 
*/

class Iphone {
    public $name;
    public $email;

    public function __construct($n, $e){
        $this->name = $n;
        $this->email = $e;
    }

    public function __clone(){
        $this->name = clone $this->name;
    }

}

$man = new Iphone("Anas" , "aarbasha@bk.ru");
$copy = clone $man; // copy by referanc

$man -> name = "ahmad";
$copy -> name = "hasn";


echo "<pre>"; print_r($man); echo "<pre>";
echo "<pre>"; print_r($copy); echo "<pre>";
