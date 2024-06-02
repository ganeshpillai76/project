<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $host = 'localhost';      
    $port = 5432;            
    $dbName = 'postgres';        
    $user = 'postgres';         
    $password = 'qwerty';     

 
    $dsn = "pgsql:host=$host;port=$port;dbName=$dbName;user=$user;password=$password";

    try {
        $db = new PDO($dsn);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        
        $Name = $_POST['Name'];
        $Organisation = $_POST['Organisation'];
        $Email = $_POST['Email'];
        $Phone = $_POST['Phone'];
        $Country = $_POST['Country'];

        
        $query = "INSERT INTO assess (Name, Organisation, Email, Phone, Country) VALUES (:Name, :Organisation, :Email, :Phone, :Country)";
        $stmt = $db->prepare($query);
        $stmt->execute([
            ':Name' => $Name,
            ':Organisation' => $Organisation,
            ':Email' => $Email,
            ':Phone' => $Phone,
            ':Country' => $Country
        ]);

        echo "Assessment booked successfully.";
    } catch (PDOException $e) {
        die("Error: " . $e->getMessage());
    }
} else {
    echo "Invalid request method.";
}
?>