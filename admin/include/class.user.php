<?php
    include "db_config.php";
        class user
        {
            public $db;
            public function __construct()
            {
                $this->db=new mysqli(DB_SERVER,DB_USERNAME,DB_PASSWORD,'hotel');
                if(mysqli_connect_errno())
                {
                    echo "Error: Could not connect to database.";
                    exit;
                }
            }
            public function reg_user($name, $username, $password, $email)
            {
                //$password=md5($password);
                $sql="SELECT * FROM manager WHERE uname='$username' OR uemail='$email'";
                $check=$this->db->query($sql);
                $count_row=$check->num_rows;
                if($count_row==0)
                {
                    $sql1="INSERT INTO manager SET uname='$username', upass='$password', fullname='$name', uemail='$email'";
                    $result= mysqli_query($this->db,$sql1) or die(mysqli_connect_errno()."Data cannot inserted");
                    return $result;
                }
                else
                {
                    return false;
                }
            }
            
            
            public function add_room($hotel_name, $roomname,  $room_nr, $area, $floor, $room_qnty, $available, $booked, $roomtype, $facility, $price)
            {
                
                    $available=$room_qnty;
                    $booked=0;
                    
                    $sql="INSERT INTO hotels SET hotel_name='$hotel_name', roomname='$roomname', room_nr='$room_nr', area='$area', floor='$floor', room_qnty='$room_qnty', available='$available', booked='$booked', roomtype='$roomtype', facility='$facility', price='$price'";
                    $result= mysqli_query($this->db,$sql) or die(mysqli_connect_errno()."Data cannot inserted");
                
                
                    for($i=0;$i<$room_qnty;$i++)
                    {
                        $sql2="INSERT INTO hotels SET roomname='$roomname', booked='false'";
                        mysqli_query($this->db,$sql2);
                        
                    }
                
                    return $result;
                

            }
            
            public function check_available($checkin, $checkout)
            {
                
                
                   $sql="
                        SELECT DISTINCT customer_id FROM customers 
                        WHERE customer_id NOT IN (
                            SELECT DISTINCT customer_id
                            FROM bookings 
                            WHERE 
                                (checkin <= '$checkin' AND checkout >='$checkout')
                                OR (checkin >= '$checkin' AND checkin <='$checkout') 
                                OR (checkin <= '$checkin' AND checkout >='$checkin') 
                        )";
                    $check= mysqli_query($this->db,$sql)  or die(mysqli_connect_errno()."Query Doesnt run");;

                
                    return $check;
                

            }
            
            
            
            // problem???????????????????????????????????????????
            public function booknow($checkin, $checkout, $name, $phone, $roomname, $room_nr, $payment)
            {
                    
                    $sql="SELECT * FROM hotels, bookings 
                          WHERE hotels.roomname='$roomname', hotels.room_nr='$room_nr', bookings.payment='$payment' 
                          AND (hotels.roomname NOT IN (SELECT DISTINCT hotels.roomname
                          FROM hotels, bookings 
                          WHERE bookings.checkin <= '$checkin' 
                          AND bookings.checkout >='$checkout'))";
                             echo "**". $sql  ."**";
                    $check= mysqli_query($this->db,$sql)  or die(mysqli_connect_errno()."Data herecannot inserted");
                 
                    if(mysqli_num_rows($check) > 0)
                    {
                        $row = mysqli_fetch_array($check);
                        $id=$row['roomname'];
                        
                        $sql2 = "UPDATE bookings, customers, hotels SET bookings.checkin='$checkin', bookings.checkout='$checkout', customers.name='$name', customers.phone='$phone', bookings.payment='$payment', bookings.book='true' WHERE hotels.roomname= '$id'"; 
                        $send = mysqli_query($this->db,$sql2);
                        if($send)
                        {
                            $result="Your Room has been booked!!";
                        }
                        else
                        {
                            $result="Sorry, Internel Error";
                        }
                    }
                    else                       
                    {
                        $result = "No Room Is Available";
                    }
    
                    return $result;
                

            }
            
            
            
            
             public function edit_all_room($checkin, $checkout, $name, $phone, $id)
            {
                                
                        $sql2="UPDATE hotels, customers, bookings  SET bookings.checkin='$checkin', bookings.checkout='$checkout', customers.name='$name', customers.phone='$phone', hotels.booked='true' WHERE hotels.roomname= '$id'";
                   
                        $send=mysqli_query($this->db,$sql2);
                        if($send)
                        {
                            $result="Your Room has been booked!!";
                        }
                        else
                        {
                            $result="Sorry, Internel Error";
                        }
                    
                
                    return $result;
                

            }
            
            
            
            
            
            public function edit_room_cat($hotel_name, $roomname, $room_nr, $area, $floor, $room_qnty, $available, $booked, $roomtype, $facility, $price)
            {
                    
                 
                        $sql2="DELETE FROM hotels WHERE roomname='$roomname'";
                     
                        mysqli_query($this->db,$sql2);
                 
                 
                        for($i=0;$i<$room_qnty;$i++)
                        {
                            $sql3="INSERT INTO hotels SET roomname='$roomname', booked='false'";
                            mysqli_query($this->db,$sql3);

                        }

                 
                        $available=$room_qnty;
                        $booked=0;
                 
                        $sql="UPDATE hotels  SET roomname='$roomname', available='$available', booked='$booked', room_nr='$room_nr', area='$area', floor='$floor',roomtype='$roomtype', facility='$facility', price='$price' WHERE roomname='$roomname'";
                     
                        $send=mysqli_query($this->db,$sql);
                        if($send)
                        {
                            $result="Updated Successfully!!";
                        }
                        else
                        {
                            $result="Sorry, Internel Error";
                        }
  
                    
                
                    return $result;
                

            }
            
            
            
            
            
            public function check_login($emailusername,$password)
            {
                //$password=md5($password);
                $sql2="SELECT uid_id from manager WHERE uemail='$emailusername' OR uname='$emailusername' and upass='$password'";
                $result=mysqli_query($this->db,$sql2);
                $user_data=mysqli_fetch_array($result);
                $count_row=$result->num_rows;
                
                if($count_row==1)
                {
                    $_SESSION['login']=true;
                    $_SESSION['uid_id']=$user_data['uid'];
                    return true;    
                }
                else
                {
                    return false;
                }
            }

            public function get_session()
            {
                return $_SESSION['login'];
            }
            public function user_logout()
            {
                $_SESSION['login']=false;
                session_destroy();
            }
        }

?>