<!DOCTYPE html>
<html lang="en">
<head>
	<title>Upload </title>
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/starter-template.css" type="text/css" />
	<?php echo $map['js'];?>
</head>
<body>
 <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">Suppl-Chain map</a>
        <div class="nav-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="<?php echo base_url(); ?>site/register">Register</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

<ul class="breadcrumb">

<?php 
	echo 'Login as: '.$username;
?>

  <li><a href="<?php echo base_url(); ?>site/logout"> logout</a></li>
</ul>






<div class="panel">
  <form action="<?php echo base_url(); ?>site/upload" method="post" enctype="multipart/form-data">	

    <legend>Upload your input file</legend>

<form action="" method="POST" enctype="multipart/form-data" >
    Select File To Upload:<br />
    <input type="file" name="file"  />
    <br /><br />
    <input type="submit" name="submit" value="Upload" class="btn btn-success" />

    <a href="<?php echo base_url(); ?>site/addPin">
    <button type="button" name="generate" class="btn btn-danger"> Generate map</button>
    </a>
</form>

</div>





<div class="panel">

	<?php echo $map['html'];?>
</div>





</body>
</html>


