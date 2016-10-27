<?php

function home()
{
	if(empty($_SESSION['role']))
	{
		echo '<a class="navbar-brand" href="index.php">RACTAR</a>';
	}
	else
	{
		echo '<a class="navbar-brand" href="home.php">RACTAR</a>';
	}
}

function listmenu()
{
	if(empty($_SESSION['role']))
	{
		echo'<li class="hidden">
				<a href="#page-top"></a>
			</li>
			<li>
				<a class="page-scroll" href="createoccupant.php"><strong> Create Occupant Account </strong></a>
			</li>
			<li>
				<a class="page-scroll" href="searchevent.php"><i class="glyphicon glyphicon-search"></i><strong> Search Event </strong></a>
			</li>
			<li>
				<a class="page-scroll" href="login.php"><i class="glyphicon glyphicon-log-in"></i><strong> Log In </strong></a>
			</li>';
	}
	else
	{
		$role = $_SESSION['role'];
		if($role == 'Administrator' || $role == 'Guardian')
		{
			echo'<li class="hidden">
					<a href="#page-top"></a>
				</li>
				<li>
					<a class="page-scroll" href="createoccupant.php"><strong> Create Occupant Account </strong></a>
				</li>
				<li>
					<a class="page-scroll" href="searchevent.php"><i class="glyphicon glyphicon-search"></i><strong> Search Event </strong></a>
				</li>
				<li>
					<li class="dropdown">
					<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-user fa-fw"></i><strong>'.$_SESSION['username'].'</strong>
					<i class="caret"></i></a>
						<ul class="dropdown-menu">
							<li><i class="fa fa-align-right"></i><strong> Role Type</strong></li>
							<ul>
								<li style="text-align:left;">'.$_SESSION['role'].'</li>
							</ul>
							<li class="divider"></li>
							<li><a class="page-scroll" href="logout.php"><i class="glyphicon glyphicon-log-out"></i> Logout</a></li>
						</ul>
					</li>
				</li>'; 
		}
		else if($role == 'Manager')
		{
			echo'<li class="hidden">
					<a href="#page-top"></a>
				</li>
				<li>
					<a class="page-scroll" href="searchevent.php"><i class="glyphicon glyphicon-search"></i><strong> Search Event </strong></a>
				</li>
				<li>
					<li class="dropdown">
					<a class="dropdown-toggle" href="#" data-toggle="dropdown"><i class="fa fa-user fa-fw"></i><strong>'.$_SESSION['username'].'</strong>
					<i class="caret"></i></a>
						<ul class="dropdown-menu">
							<li><i class="fa fa-align-right"></i><strong> Role Type</strong></li>
							<ul>
								<li style="text-align:left;">'.$_SESSION['role'].'</li>
							</ul>
							<li class="divider"></li>
							<li><a class="page-scroll" href="logout.php"><i class="glyphicon glyphicon-log-out"></i> Logout</a></li>
						</ul>
					</li>
				</li>'; 
		}
	}
}
?>