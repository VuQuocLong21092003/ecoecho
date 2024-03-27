<?php

include 'connect.php';

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM admin WHERE admin ='$username' AND password ='$password'";

    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) == 1) {
        header("location: welcome.php");
        exit();
    } else {
        echo "Account or password doesn't exist";
    }
}
?>

<form action="login.php" method="post">
    <label>
        username
    </label>
    <input type="text" name="username">
    <label>
        password
    </label>
    <input type="password" name="password">
    <button type="submit" name="login"> Login </button>
</form>