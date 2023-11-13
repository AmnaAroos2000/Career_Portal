<?php

try {
  $connect = new PDO("mysql:host=localhost;dbname=student_portal;charset=utf8","root","");
} catch (PDOException $e) {
      echo $e->getMessage();
}
?>