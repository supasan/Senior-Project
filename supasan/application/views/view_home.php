
<!DOCTYPE html>
<html lang="en">
<head>
	<title><?php echo $title; ?> </title>
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/signin.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/starter-template.css" type="text/css" />
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



    <div class="container">

      <div class="starter-template">
        <h1>Supply chain map </h1>
        <p class="lead">Start up page!.</p>
      </div>

    </div><!-- /.container -->

<div class="container" >

		<form class="form-signin"  action="<?php echo base_url(); ?>site/process_login" method="POST" >

        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" class="input-block-level" name="username" placeholder="Username" autofocus="">
        <input type="password" class="input-block-level" name="password" placeholder="Password">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
       
	<div class="well" style="max-width: 250px; margin: 0 auto 20px;">
		<div class="controls">
        <button type="submit" class="btn btn-primary btn-large btn-block" >Sign in</button>
    </div>
     <a href="<?php echo base_url(); ?>site/register">
        <button type="button" class="btn btn-default btn-large btn-block" >Register</button>
        </a>
      </div>



       <!--  <button class="btn btn-large btn-primary btn-block" type="submit">Sign in</button>

        <a href="<?php echo base_url(); ?>site/register">
        <button type="button" class="btn btn-default btn-large btn-block">Register</button>
        </a> -->
      </form>

    </div>




</body>
</html>