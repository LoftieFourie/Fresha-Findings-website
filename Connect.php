<?php
$con = mysqli_connect('localhost', 'root', '','Fresha');

// get the post records
$Name = $_POST['txtName'];
$Surname = $_POST['txtSurname'];
$Email = $_POST['txtEmail'];
$Province = $_POST['txtProvince'];
$Password = $_POST['txtPassword'];

// database insert SQL code
$sql = "INSERT INTO `tbl_contact` (`User_ID`, `Name`, `Surname`, `Email`, `Province`, 'txtPassword', 'admin') VALUES ('0', '$txtName', '$txtSurname', '$txtEmail', '$txtProvince', 'txtPassword', '0')";

// insert in database 
$rs = mysqli_query($con, $sql);

if($rs)
{
	echo "Contact Records Inserted";
}

?>