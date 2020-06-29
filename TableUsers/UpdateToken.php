<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
  $token = $_POST['token'];
  $nim = $_POST['nim'];

  require_once('../Config.php');

  $response = [
    'text' => "Anda belum melakukan booking Ruangan !!",
    'status' => false,
  ];


  $sql = "UPDATE users SET token = '$token' WHERE nim = $nim";

  if(mysqli_query($con,$sql)){

    $response['text']  = 'berhasil';
    $response['status'] = true;
  }else{
    echo 'Gagal';
  }

  mysqli_close($con);
  echo json_encode($response);
}