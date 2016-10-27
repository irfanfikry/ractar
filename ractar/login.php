<?php 
	include "listmenu.php";
	require_once '_conn.php';
	require 'loggedin.php';
	session_start();

	if( is_logged_in() )
	{
		header('Location: home.php');
	}

	if(isset($_POST['submit']))
	{
		$username = $_POST['username'];
		$password = $_POST['password']; 
				
		$encrypted = md5($password);
				
		$result = dbconnect()->prepare("SELECT *
										FROM staff 
										WHERE s_username = ? AND s_password = ?");
		$result->bindParam(1, $username);
		$result->bindParam(2, $encrypted);
		
		$result->execute();
		
		$rows = $result->fetch();
				
		$s_id = $rows['s_id'];
		$s_name = $rows['s_name'];
				
		if($rows > 0) 
		{	
			$_SESSION['username'] = $username;
			$_SESSION['name'] = $s_name;
			$_SESSION['id'] = $s_id;
			$_SESSION['role'] = $rows['s_role'];
			$_SESSION['loggedin'] = true;
			header("Location: home.php");
		}
		else 
		{
			$result = dbconnect()->prepare("SELECT *
											FROM guardian 
											WHERE g_username = ? AND g_password = ?");
			$result->bindParam(1, $username);
			$result->bindParam(2, $encrypted);
			
			$result->execute();
			
			$rows = $result->fetch();
			
			$g_id = $rows['g_id'];
			$g_name = $rows['g_name'];
			
			if($rows > 0) 
			{	
				$_SESSION['username'] = $username;
				$_SESSION['name'] = $g_name;
				$_SESSION['id'] = $g_id;
				$_SESSION['role'] = 'Guardian';
				$_SESSION['loggedin'] = true;
				header("Location: home.php");
			}
			else
			{	
				$error[] = "Your details did not match or you are not a staff/guardian!";		
			}				
		}
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Login Page</title>
    <link href="css/style.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet">
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
	<div class="jumbotron"><!-- center menu -->
		<div class="container-fluid">
			<div class="row"><div class="col-lg-4"></div>
				<div class="col-lg-4">
				<h3>Please Login</h3>
					<form role="form" method="post" action="">
						<?php
							if(isset($error))
							{
								foreach($error as $error)
								{
									echo '<p class="bg-danger">'.$error.'</p>';
								}
							}
						?>
						<div class="form-group input-group">
							<span class="input-group-addon"><i class="fa fa-user"></i></span>
							<input type="text" name="username" id="username" class="form-control" placeholder="Username" required="required">
						</div>
						<div class="form-group input-group">
							<span class="input-group-addon"><i class="fa fa-key"></i></span>
							<input type="password" name="password" class="form-control" placeholder="Password" required="required">
						</div>
						<button type="submit" name="submit" class="btn btn-default">Login</button>
					</form>
				</div>
			</div>
		</div>
	</div><!-- end menu-->
</div>
<?php
session_write_close();
	exit();
	?>
</center></body>
</html>