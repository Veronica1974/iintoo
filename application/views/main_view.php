<section class="products">
<?php 
if(!empty($data)){
    $count_data = count($data);
    for($i=0; $i<$count_data; $i++){
    ?>
    <div class="product-card">
    <div class="product-image">
      <a href="Main/singleproduct/<?php echo $data[$i]['idproduct'];?>" target="_blank"><img src="<?php echo $data[$i]['imgurl'];?>"></a>
      <?php if($data[$i]['insale'] == 2){?>
      <div class="cr cr-top cr-left cr-sticky cr-red">IN Sale</div>
      <?php }else if($data[$i]['insale'] == 1){?>
          <div class="cr cr-top cr-left cr-sticky cr-grey">NOT IN Sale</div>
     <?php  }?>
    </div>
    
    <div class="product-info">
      <h5><?php echo $data[$i]['title'];?></h5>
      <h6>$<?php echo $data[$i]['price'];?></h6>
      <?php if($data[$i]['brand']){?>
          <h6><?php echo $data[$i]['brand'];?></h6>
      <?php  }?>
      
    </div>
    
  </div>
<?php 
    }}
?>
  
</section>