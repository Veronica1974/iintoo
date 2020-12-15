<?php

class Controller_Main extends Controller
{
	public function __construct(){
		$this->model = new Model_Main();
		$this->view = new View();
	}
	
	public function action_index(){	
	    $data = $this->model->selectAllData();
	   
	    if($data['status']){
	        $this->view->generate('main_view.php', 'template_view.php', $data['data']);
	        
	    }
	}
	
	public function action_singleproduct($id){
	    $httpurl = 'http://'.$_SERVER['HTTP_HOST'];
	    $data = $this->model->singleProduct($id);
	    $data['httpurl'] = $httpurl;
	    if($data['status']){
	        $this->view->generate('singleproduct_view.php', 'template_view.php', $data);
	        
	    }else{
	        $this->view->generate('empty_view.php', 'template_view.php', $data);
	        
	    }
		
	}
	
}