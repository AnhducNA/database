<?php

use Anhduc\Database\Connection\MySqlConnection;
use Anhduc\Database\Faker\Generate;
use Anhduc\Database\QueryBuilder\MySqlBuilder;

require 'vendor/autoload.php';

$servername = "localhost";
$username = "root";
$password = "password";
$dbname = "hospital";

try {
    $faker = new Generate();
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//    dd($faker->getName());
//    for ($i = 1; $i <= 10; $i++) {
//        $name = $faker->getName();
//        $maLoaiBenhNhan = rand(1, 2);
//        $maBacSiTheoDoi = rand(1, 2);
//        $birthday = $faker->getDate();
//        $sql = "insert into benhNhan values ('$i', '$maLoaiBenhNhan', '$name', '$birthday', '$maBacSiTheoDoi')";
//        $stmt = $conn->prepare($sql);
//        $stmt->execute();
//    }

//    for ($i = 1; $i <= 10; $i++) {
//        $name = $faker->getName();
//        $maLoaiBenhNhan = rand(1, 2);
//        $maBacSiTheoDoi = rand(1, 2);
//        $birthday = $faker->getDate();
//        $sql = "insert into benhNhan values ('$i', '$maLoaiBenhNhan', '$name', '$birthday', '$maBacSiTheoDoi')";
//        $stmt = $conn->prepare($sql);
//        $stmt->execute();
//    }

//        for ($i = 1; $i <= 10; $i++) {
//            $name = $faker->getName();
//            $maBenhNhan = rand(1, 10);
//            $maBacSi = rand(1, 4);
//            $ngayChuaTri = $faker->getDate();
//            $thoiGianChuaTri = rand(1, 4);
//            $result = ['đạt', 'không đạt'];
//            $ketQua=$result[rand(0, 1)];
//            $sql = "insert into suChuaTri values ('$i', '$name', '$maBenhNhan', '$maBacSi',
//                              '$ngayChuaTri', '$thoiGianChuaTri', '$ketQua')";
//            $stmt = $conn->prepare($sql);
//            $stmt->execute();
//        }

//    for ($i = 1; $i <= 10; $i++) {
//        $maBenhNhan = rand(1, 10);
//        $maVatTu = rand(1, 4);
//        $ngay = $faker->getDate();
//        $thoiGian = rand(1, 4);
//        $soLuong = rand(1, 10);
//        $sql = "insert into vatTu_benhNhan values ('$i','$maBenhNhan', '$maVatTu',
//                              '$ngay', '$thoiGian', '$soLuong')";
//        $stmt = $conn->prepare($sql);
//        $stmt->execute();
//    }

    echo "recorded created successfully";
} catch (PDOException $e) {
    echo $sql . "<br>" . $e->getMessage();
}

$conn = null;