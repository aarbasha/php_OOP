<?php
/*

*/

class Iphone {
    public static $name = "Anas";
    public static $email = "aarbasha@bk.ru";

    public  function  sayHallo(){
        echo "Hallo Anas" . "</br>";
        return $this;
    }
    public  function  saywelcam(){
        echo "Welcam Anas " . "</br>";
        return $this;
    }
    public  function  sayBongyer(){
        echo "Bonjor Anas " . "</br>";
        return $this;
    }


}

$x = new Iphone();

$x -> sayHallo()->saywelcam()->sayBongyer();

echo "<pre>"; print_r($x); echo "<pre>";

