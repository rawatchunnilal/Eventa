<?php 
$insert=false;

if (isset($_POST['name'])) {

  $server ="localhost";
  $username ="root";
  $password ="";

  $con =mysqli_connect($server, $username, $password);

  if ( !$con) {
    die("Connection to this database faied due to " . mysqli_connect_error());
  }

  // echo "Success connecting to db";


  $name =$_POST['name'];
  $email =$_POST['email'];
  $password =$_POST['passkey'];
  $sql ="INSERT INTO `signin`.`signin` ( `Name`, `E-mail`, `Password`, `Time`)
 VALUES ('$name', '$email', '$password', current_timestamp());
  ";
 // echo $sql;

  if ($con->query($sql)==true) {
    $insert =true;
    // echo "Successfully Inserted";
  }

  else {
    echo "Error: $sql <br> $con->error";
  }

  $con->close();
}

?>
<!DOCTYPE html>
<html>
  <style>
  * {
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 0;
  background-image: url("https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
  background-repeat: no-repeat;
  background-size: 100%;
  font-family: Arial, sans-serif;
}

.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.signup-form {
  padding: 40px;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.signup-form .p {
  color: green;
  font-family: 'Times New Roman', Times, serif;
}

h1 {
  margin-top: 0;
  text-align: center;
}

.form-group {
  margin-bottom: 20px;
}

label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

input[type="text"],
input[type="email"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  border-radius: 5px;
  border: none;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}

input[type="submit"] {
  background-color: #008cba;
  color: #fff;
  padding: 10px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #006f8c;
}

.bottom-text {
  margin-top: 20px;
  text-align: center;
  font-size: 14px;
}

.bottom-text a {
  color: #008cba;
  text-decoration: none;
}

.bottom-text p {
  margin-top: 10px;
}

</style>
<head>
  <title>Signup Page</title>
</head>
<body>
  <div class="container">
    <div class="signup-form">
      <h1>Create Account</h1>
<?php 
if ($insert ==true) {
  echo "<p>Thanks for joining us</p>";
}
$insert =false;
?>
<form action="" method="post"><div class="form-group"><label for="name">Full Name</label><input type="text" id="name" name="name" required />
</div><div class="form-group"><label for="email">Email</label><input type="email" id="email" name="email" required /></div>
<div class="form-group"><label for="password">Password</label><input type="password" id="password" name="password" required /></div>
<div class="form-group"><label for="confirm-password">Confirm Password</label><input type="password"
id="passkey"
name="passkey"
required /></div>
<input type="submit" value="Sign Up" />
</form>
</div>
</div>
</body>
</html>