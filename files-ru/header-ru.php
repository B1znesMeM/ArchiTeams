<?php

require_once './database/connect.php';

$sql = $pdo->prepare('SELECT * FROM header_ru');
$sql->execute();
$res = $sql->fetch(PDO::FETCH_ASSOC);
?> 

<header class="header">

        <div class="container-header">

            <div class="header__inner">

                <div class="header__logo">

                    <img class="logo-image" src="/image/<?php echo $res['logo'] ?>">

                    <h6 class="logo-paragraph">rchi</h6>

                </div>

                <div class="navbar">

                    <li class="navbar__item"><a class="navbar__item-a" href="#about"><?= $res['h-about'] ?></a></li>

                    <li class="navbar__item"><a class="navbar__item-a" href="#forms"><?= $res['h-contact'] ?></a></li>

                    <li class="navbar__item"><a class="navbar__item-a" href="#project"><?= $res['h-project'] ?></a></li>

                </div>

                <div class="drop">

                    <div class="translate">

                        <a class="RU" href="/index.php">RU</a>

                        <span class="translate-ru-eng">/</span>

                        <a class="ENG" href="/index-eng.php">ENG</a>
                        
                    </div>

                    <div class="sun-moon">

                        <span class="material-symbols-outlined active">
                            light_mode
                        </span>

                        <span class="material-symbols-outlined moon">
                            dark_mode
                        </span>

                    </div>

                </div>

                <div class="burger">

                    <div class="bar">



                    </div>

                </div>

            </div>

        </div>

    </header>