<?php

class Model{
	
	public function __construct() {
		
	}
	
	protected static $connection;
	
	public function connect() {
		
		// Try and connect to the database
		if(!isset(self::$connection)) {
			
			$config = parse_ini_file('./config.ini');
			self::$connection = new mysqli('localhost',$config['username'],$config['password'],$config['dbname']);
		}
		
		// If connection was not successful, handle the error
		if(self::$connection === false) {
			// Handle error - notify administrator, log to a file, show an error screen, etc.
			return false;
		}
		return self::$connection;
	}
	
	
	public function query($query) {
		// Connect to the database
		$connection = $this->connect();
		
		// Query the database
		$result = $connection->query($query);
		
		return $result;
	}
	
	
	public function select($query) {
		$rows = array();
		$result = $this->query($query);
		if($result === false) {
			return false;
		}
		while ($row = $result->fetch_assoc()) {
			$rows[] = $row;
		}
		return $rows;
	}
	
	
	public function error() {
		$connection = $this->connect();
		return $connection->error;
	}
	
	
	public function quote($value) {
		$connection = $this -> connect();
		return "'" . $connection -> real_escape_string($value) . "'";
	}
	
	public function getCsvFileName(){
		$config = parse_ini_file('./config.ini');
		return "./".$config['csvfile'].".csv";
	}
	
	public function getSmsgateway(){
		$config = parse_ini_file('./config.ini');
		return $config['smsgateway'];
	}
	
	public function emailExist($email){
		$emailErr = '';
		$csvfile = $this->getCsvFileName();
		if(file_exists($csvfile)){
			$file = fopen($csvfile, 'r');
			while (($line = fgetcsv($file)) !== FALSE) {
				if($line[1] == $email){
					$emailErr = 'Email exist';
				}
				
			}
			fclose($file);
		}
		return $emailErr;
	}
	
	public function emailvalid($email=null){
		$emailErr = '';
		if(!empty($email)){
			if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
				$emailErr = "Invalid email format";
			}else{
				$emailErr = $this->emailExist($email);
			}
		}else{
			$emailErr = "Email is required";
		}
		return $emailErr;
	}
	
	public function nameValid($name=null){
		$nameErr = '';
		// check if name only contains letters and whitespace
		if(!empty($name)){
			if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
				$nameErr = "Only letters and white space allowed";
			}
		}else{
			$nameErr = "Name is required";
		}
		return $nameErr;
	}
	
	public function phoneValid($mobile=null){
		$nameErr = '';
		// check if phone only contains numbers
		if(!empty($mobile)){
			if (!preg_match('/^[0-9]{12}+$/', $mobile)) {
				$nameErr = "Only numbers allowed";
			}
		}else{
			$nameErr = "Phone is required";
		}
		return $nameErr;
	}
	
	public function codeValid($mobile=null){
		$nameErr = '';
		// check if code only contains numbers
		if(!empty($mobile)){
			if (!preg_match('/^[0-9]{6}+$/', $mobile)) {
				$nameErr = "Only numbers allowed";
			}
		}else{
			$nameErr = "code is required";
		}
		return $nameErr;
	}
	
	
	
}