<!DOCTYPE html>
<html lang="en">
<head>
	<title>Map</title>
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/starter-template.css" type="text/css" />
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<?php echo $map['js'];?>
    <script type="text/javascript">
     function saveData() {
        var inputid = escape(document.getElementById("inputid").value);
        var nodeType = escape(document.getElementById("nodeType").value);
        var Description = escape(document.getElementById("Description").value);
 
        var url = "<?php echo base_url(); ?>site/savedata?inputid=" + inputid + "&nodeType=" + nodeType + "&Description="+Description;
        console.log(url);
        $.get(url,function(data,status){
          console.log(data);
          location.reload();
        });
    } 
    </script>
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

	<?php echo $map['html'];?>
</div>



<ul class="pager">
  <li class="previous">
    <a href="<?php echo base_url(); ?>site/welcome">&larr; Upload</a>
  </li>
    <li class="center">
    <a href="<?php echo base_url(); ?>site/maildisater">Alert!</a>
  </li>
</ul>


</body>
</html>


