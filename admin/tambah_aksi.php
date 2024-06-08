<?php
// koneksi database
include '../koneksi.php';

// menangkap data yang di kirim dari form
$nama = $_POST['nama_wisata'];
$alamat = $_POST['alamat'];
$deskripsi = $_POST['deskripsi'];
$harga_tiket = $_POST['harga_tiket'];
$latitude = $_POST['latitude'];
$longitude = $_POST['longitude'];
// $image = $_POST['image'];

$image = $_FILES['image']['name']; // Nama file gambar
$tmp_name = $_FILES['image']['tmp_name']; // Lokasi sementara file gambar
$folder = "../gambar/"; // Folder tempat menyimpan gambar
move_uploaded_file($tmp_name, $folder.$image); // Memindahkan file gambar ke folder yang ditentukan


// menginput data ke database
mysqli_query($koneksi, "insert into wisata values('','$nama','$alamat','$deskripsi','$harga_tiket','$latitude','$longitude','$image')");

// mengalihkan halaman kembali ke index.php
header("location:tampil_data.php");
