<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $host = 'localhost';      
    $port = 5432;              
    $dbname = 'postgres';  
    $user = 'postgres';    
    $password = 'qwerty';

 
    $dsn = "pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$password";

    try {
        $db = new PDO($dsn);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      
        $firstname = $_POST['firstname'];
        $lastname = $_POST['lastname'];
        $email = $_POST['email'];
        $website = $_POST['website'];
        $message = $_POST['message'];

       
        $query = "INSERT INTO consult (firstname, lastname, email, website, message) VALUES (:firstname, :lastname, :email, :website, :message)";
        $stmt = $db->prepare($query);
        $stmt->execute([
            ':firstname' => $firstname,
            ':lastname' => $lastname,
            ':email' => $email,
            ':website' => $website,
            ':message' => $message
        ]);

        echo "Form submitted successfully.";
    } catch (PDOException $e) {
        die("Error: " . $e->getMessage());
    }
} else {
    echo "Invalid request method.";
}
?>