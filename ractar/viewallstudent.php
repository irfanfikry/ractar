<?php 
	session_start();
	require 'loggedin.php';
	include("_conn.php");
	include "listmenu.php";

	if( !is_logged_in() )
	{
		header('Location: logout.php');
	} 
	
	$username = $_SESSION['username'];
	$user_id = $_SESSION['user_id'];
	$role_id = $_SESSION['role_id'];
	
	$select = dbConnect()->prepare("SELECT st.*, sp.* 
									FROM student st JOIN sponsor sp on st.sponsor_id = sp.sponsor_id");
		$select->execute();
	
	if(isset($_POST['submit']))
	{
		$_SESSION['icNum'] = $_POST['stu_ic'];
		header('Location: viewstudent.php');
	}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>View All Student</title>
    <link href="css/style.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet"> 
	<link href="css/navbar.css" rel="stylesheet">
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> 
</head>
<body><center>
<div class="container">
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<?php home(); ?>
			</div>
		<div class="nav navbar-nav navbar-right">
			<?php listmenu(); ?>
		</div>
		</div>
	</nav>
	<div class="jumbotron">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title"><i class="fa fa-list"></i> View All Students</h3>
						</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-bordered table-hover table-striped">
									<thead>
									<tr>
										<th><center>No</center></th>
										<th><center>Name</center></th>
										<th><center>I/C Number</center></th>
										<th><center>Contact Number</center></th>
										<th><center>Sponsor</center></th>
										<th><center>Status</center></th>
										<th><center>Details</center></th>
									</tr>
									</thead>
									<tbody>
								
									<?php 
									$x = 1;
										while( $result = $select->fetch(PDO::FETCH_LAZY))
										{
											echo "<tr>";
											echo "<td><center>$x</center></td>";
											echo "<td><center>".$result['stu_name']."</center></td>";
											echo "<td><center>".$result['stu_ic']."</center></td>";
											echo "<td><center>".$result['stu_number']."</center></td>";
											echo "<td><center>".$result['sponsor_name']."</center></td>";
											echo "<td><center>".$result['stu_status']."</center></td>";
											echo '<form name="myForm" method="post" action="" autocomplete="off" >';
											echo '<input type="hidden" name="stu_ic" value="'.$result['stu_ic'].'">';
											echo '<td><center><input type="submit" name="submit" class="btn btn-default" value="Detail" /></center></td>';
											echo '</form>';
											echo "</tr>";
										$x++;
										}
									?>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</center></body>
</html>