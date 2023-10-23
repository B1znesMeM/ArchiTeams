<?php

require_once './database/connect.php';

$sql = $pdo->prepare('SELECT * FROM why_eng');
$sql->execute();
$why = $sql->fetch(PDO::FETCH_ASSOC);
?> 

<section class="why">

<div class="container">

    <div class="why-wrapper">

    <div class="why__block-left">

        <div class="why__text-top">

            <h2 class="why__text-top-title smooch"><?= $why['title'] ?></h2>

        </div>

        <div class="why__text-bottom">

            <p class="why__text-bottom-paragraph">

            <?= $why['paragraph'] ?>

            </p>

        </div>

    </div>

        <div class="why__block-right">

            <div class="why-logo">

                <img src="../image/<?php echo $why['logo'] ?>" alt="logo">

                <h6 class="why-logo-title">rchi</h6>

            </div>

            <div class="why-gif">

                <img class="why__gif" src="../image/<?php echo $why['gif'] ?>">

            </div>  

        </div>

    </div>

</div>

</section>