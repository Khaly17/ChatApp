<?php
    session_start();
    include_once "config.php";
    $fname = mysqli_real_escape_string($conn, $_POST['fname']);
    $lname = mysqli_real_escape_string($conn, $_POST['lname']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    if(!empty($fname) && !empty($fname) && !empty($lname) && !empty($email) && !empty($password)){
        //Nous allons verifier si l email est correct
        if(filter_var($email,FILTER_VALIDATE_EMAIL)){
            //Nous allos verifier si l email se trouve dans notre base de donnees
            $sql = mysqli_query($conn, "SELECT email FROM users WHERE email = '{$email}'");
            if(mysqli_num_rows($sql) > 0){
                //si le mail existe 
                echo " $email exist !!!";
            }else{
                //let's chekh user upload file or not
                        if(isset($_FILES['image'])){
                            $imag_name = $_FILES['image']['name'];
                            $tmp_name = $_FILES['image']['tmp_name'];

                            $img_explode = explode('.', $imag_name);
                            $img_ext = end($img_explode);

                            $extensions = ['png', 'jpeg','jpg'];
                            
                            if(in_array($img_ext,$extensions) === true){
                                $time = time();
                                $new_img_name = $time.$imag_name; 
                                if(move_uploaded_file($tmp_name,"images/".$new_img_name)){
                                    $status = "Active now";
                                    $random_id = rand(time(), 10000000);
                                    //let's insert all user data inside table
                                    $sql2 = mysqli_query($conn, "INSERT INTO users (unique_id,fname,lname,email,password,img,status)
                                                        VALUES ({$random_id},'{$fname}','{$lname}','{$email}','{$password}','{$new_img_name}','{$status}')");
                                    if($sql2){//if these data inserted
                                    $sql3 = mysqli_query($conn, "SELECT * FROM users WHERE email = '{$email}'");
                                    if(mysqli_num_rows($sql3) > 0){
                                        $row = mysqli_fetch_assoc($sql3);
                                        $_SESSION['unique_id'] = $row['unique_id'];
                                        echo "success";
                                        
                                    }
                                    }else{
                                        echo 'Something went wrong!';
                                    }
                                }
                                
                            }else{
                                echo 'Please select an image file - jpeg.jpg,png';
                            }
                        }else{
                            echo "Please select an Image file";
                        }
                }
        }else{
            echo '$email - n est pas valid';
        }
    }else{
        echo 'All input are requered';
    }
?>