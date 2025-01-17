<?php
// Check if the form was submitted
if (isset($_POST["submit"])) 
{

    // Create a database connection
    $mysqli = mysqli_connect("localhost", "root", "", "maindatabase");

    // Check for database connection errors
    if ($mysqli->connect_error) 
    {
        die("Connection failed: " . $mysqli->connect_error);
    }

    // Check if an image was selected for upload
    if (isset($_POST["image"])) 
    {
        $productImage = $_POST["image"];
        $productName = $_POST["name"];
        $productCode = $_POST["code"];
        $productPrice = $_POST["price"];

        // Insert the image into the database
        $query = "INSERT INTO products (name, code, price, image) VALUES (?, ?, ?, ?)";
        $stmt = $mysqli->prepare($query);
        $stmt->bind_param("ssds", $productName, $productCode, $productPrice, $productImage);
        if ($stmt->execute()) 
        {
            echo "Image uploaded successfully.";
        } 
        else 
        {
            echo "Error uploading image: " . $stmt->error;
        }

        // Close the database connection
        $stmt->close();
        $mysqli->close();
    }
}
?>
