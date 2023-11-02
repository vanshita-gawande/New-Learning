<?php


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $name = $_POST["namePRE"];
    $date = $_POST["datePRE"];
    $time = $_POST["timePRE"];

    // Connect to MySQL database (you need to fill in your credentials)
    $db = new mysqli("localhost", "root", "", "test");

    if ($db->connect_error) {
        die("Connection failed: " . $db->connect_error);
    }

     // Insert data into a table (you need to create the appropriate table)
     $stmt = $db->prepare("INSERT INTO premier (name, date, time) VALUES (?, ?, ?)");
     $stmt->bind_param("sss", $name, $date, $time);

     if ($stmt->execute()) {
         echo "Booking successful!";
     } else {
         echo "Error: " . $stmt->error;
     }
     $stmt->close();

 }

