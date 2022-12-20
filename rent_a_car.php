<?php
include_once 'admin/include/class.user.php'; 
$user=new User();
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

    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    
    
    <style>
          
        .well {
            background: rgba(0, 0, 0, 0.7);
            border: none;
            height: auto;
            width: auto;
            text-align: center;
        }
        
        body {
            background-image: url('images/home_bg1.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100%;
        }
        
        h3 {
            color: #ffbb2b;
        }
        h5
        {
            color: navajowhite;
            font-family:  monospace;
        }


    </style>
    
    
</head>

<body>
    <div class="container">
      
      
       <img class="img-responsive" src="images/logo1.png" style="width:100%; height:180px;">      
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                    <li><a href="index.php">Home</a></li>
                    <li class="active"><a href="room.php">Room &amp; Facilities</a></li>
                    <li><a href="reservation.php">Online Reservation</a></li>
                    <li><a href="review.php">Review</a></li>
                    <li><a href="admin.php">Admin</a></li>
                    <li><a href="rent_a_car.php">Renta a car</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="http://www.facebook.com"><img src="images/facebook.png"></a></li>
                    <li><a href="http://www.twitter.com"><img src="images/twitter.png"></a></li>                    
                </ul>
            </div>
        </nav>
        
            <div class="row-md-5" style="color: #ed9e21;">
                <div class="well">
                    <h4><strong style="color: #ffbb2b">About rent a car</strong></h4><br>
                    <p>Online hotel reservations are a popular method for booking hotel rooms. Travelers can book rooms on a computer by using online security to protect their privacy and financial information and by using several online travel agents to compare prices and facilities at different hotels</p>
                    <br>
                    <p>Prior to the Internet, travelers could write, telephone the hotel directly, or use a travel agent to make a reservation. Nowadays, online travel agents have pictures of hotels and rooms, information on prices and deals, and even information on local resorts. Many also allow reviews of the traveler to be recorded with the online travel agent.</p>
                    <br>
                    <p>Online hotel reservations are also helpful for making last minute travel arrangements. Hotels may drop the price of a room if some rooms are still available. There are several websites that specialize in searches for deals on rooms.</p>
                </div>
            </div>  
            <hr>
        <?php
        
        $sql="SELECT * FROM cars";
        $result = mysqli_query($user->db, $sql);
        if($result)
        {
            if(mysqli_num_rows($result) > 0)
            {
//               ********************************************** Show Cars Category***********************
                while($row = mysqli_fetch_array($result))
                {
                    
                    echo "
                        <div class='col-md-4'>
                        
                            <div class='row-md-4 well'>
                                <h3>".$row['brand']."</h3><hr>
                                <h5>Model: ".$row['carname']."</h5>
                                <h5>Seats: ".$row['seats_nr']."</h5>
                                <h5>Transmission: ".$row['transmission_type']."</h5>
                                <h5>Volume: ".$row['volume_gearbox']."</h5>
                                <h5>Price: ".$row['price_car']."</h5>
                                <img src=".$row['pictures']." width='260' height='170'>
                            </div>
                            <div class='row-md-2'>
                                <a href='reservation.php'><button class='btn btn-primary button'>Book Now</button> </a>
                            </div>  
                            <br> 
                        </div>
                            
                            
                        
                    
                         "; //echo end
                    
                    
                }
                
                
                          
            }
            else
            {
                echo "NO Data Exist";
            }
        }
        else
        {
            echo "Cannot connect to server".$result;
        }
        
        
        
        
        
        ?>


    </div>
    
    
    
    
    





    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>

</html>