<?php
// 1. Database Connection Credentials
$servername = "mysql8"; // Replace with your server name
$username = "root";  // Replace with your database username 
$password = "my_perfect_password";  // Replace with your database password
$database = "movies"; // Replace with the name of your database
$port = 3306; // Replace with the port your database server is listening

function get_movies(){
    global $servername, $username, $password, $database, $port;

    // 1. Fetch results into an associative array
    $movies = array();

    // 2. Create connection
    // $conn = new mysqli($servername, $username, $password, $database, $port);
    $conn = mysqli_connect($servername, $username, $password, $database, $port);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // 3. Execute the query
    $query = "select * from movie;";
    $result = $conn->query($query);

    // 4. Add an item to the $movies array
    while($row = $result->fetch_assoc()){
        $movies[] = $row; // Add an item to the array
       
        $actors[] = $row; // Add an item to the array

        $lastmovie = $movie[count($movies)-1];

        $movieId = $lastMovie['id'];

        $actors_sql = "SELECT a. * FROM movie_actor ma INNER JOIN actor a ON ma.actor_id = a.id = a.id WHERE ma.movie_id = $movieId";

        $actorResult = mysqli_query($conn, $actors_sql);
            if (!$actorResult){
                die("Error retrieving actors from movie $movieId: " . mysqli_error($conn));
            }

            $movies[count($movies) - 1]["actors"] = array();
            
            while ($actorRow = mysqli_fetch_assoc($actorResult)){
                $movies [count($movies)- 1]["actors"][] = $actorRow;
            }

    }
   
    /*
    echo "<pre>";
    print_r( $movies);
    echo "</pre>";
    */

    // Close the connection
    $conn->close();

    return $movies;
}

function get_actors(){

    global $servername, $username, $password, $database, $port;

    // 1. Fetch results into an associative array
    $actors = array();

    // 2. Create connection
    // $conn = new mysqli($servername, $username, $password, $database, $port);
    $conn = mysqli_connect($servername, $username, $password, $database, $port);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // 3. Execute the query
    $query = "select * from actors;";

    if(isset ($cognome)){
        $query = 'select * from actors where cognome like "%'. $cognome . '%" ';
    }
    $result = $conn->query($query);

    // 4. Add an item to the $actors array
    while($row = $result->fetch_assoc())
   
    /*
    echo "<pre>";
    print_r( $actors);
    echo "</pre>";
    */

    // Close the connection
    $conn->close();

    return $actors;

}

function get_directors(){

        global $servername, $username, $password, $database, $port;
    
        // 1. Fetch results into an associative array
        $directors = array();
    
        // 2. Create connection
        // $conn = new mysqli($servername, $username, $password, $database, $port);
        $conn = mysqli_connect($servername, $username, $password, $database, $port);
    
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
    
        // 3. Execute the query
        $query = "select * from directors;";
    
        if(isset ($cognome)){
            $query = 'select * from directors where cognome like "%'. $cognome . '%" ';
        }
        $result = $conn->query($query);
    
        // 4. Add an item to the $directors array
        while($row = $result->fetch_assoc()){
            $directors[] = $row; // Add an item to the array
        }
       
        /*
        echo "<pre>";
        print_r( $directors);
        echo "</pre>";
        */
    
        // Close the connection
        $conn->close();
    
        return $directors;
    
    }

function get_genres(){
    
        global $servername, $username, $password, $database, $port;
    
        // 1. Fetch results into an associative array
        $genres = array();
    
        // 2. Create connection
        // $conn = new mysqli($servername, $username, $password, $database, $port);
        $conn = mysqli_connect($servername, $username, $password, $database, $port);
    
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
    
        // 3. Execute the query
        $query = "select * from genres;";
    
        if(isset ($cognome)){
            $query = 'select * from genres where cognome like "%'. $cognome . '%" ';
        }
        $result = $conn->query($query);
    
        // 4. Add an item to the $genres array
        while($row = $result->fetch_assoc()){
            $genres[] = $row; // Add an item to the array
        }
       
        /*
        echo "<pre>";
        print_r( $genres);
        echo "</pre>";
        */
    
        // Close the connection
        $conn->close();
    
        return $genres;
}

?>
