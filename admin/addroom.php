<?php
include_once 'include/class.user.php'; 
$user=new User(); 

$roomname = isset($roomname) ? $roomname : '';
$room_nr = isset($room_nr ) ? $room_nr : '';
$area  = isset($area ) ? $area  : '';
$available  = isset($available  ) ? $available  : '';
$booked   = isset($booked   ) ? $booked   : '';


$sqlForRoomname="SELECT DISTINCT roomname FROM hotels";
$queryForRoomname=mysqli_query($user->db, $sqlForRoomname);
$roomname_base = mysqli_fetch_all($queryForRoomname);

$sqlForFloor="SELECT floor FROM hotels";
$queryForFloor=mysqli_query($user->db, $sqlForFloor);
$floor_base = mysqli_fetch_all($queryForFloor);

$sqlForRoomtype="SELECT DISTINCT roomtype FROM hotels";
$queryForRoomtype=mysqli_query($user->db, $sqlForRoomtype);
$roomtype_base = mysqli_fetch_all($queryForRoomtype);


if(isset($_REQUEST['submit'])) 
{ 
    extract($_REQUEST); 
    $result=$user->add_room($hotel_name, $roomname, $room_nr, $area, $floor, $room_qnty, $available, $booked, $roomtype, $facility, $price);

    if($result)
    {
        echo "<script type='text/javascript'>
              alert('Room Added Succesfully');
         </script>";
         
    }
    else
    {
         echo $result;
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
            <h2>Add Room Category</h2>
            <hr>
            <form action="" method="post" name="hotels">
            <div class="form-group">
                    <label for="hotels">Hotel Type Name:</label>
                    <input type="text" class="form-control" name="hotel_name" placeholder="new hotel" required>
                </div>
                <div class="form-group">
                    <label for="hotels" style="margin-right: 90px;">Room name:</label>
                    <select>
                        <!-- kod za iterisanje kroz kolonu tabele -->
                    <?php
                        foreach( $roomname_base as $id=>$name) 
                            echo "<option value=\"$id\">$name[0]</option>";
                    ?>
                    <!-- kod za iterisanje kroz kolonu tabele -->
                    </select>
                </div>
                <div class="form-group">
                    <label for="qty" style="margin-right: 30px;">Total number of rooms:</label>
                    <select name="room_qnty">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="floor" style="margin-right: 130px;">Floor:</label>
                    <select name="floor">
                        <option value="1">Floor 1</option>
                        <option value="2">Floor 2</option>
                        <option value="3">Floor 3</option>
                        <option value="4">Floor 4</option>
                    </select>
                    <!-- <select>

                    <?php
                        foreach($sprat_baza as $id=>$name) 
                            echo "<option value=\"$id\">$name[0]</option>";
                    ?>
                    </select> -->
                </div>
                <div class="form-group">
                    <label for="roomtype" style="margin-right: 93px;">Room Type:</label>
                    <select name="roomtype">
                    <?php
                        foreach( $roomtype_base as $id=>$name) 
                            echo "<option value=\"$id\">$name[0]</option>";
                    ?>
                    </select>
                </div>
                <div class="form-group">
                    <label for="bed_preference" style="margin-right: 70px;">Bed preference:</label>
                    <select name="bed_preference">
                        <option value="1">Twins beds</option>
                        <option value="2">Double bed</option>
                        <option value="2">King bed</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="Facility">Facility</label>
                    <textarea class="form-control" rows="2" name="facility"></textarea>
                </div>
                <div class="form-group">
                    <label for="price">Price Per Night:</label>
                    <input type="text" class="form-control" name="price" required>
                </div>
                <button type="submit" class="btn btn-lg btn-primary button" name="submit" value="Add Room">Add</button>

                <br>
                <div id="click_here">
                    <a href="../admin.php">Back to Admin Panel</a>
                </div>


            </form>
        </div>
    </div>

</body>

</html>