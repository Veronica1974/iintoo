<main class="container">
<?php 
if(!empty($data['data'])){
?>
      <!-- Left Column / Headphones Image -->
      <div class="left-column">
      
     <?php 
     $html_img = '';
     switch($data['data']['color']){
         case 'red':
             $html_img =  '<img data-image="black" src="'.$data['httpurl'].'/images/black.png" alt="">
             <img data-image="blue" src="'.$data['httpurl'].'/images/blue.png" alt="">
             <img data-image="red" class="active" src="'.$data['httpurl'].'/images/red.png" alt="">';
             break;
         case 'blue':
             $html_img =  '<img data-image="black" src="'.$data['httpurl'].'/images/black.png" alt="">
             <img data-image="red" src="'.$data['httpurl'].'/images/red.png" alt="">
             <img data-image="blue" class="active" src="'.$data['httpurl'].'/images/blue.png" alt="">';
             break;
         case 'black':
             $html_img =  '<img data-image="red" src="'.$data['httpurl'].'/images/red.png" alt="">
             <img data-image="blue" src="'.$data['httpurl'].'/images/blue.png" alt="">
             <img data-image="black" class="active" src="'.$data['httpurl'].'/images/black.png" alt="">';
             break;
         default:
     }
     
     echo $html_img;
     ?>
        
      </div>


      <!-- Right Column -->
      <div class="right-column">

        <!-- Product Description -->
        <div class="product-description">
          <span><?php echo $data['data']['title'];?></span>
          <h1><?php echo $data['data']['brand'];?></h1>
          <p>
          <?php echo $data['data']['description'];?>
          </p>
        </div>

        <!-- Product Configuration -->
        <div class="product-configuration">

          <!-- Product Color -->
          <div class="product-color">
            <span>Color</span>

            <div class="color-choose">
              <div>
                <input data-image="red" type="radio" id="red" name="color" value="red" checked>
                <label for="red"><span></span></label>
              </div>
              <div>
                <input data-image="blue" type="radio" id="blue" name="color" value="blue">
                <label for="blue"><span></span></label>
              </div>
              <div>
                <input data-image="black" type="radio" id="black" name="color" value="black">
                <label for="black"><span></span></label>
              </div>
            </div>

          </div>          
        </div>

        <!-- Product Pricing -->
        <div class="product-price">
          <span><?php echo $data['data']['price'];?>$</span>
          
        </div>
      </div>
      <?php }?>
    </main>