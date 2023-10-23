<?php

require_once './database/connect.php';

$sql = $pdo->prepare('SELECT * FROM way_eng');
$sql->execute();
$way = $sql->fetch(PDO::FETCH_ASSOC);
?> 


<section class="way">

        <div class="way__inner">

            <div class="way__block">

                <h2 class="way-title"><?= $way['title-null'] ?></h2>

                <div class="way__block-wrapper">

                    <div class="way__block-inner">

                        <div class="way__block-one">

                            <img class="way__block-number" src="/image/<?php echo $way['img-one'] ?>">

                        </div>

                        <div class="way__block-text">

                            <h3 class="way__block-text-title"><?= $way['title-one'] ?></h3>

                            <p class="way__block-text-paragraph"><?= $way['paragraph-one'] ?></p>

                        </div>

                    </div>

                    <div class="way__block-inner">

                        <div class="way__block-one">

                            <img class="way__block-number" src="/image/<?php echo $way['img-two'] ?>">

                        </div>

                        <div class="way__block-text">

                            <h3 class="way__block-text-title"><?= $way['title-two'] ?></h3>

                            <p class="way__block-text-paragraph">
                            <?= $way['paragraph-two'] ?>
                            </p>

                        </div>

                    </div>

                    <div class="way__block-inner">

                        <div class="way__block-one">

                            <img class="way__block-number" src="/image/<?php echo $way['img-three'] ?>">

                        </div>

                        <div class="way__block-text">

                            <h3 class="way__block-text-title"><?= $way['title-three'] ?></h3>

                            <p class="way__block-text-paragraph">
                            <?= $way['paragraph-three'] ?>
                            </p>

                        </div>

                    </div>

                </div>

            </div>

            <div class="way-image">

                <img class="way-background" src="/image/<?php echo $way['img-background'] ?>">

                <img class="way-img" src="/image/<?php echo $way['img-bush'] ?>">

            </div>

        </div>

    </section>