<?php


//  require "testing1.class.php";
//  require "testing2.class.php";
//  require "testing3.class.php";

 spl_autoload_register(function($class){

    require $class . ".class.php";

 });

$x = new testing3();

echo "<pre>";
print_r($x);
echo "<pre>";

