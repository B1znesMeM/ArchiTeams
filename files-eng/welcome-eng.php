<?php

require_once './database/connect.php';

$sql = $pdo->prepare('SELECT * FROM about_eng');
$sql->execute();
$res = $sql->fetch(PDO::FETCH_ASSOC);
?> 


<section class="welcome" id="about">

        <div class="welcome-block">

            <div class="welcome-text">

                <div class="welcome-text-top">

                    <h1 class="welcome-title smooch"><?= $res['title'] ?></h1>

                    <p class="welcome-paragraph"><?= $res['pretitle'] ?></p>

                </div>

                <div class="welcome-text-bottom">

                    <h6 class="welcome-bottom-title">Archi</h6>

                    <p class="welcome-bottom-paragraph">
                    <?= $res['paragraph'] ?><span class="multiText"></span>
                    </p>

                </div>

            </div>

            <div class="welcome-img">

                <img class="welcome-image" src="/image/<?php echo $res['img'] ?>">

            </div>

        </div>

    </section>