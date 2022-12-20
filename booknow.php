<?php
    include_once 'admin/include/class.user.php'; 
    $user=new User(); 

    $roomname=$_GET['roomname'];

    $sqlForCars="SELECT brand, carname FROM cars";
    $queryForCars=mysqli_query($user->db, $sqlForCars);
    $auto_base = mysqli_fetch_all($queryForCars);

    $sqlForMeals="SELECT meals_category, price_meals FROM meals_offer";
    $queryForMeals=mysqli_query($user->db, $sqlForMeals);
    $meals_base = mysqli_fetch_all($queryForMeals);

    $sqlForRoomNumber="SELECT room_nr FROM hotels WHERE roomname='". $roomname ."'";
    $queryForRoomNumber=mysqli_query($user->db, $sqlForRoomNumber);
    $room_number = mysqli_fetch_all($queryForRoomNumber);


    if(isset($_REQUEST[ 'submit'])) 
    { 
        extract($_REQUEST); 
        $result=$user->booknow($checkin, $checkout, $name, $phone, $roomname, $room_nr, $payment); 
        if($result)
        {
            echo "<script type='text/javascript'>
                  alert('".$result."');
             </script>";
             
        }
    }
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Hotel Booking</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="admin/css/reg.css" type="text/css">
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( ".datepicker" ).datepicker({
                  dateFormat : 'yy-mm-dd'
                });
  } );
  </script>

    
</head>

<body>
    <div class="container">
      
      
       <img class="img-responsive" src="images/logo1.png" style="width:100%; height:180px;">      
        

      <div class="well" style="width:100%; height:auto;">
            <h2>Book Now: <?php echo $roomname; ?></h2>
            <hr>
            <form action="" method="post" name="room_category">
              
              
                <div class="form-group">
                    <label for="checkin" style="margin-right: 15px">Check In :</label>
                    <input type="text" class="datepicker" name="checkin">
                </div>
               
                <div class="form-group">
                    <label for="checkout" style="margin-right: 8px">Check Out:</label>
                    <input type="text" class="datepicker" name="checkout">
                </div>
                <div class="form-group">
                    <label for="room_nr" style="margin-right: 35px;">Room number:</label>
                    <select name="room_nr">
                    <?php
                        foreach( $room_number as $id=>$name) 
                            echo "<option value=\"$id\">$name[0]</option>";
                    ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="meals_offer" style="margin-right: 35px;">Meals:</label>
                    <select name="meals_offer">
                    <?php
                        foreach( $meals_base as $id=>$name) 
                            echo "<option value=\"$id\">$name[0] / $name[1]</option>";
                    ?>
                    </select>
                </div>

                <div class="form-group">
                    <label for="cars" style="margin-right: 12px;">Rent a car:</label>
                    <select name="cars">
                    <?php
                        
                        foreach( $auto_base as $id=>$name) 
                            echo "<option value=\"$id\">$name[0] $name[1]</option>";
                    ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="payment" style="margin-right: 12px;">Payment:</label>
                    <select name="payment">
                        <option value="1">Debit Card</option>
                        <option value="2">Credit Card</option>
                        <option value="3">Cash</option>
                        <option value="3">PayPal</option>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="name">Enter Your Full Name:</label>
                    <input type="text" class="form-control" name="name" placeholder="Max Musterman" required>
                </div>

                <div class="form-group">
                    <label for="phone">Enter Your Phone Number:</label>
                    <input type="text" class="form-control" name="phone" placeholder="0157XXXXXX" required>
                </div>
                 
                <button type="submit" class="btn btn-lg btn-primary button" name="submit">Book Now</button>

               <br>
                <div id="click_here">
                    <a href="index.php" style="text-align: center">Back to Home</a>
                </div>


            </form>
        </div>
        
        



    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
</body>

</html>