<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="wrapper">
        <form action="" method="GET">
            <h1>Login</h1>
            <div class="input-box">
                <input type="text" placeholder="Username" name="username" id="username">
            </div>
            <div class="input-box">
                <input type="password" placeholder="Password" name="pw">
            </div>
            <input type="submit" value="Submit" name="submit" class="btn">
        </form>
        
        <?php
            
            
            // $conn = mysqli_connect("spring2024-gp9-library-azure.mysql.database.azure.com", "gp9library", "Securewalls2", "spring2024-gp9-library-azure");
           
            // $conn = mysqli_init();
            // mysqli_ssl_set($conn,NULL,NULL, "{path to CA cert}", NULL, NULL);
            // mysqli_real_connect($conn, "spring2024-gp9-library-azure.mysql.database.azure.com", "gp9library", "Securewalls2", "spring2024-gp9-library-azure
            // ", 3306, MYSQLI_CLIENT_SSL);
            
            $host = 'spring2024-gp9-library-azure.mysql.database.azure.comm';
            $username = 'gp9library';
            $password = 'Securewalls2';
            $db_name = 'spring2024-gp9-library-azure';
            
            //Establishes the connection
            $conn = mysqli_init();
            mysqli_real_connect($conn, $host, $username, $password, $db_name, 3306);
            if (mysqli_connect_errno($conn)) {
            die('Failed to connect to MySQL: '.mysqli_connect_error());
            }

            if (isset($_GET['submit']) && !empty($_GET['username'])) {
                $uname = $_GET['username'];
                $query = "SELECT * FROM accounts WHERE account_uname LIKE '%$uname%'";
                $result = mysqli_query($conn, $query);

                if (mysqli_num_rows($result)==1) {
                    session_start();
                    $r = mysqli_fetch_assoc($result);
                    $_SESSION["ID"] = $r["account_id"];
                    header('location: holds/holds.php');
                }
                unset($_GET['submit']);
            }
        ?>
    </div>

</body>
</html>