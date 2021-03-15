<?php
    session_start();
    if(isset($_SESSION['unique_id'])){//if use is logged in
        header("location: users.php");
    }
?>
<?php include_once "header.php"; ?>   
    <body>
        <div class="wrapper">
            <section class="from signup">
                <header>Realtime Chat App</header>
                <form action="#" enctype="multipart/form-data" autocomplete="off">
                    <div class="error-txt"></div>
                    <div class="name-details">
                        <div class="field input">
                            <label>First Name</label>
                            <input type="text" name="fname" placeholder="First name" required="required">
                        </div>
                        <div class="field input">
                            <label>Last Name</label>
                            <input type="text" name="lname" placeholder="Last name" required="required">
                        </div></div>
                        <div class="field input">
                            <label>Email Address</label>
                            <input type="text" name="email" placeholder="enter your email" required="required">
                        </div>
                        <div class="field input">
                            <label>Password</label>
                            <input type="password" name="password" placeholder="Enter new password" required="required">
                            <i class="fas fa-eye"></i>
                        </div>
                        <div class="field image">
                            <label>Select image</label>
                            <input type="file" name="image" required="required">
                        </div>
                        <div class="field button">
                            
                            <input type="submit" value="Continue to chat">
                        </div>
                    
                </form>
                <div class="link">Already signed up?<a href="login.php">Login now</a></div>
            </section>
        </div>
        <script src="JavaScript/pass-show-hide.js"></script>
        <script src="JavaScript/signup.js"></script>
    </body>
</html>