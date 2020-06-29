<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	$nim = $_POST['nim'];
	$namaUser = $_POST['namaUser'];
	$nohp = $_POST['nohp'];
	$password = $_POST['password'];
		//$image = $_POST['image'];

	require_once('../Config.php');

	$response = [
		'text' => "Gagal",
		'status' => false,];

        //$path = "images/".$nim.".png";    
		$sql = "UPDATE users SET namaUser = '$namaUser', nohp = '$nohp' , password = '$password' WHERE nim = $nim;";


		if(mysqli_query($con,$sql)){
			$sql = "SELECT * FROM users WHERE nim=$nim";
			$r = mysqli_query($con,$sql);
			$row = mysqli_fetch_array($r);

			$response['text']  = 'berhasil';
			$response['status'] = true;
			$response['data'] = array(
				"idUsers"=>$row['idUsers'],
				"nim"=>$row['nim'],
				"namaUser"=>$row['namaUser'],
				"nohp"=>$row['nohp'],
				"password"=>$row['password'],
				"image"=>$row['image']

			);
		}
		


		echo json_encode($response);
		mysqli_close($con);
	}