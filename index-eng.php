<?php
require './database/connect.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Archi</title>

    <link rel="stylesheet" href="/style/reset.css">
    <link rel="stylesheet" href="/style/style-eng.css">

    <link rel="stylesheet" href="/style/owl.carousel.min.css">
    <link rel="stylesheet" href="/style/owl.theme.default.min.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

    <style>
        body { 
            -ms-user-select: none; 
            -moz-user-select: none; 
            -webkit-user-select: none; 
            user-select: none; 
        }
    </style>

</head>
<body>

    <?php require './files-eng/header-eng.php' ?>

    <?php require './files-eng/welcome-eng.php' ?>

    <?php require './files-eng/services-eng.php' ?>

    <?php require './files-eng/form-eng.php' ?>

    <?php require './carousel.php' ?>

    <?php require './files-eng/way-eng.php' ?>

    <?php require './files-eng/why-eng.php' ?>

    <?php require './files-eng/footer-eng.php' ?>

    <?php require './arrow.php' ?>


</body>
</html>
<script src="/js/code.jquery.com_jquery-3.7.1.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/script.js"></script>

<script src="https://unpkg.com/typed.js@2.0.16/dist/typed.umd.js"></script>

<script>
let typedEffect = new Typed(".multiText", {
    strings: ["Practicality." , "Dynamism.", "Beauty."],
    loop: true,
    typeSpeed: 100,
    backSpeed: 80,
    backDelay: 1400,
})
</script>

</body>
</html>