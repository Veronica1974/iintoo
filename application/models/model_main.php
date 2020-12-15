<?php

class Model_Main extends Model{
	
	
	public function selectAllData(){
		
            $sql_select = "SELECT idproduct,title, imgurl, price, color, insale FROM product";		
            $result = $this->select($sql_select);
            
            if(!empty($result)){
                $response['data'] = $result;
                $response['status'] = 1;
            }else{
                $response['data'] = null;
                $response['status'] = 0;
            }
            return $response;
	}
	
	public function singleProduct($id){
	    $iddata = (is_numeric($id)) ? $id : 0 ;
	    $sql_select = "SELECT idproduct,title, imgurl, price, brand, insale, color, description FROM product WHERE idproduct = '".$iddata."'";
	    $result = $this->select($sql_select);
	   
	    if(!empty($result[0])){
	        $response['data'] = $result[0];
	        $response['status'] = 1;
	    }else{
	        $response['data'] = null;
	        $response['status'] = 0;
	    }
	    return $response;
			
		
	}
	

}
