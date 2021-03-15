<?php
    session_start();
    if(isset($_SESSION['unique_id'])){//if use is logged in
        header("location: users.php");
    }
?>
<?php include_once "header.php"; ?>   
    <body>
        <div class="wrapper">
            <section class="from login">
                <header>Realtime Chat App</header>
                <form action="#" autocomplete = "off">
                    <div class="error-txt"></div>
                        <div class="field input">
                            <label>Email Address</label>
                            <input type="text" name="email" placeholder="enter your email">
                        </div>
                        <div class="field input">
                            <label>Password</label>
                            <input type="password" name="password" placeholder="Enter your password">
                            <i class="fas fa-eye"></i>
                        </div>
                        <div class="field button">
                            
                            <input type="submit" value="Continue to chat">
                        </div>
                    
                </form>
                <div class="link">Not yet signed up?<a href="index.php">Signup now</a></div>
            </section>
        </div>
        <script src="JavaScript/pass-show-hide.js"></script>
        <script src="JavaScript/login.js"></script>
    </body>
</html>