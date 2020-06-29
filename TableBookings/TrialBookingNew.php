<?php 
if($_SERVER['REQUEST_METHOD']=='POST'){
	$nimBooking = $_POST['nimBooking'];
	$namaPembooking = $_POST['namaPembooking'];
	$namaRuangBooking = $_POST['namaRuangBooking'];
	$tanggal = $_POST['tanggal'];
	$jamMulai = $_POST['jamMulai'];
	$jamSelesai = $_POST['jamSelesai'];
	$keterangan = $_POST['keterangan'];

	require_once('../Config.php');


        //$path = "images/".$nim.".png";    
		$sql = "INSERT INTO bookings (nimBooking ,namaPembooking , namaRuangBooking, tanggal , jamMulai, jamSelesai, keterangan) VALUES ($nimBooking,$namaPembooking, $namaRuangBooking,$tanggal, $jamMulai, $jamSelesai, $keterangan)";

		if(mysqli_query($con,$sql)){
			$sql = "SELECT * FROM bookings WHERE nimBooking=$nimBooking";
			$r = mysqli_query($con,$sql);
			$row = mysqli_fetch_array($r);

			$response['status'] = true; 
			$response['message'] = 'Booking Succes';
			$response['data'] = array(
				"idBooking"=>$row['idBooking'],
				"nimBooking"=>$row['nimBooking'],
				"namaPembooking"=>$row['namaPembooking'],
				"namaRuangBooking"=>$row['namaRuangBooking'],
				"tanggal"=>$row['tanggal'],
				"jamMulai"=>$row['jamMulai'],
				"jamSelesai"=>$row['jamSelesai'],
				"keterangan"=>$row['keterangan'],
				"statusBooking"=>$row['statusBooking'],
			);

		}
		


		echo json_encode($response);
		mysqli_close($con);
	}