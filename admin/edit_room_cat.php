<?php
include_once 'include/class.user.php'; 
$user=new User(); 



$roomname  = $_GET['roomname'];





$sql="SELECT * FROM hotels, customers, bookings WHERE roomname='$roomname'";
$query = mysqli_query($user->db, $sql);
$row = mysqli_fetch_array($query);
 

if(isset($_REQUEST[ 'submit'])) 
{ 
    extract($_REQUEST); 
                                
    $result=$user->edit_room_cat( $hotel_name, $roomname, $room_nr, $area, $floor, $room_qnty, $available, $booked, $roomtype, $facility, $price);
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
    <title>Admin Panel</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/reg.css" type="text/css">
    
</head>

<body>
    <div class="container">
        <div class="well">
            <h2>Edit Room Category</h2>
            <hr>
            <form action="" method="post" name="room_category">
                <div class="form-group">
                    <label for="hotel_name">Hotel Type Name:</label>
                    <input type="text" class="form-control" name="hotel_name" value="<?php echo $row['hotel_name'] ?>" required>
                </div>
                <div class="form-group">
                    <label for="roomname" style="margin-right: 73px;">Room name:</label>
                    <input type="text" class="form-control" name="roomname" value="<?php echo $row['roomname'] ?>" required>
                </div>
                <div class="form-group">
                    <label for="room_qnty" style="margin-right: 15px;">Total number of rooms:</label>
                    <input type="text" class="form-control" name="room_qnty" value="<?php echo $row['room_qnty'] ?>" required>
                </div>
                <div class="form-group">
                    <label for="floor" style="margin-right: 115px;">Floor:</label>
                    <input type="text" class="form-control" name="floor" value="<?php echo $row['floor'] ?>" required>
                </div>
                <div class="form-group">
                    <label for="area" style="margin-right: 117px;">Area:</label>
                    <input type="text" class="form-control" name="area" value="<?php echo $row['area'] ?>" required>
                </div>
                <div class="form-group">
                    <label for="booked" style="margin-right: 117px;">booked:</label>
                    <input type="text" class="form-control" name="booked" value="<?php echo $row['booked'] ?>" required>
                </div>
                <div class="form-group">
                    <label for="available" style="margin-right: 117px;">available:</label>
                    <input type="text" class="form-control" name="available" value="<?php echo $row['available'] ?>" required>
                </div>
                <div class="form-group">
                    <label for="roomtype" style="margin-right: 117px;">roomtype:</label>
                    <input type="text" class="form-control" name="roomtype" value="<?php echo $row['roomtype'] ?>" required>
                </div>
                <div class="form-group">
                    <label for="room_nr" style="margin-right: 50px;">Nubmer of room:</label>
                    <input type="text" class="form-control" name="room_nr" value="<?php echo $row['room_nr'] ?>" required>
                </div>
                <div class="form-group">
                    <label for="Facility">Facility</label>
                    <textarea class="form-control" rows="2" name="facility"><?php echo $row['facility'] ?></textarea>
                </div>
               <div class="form-group">
                    <label for="price">Price Per Night:</label>
                    <input type="text" class="form-control" name="price" value="<?php echo $row['price'] ?>" required>
                </div>
                <button type="submit" class="btn btn-lg btn-primary button" name="submit">Update</button>

               <br>
                <div id="click_here">
                    <a href="../admin.php">Back to Admin Panel</a>
                </div>


            </form>
        </div>
    </div>

</body>

</html>