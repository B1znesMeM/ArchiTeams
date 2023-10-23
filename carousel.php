<?php

require_once './database/connect.php';

$sql = $pdo->prepare('SELECT * FROM carousel');
$sql->execute();
$carousel = $sql->fetch(PDO::FETCH_ASSOC);
?> 


<section class="carousel" id="project">

        <div class="owl-carousel owl-carousel1 owl-theme">

            <div> <img class="carousel-img" src="/image/<?php echo $carousel['img-one'] ?>"> </div>

            <div> <img class="carousel-img" src="/image/<?php echo $carousel['img-two'] ?>"> </div>

            <div> <img class="carousel-img" src="/image/<?php echo $carousel['img-three'] ?>"> </div>

            <div> <img class="carousel-img" src="/image/<?php echo $carousel['img-four'] ?>"> </div>

            <div> <img class="carousel-img" src="/image/<?php echo $carousel['img-five'] ?>"> </div>

            <div> <img class="carousel-img" src="/image/<?php echo $carousel['img-six'] ?>"> </div>

        </div>

    </section>