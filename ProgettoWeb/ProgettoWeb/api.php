<?php

    require_once("connect.php");
    if ($_SERVER['PATH_INFO'] == '/movies') {
        $movies = get_movies();
        http_response_code(200);
        header('Content-Type: application/json');
        echo json_encode([
        'status' => 200, 
        'message' => 'method allowed by Alessandro Armenise',
        'payload' => $movies
        ]);

    }

    if ($_SERVER['PATH_INFO'] == '/actors') {
        if (isset($_GET['cognome'])){
            $actors = get_actors(($_GET['cognome']));
        }else $actors = get_actors(NULL);
        http_response_code(200);
        header('Content-Type: application/json');
        echo json_encode([
        'status' => 200, 
        'message' => 'method allowed by Alessandro Armenise',
        'payload' => $actors
        ]);

    }

    if ($_SERVER['PATH_INFO'] == '/directors') {
        if (isset($_GET['cognome'])){
            $directors = get_directors(($_GET['cognome']));
        }else $genres = get_genres(NULL);
        http_response_code(200);
        header('Content-Type: application/json');
        echo json_encode([
        'status' => 200, 
        'message' => 'method allowed by Alessandro Armenise',
        'payload' => $directors
        ]);

    }

    if ($_SERVER['PATH_INFO'] == '/genres') {
        if (isset($_GET['nome'])){
            $genres = get_genres(($_GET['nome']));
        }else $genres = get_genres(NULL);
        http_response_code(200);
        header('Content-Type: application/json');
        echo json_encode([
        'status' => 200, 
        'message' => 'method allowed by Alessandro Armenise',
        'payload' => $genres
        ]);

    }

//
    exit;
?>