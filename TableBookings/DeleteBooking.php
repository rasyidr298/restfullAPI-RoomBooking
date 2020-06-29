<?php 
	$idBooking = $_GET['idBooking'];
	
	require_once('../Config.php');

	$response = [
		'text' => "Gagal Cancel",
		'status' => false,];
	
	$sql = "DELETE FROM bookings WHERE idBooking=$idBooking;";
	
	if(mysqli_query($con,$sql)){
		$response['text']  = 'berhasil Cancel';
		$response['status'] = true;
	}
	
	echo json_encode($response);
	mysqli_close($con);
