<?php

/*
    Ploymorphisim
    -Have Methods Without Body Code الاختلاف فقط بلاستعلامات حسب نوع قواعد البيانات 

*/

interface DBconnects{

    public function getUsers();
    public function getArticles();
    public function getPost();

}

//------------------------------------------------------------------------------

class MySQl implements DBconnects {  // new [implements] ----->MySQl
   
    public function getUsers(){
        echo "SELECT * FROM users" . "<br>";
    }
    public function getArticles(){
        echo "SELECT * FROM article" . "<br>";
    }
    public function getPost(){
        echo "SELECT * FROM posts" . "<br>";
    }

}

class Oracle implements DBconnects {  // new [implements] --------> Oracle
   
    public function getUsers(){
        echo "SELECT * FROM users" . "<br>";
    }
    public function getArticles(){
        echo "SELECT * FROM article" . "<br>";
    }
    public function getPost(){
        echo "SELECT * FROM posts" . "<br>";
    }

}

class SQLite3 implements DBconnects {  // new [implements] --------> SQLite3
   
    public function getUsers(){
        echo "SELECT * FROM users" . "<br>";
    }
    public function getArticles(){
        echo "SELECT * FROM article" . "<br>";
    }
    public function getPost(){
        echo "SELECT * FROM posts" . "<br>";
    }

}

//----------------------------------------------------------------MySQl--------------
$ROW = new MySQl();
$ROW-> getUsers();
$ROW-> getArticles();
$ROW-> getPost();
echo "<pre>"; print_r($ROW); echo "<pre>";
//-----------------------------------------------------------------Oracle-------------
$ROW = new Oracle();
$ROW-> getUsers();
$ROW-> getArticles();
$ROW-> getPost();
echo "<pre>"; print_r($ROW); echo "<pre>";
//-----------------------------------------------------------------SQLite3-------------
$ROW = new SQLite3();
$ROW-> getUsers();
$ROW-> getArticles();
$ROW-> getPost();
echo "<pre>"; print_r($ROW); echo "<pre>";
