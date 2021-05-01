<?php
/*
Magic Methods [ __construct ]
-call:
-called when Incoking Function Not Accessible or not Found
-accpot twe parametars [method , parametars]
*/
class Iphone {
    public $name;
    public $ram;

    public function __call($method , $parametas){ // _call استدعاء فانكشن غير موجودة ستظهر هذه الرسالة

        echo "tha [<b>" . $method . "]</b> not founde or note accssible <hr> ";
        print_r($parametas);
    }

}


$iphone = new Iphone("Anas" , "256GB");
$iphone -> dasdasdasdasd();
$iphone -> asdasdasasgsfdjhfghf();
$iphone -> fjsghdksajdlkasj();
$iphone -> igupruteroiu();
echo "<pre>";
print_r($iphone);
echo "<pre>";
