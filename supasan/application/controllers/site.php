<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Site extends CI_Controller {
	function __construct()
	{
		parent::__construct();
		$this->size = 100;
	}

	public function index()
	{

		$this->home();
		
	}

	public function home(){

			$data['title'] = "IHPC";
		   	$this->load->view("view_home", $data);   

	}

	public function about(){
		$data['title'] = "About!";
		$this->load->view("view_about", $data);
	}



	public function register(){
		$data['title'] = "register!";

		if($this->session->userdata('logged_in'))
		   {
		   	 echo "<script>alert('You are already login!');</script>";
			 redirect('site/welcome', 'refresh');
		   }

		$this->load->view("view_register", $data);


		$regis = array(
              'name'        => 'username',
              'id'          => 'username',
              'value'       => 'johndoe',
              'maxlength'   => '100',
              'size'        => '50',
              'style'       => 'width:50%',
            );
	}
	public function process_register()
	{
		$this->load->model("get_db");

		if ($_POST['password'] != $_POST['password_confirm']) {
			redirect('site/register');
		}
		$regis = array(
              'username'  	=>	$_POST['username'],
              'password'  	=> 	md5($_POST['password']),
              'email'    	=> 	$_POST['email']
              );
		print_r($regis);
		$this->get_db->insert1($regis);

		
		redirect('site/');
		// print_r($regis);
	}
	public function process_login()
	{
		$this->load->model("get_db");
		$result = $this->get_db->login_model($_POST['username'],$_POST['password']);
   		if($result){
     		$sess_array = array();
     		foreach($result as $row){
       			$sess_array = array(
         								'id' 		=> 	$row->userID,
         								'username' 	=> 	$row->username,
         								'email'		=> 	$row->email
       								);
       			$this->session->set_userdata('logged_in', $sess_array);
				redirect('site/welcome');
     		}
 		}else{
			redirect('site/');
		}
	}
	public function welcome()
	{
		if($this->session->userdata('logged_in'))
		   {
		     $session_data = $this->session->userdata('logged_in');
		     $data['username'] = $session_data['username'];

		     $this->load->library('googlemaps');

		     $config = array();
			 $config['center'] = 'Jurong east, Singapore';
			 $config['zoom'] = 'auto';
			 $this->googlemaps->initialize($config);
			 $data['map'] = $this->googlemaps->create_map();





			 $this->load->view('welcome_view', $data);

		   }
		   else
		   {
		     //If no session, redirect to login page
		     redirect('site/', 'refresh');
		   }
	}
	function logout()
 	{
	   $this->session->unset_userdata('logged_in');
	   redirect('site/', 'refresh');
	 }


	 function upload(){
		if ($_FILES["file"]["error"] > 0)
	    {
		    echo "Return Code: " . $_FILES["file"]["error"] . "<br>";
	    }
	  	else
	    {
		    move_uploaded_file($_FILES["file"]["tmp_name"],"application/uploads/input.csv");
		    $this->readFile();
		    echo "<script>alert('".$_FILES["file"]["name"]." was uploaded');</script>";
			redirect('site/welcome', 'refresh');
	    }
	 }

	 function readFile(){
	 	$session_data = $this->session->userdata('logged_in');
           $filePath = 'application/uploads/input.csv';
           $rawdata = array();
           if (($handle = fopen($filePath, "r")) !== FALSE) {
           	$row = 0;
		    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
		    	if($row > 1){
		        	$rawdata[] = array("userID" => $session_data['id'],
		        						"Header" => $data[0],
										"nodeName" => $data[1],
										"nodeType" => $data[2],
										"latitude" => $data[3],
										"longitude" => $data[4],
										"cityName" => $data[5],
										"CountryName" => $data[6],
										"Description" => $data[7]);
		        }
		        $row++;
		    }
		    fclose($handle);
		}



		$this->load->model("get_db");
		$this->get_db->insertInput($rawdata);
	 }

	
	public function addPin(){


	 if($this->session->userdata('logged_in'))
	 {
		  $session_data = $this->session->userdata('logged_in');



	 	$this->load->model("get_db");
	 	$data = $this->get_db->getLocat();

	 	// print_r($data);
		$this->load->library('googlemaps');
		// Initialize the map, passing through any parameters

	     $config = array();
		 $config['center'] = 'Jurong east, Singapore';
		 $config['zoom'] = 'auto';
		 $config['map_height'] = "720px";
		 $config['map_width'] = "100%";
		$this->googlemaps->initialize($config);
		// Get the co-ordinates from the database using our model
		// $coords = $this->map_model->get_coordinates();
		// Loop through the coordinates we obtained above and add them to the map
		foreach ($data as $coordinate) {
			$marker = array();
			$marker['position'] = $coordinate->latitude.','.$coordinate->longitude;
			$marker['infowindow_content'] = 

			'<input type="hidden" name="inputid" id="inputid" value="'.$coordinate->inputid.'">'.
			'<b>Node:</b> '.$coordinate->Header.
			'<br /><b>Name:</b> '.$coordinate->nodeName.
			'<br /><b>Type:</b> <input type="text" name="nodeType" id="nodeType" value="'.$coordinate->nodeType.'">'.
			'<br /><b>City:</b> '.$coordinate->cityName.
			'<br /><b> Country:</b> '.$coordinate->CountryName.
			'<br /><b>Description:</b> <input type="text" name="Description" id="Description" value="'.$coordinate->Description.'">'.
			'<br /><input type="button" value="Save & Close" onclick="saveData()"/>';

			$this->googlemaps->add_marker($marker);
		}

			$dataB = $this->get_db->getLocatDisaster();
		
		foreach ($dataB as $coordinate) {
			$marker = array();
			$marker['position'] = $coordinate->latitude.','.$coordinate->longitude;
			$marker['animation'] = 'BOUNCE';
			$marker['infowindow_content'] =  '<b>Type:</b> '.$coordinate->type.'<br /><b>Description:</b>'.$coordinate->Description;
			$this->googlemaps->add_marker($marker);

			$circle = array();
			$circle['center'] = $coordinate->latitude.','.$coordinate->longitude;
			$circle['radius'] = $this->size*1000;
			$circle['fillColor'] = "#e11a1a";
			$circle['strokeColor'] = "#e11a1a";
			$circle['strokeOpacity'] = "0";
			
			$this->googlemaps->add_circle($circle);
		}	

		// Create the map
		$data = array();
		$data['username'] = $session_data['username'];
		$data['map'] = $this->googlemaps->create_map();

		 $this->load->view('view_map', $data);


	 }
	 else
	 {
		     //If no session, redirect to login page
		     redirect('site/', 'refresh');
	 }
	}
	function savedata(){
		$inputid = $_GET['inputid'];
		$rawdata = array("nodeType" =>  $_GET['nodeType'],
    						"Description" => $_GET['Description']); 
		$this->load->model("get_db");
		$this->get_db->updateInfowindows($inputid,$rawdata);
	}
	function distance($lat1, $lon1, $lat2, $lon2, $split) {

	  $theta = $lon1 - $lon2;
	  $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
	  $dist = acos($dist);
	  $dist = rad2deg($dist);
	  $km = $dist * 60 * 1.1515 * 1.609344;

	  if ($km  < $split) {
	    return 1;
	  }else{
	  	return 0;
	  }
	}
	public function maildisater()
	{
		$this->load->model("get_db");
		$riskNode = array();
		$dataB = $this->get_db->getLocatDisaster();
		$dataA = $this->get_db->getallLocate();
		foreach ($dataB as $coordinate) {
			foreach ($dataA as $compute) {
				$com = $this->distance(floatval($coordinate->latitude), floatval($coordinate->longitude), floatval($compute->latitude), floatval($compute->longitude),$this->size);
				if ($com == 1) {
					$riskNode[] = array("disater" =>$coordinate , "node" => $compute , "disasterType" => $coordinate);
				}
			}
		}
		$data = array();
		foreach ($riskNode as $val) {
			$data[] = array("user"=>$this->get_db->getuserdisater($val['node']->userID)[0],
							"node"=>$val['node'],
							"disasterType" => $val['disasterType']);
		}
		$config = Array(
					    'protocol' => 'smtp',
					    'smtp_host' => 'ssl://smtp.googlemail.com',
					    'smtp_port' => 465,
					    'smtp_user' => 'map.ihpc',
					    'smtp_pass' => 'ihpc0216',
					    'mailtype'  => 'html', 
					    'charset'   => 'iso-8859-1'
					);
		$this->load->library('email', $config);
		$this->email->set_newline("\r\n");
		foreach ($data as $sendmail) {
			$email =  $sendmail['user']->email;
			$this->email->from("map.ihpc@gmail.com");
			$this->email->to($email);
			$this->email->subject('Warning Disasters');
			$this->email->message("Dear ".$sendmail['user']->username."<br />node ID: ".$sendmail['node']->Header."<br>node Name: ".$sendmail['node']->nodeName."<br>node Type: ".$sendmail['node']->nodeType."<br>Disaster (" .$sendmail['disasterType']->type. ") happened nearby please be careful !!! ");	
			$this->email->send();


		}
		echo "<script>alert('Alert mail had been sent');</script>";
		redirect('site/addPin', 'refresh');
	}

}
