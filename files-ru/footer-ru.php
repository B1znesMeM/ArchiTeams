<?php

require_once './database/connect.php';

$sql = $pdo->prepare('SELECT * FROM footer_ru');
$sql->execute();
$footer = $sql->fetch(PDO::FETCH_ASSOC);
?> 

<footer class="footer">

        <div class="container-footer">

            <div class="footer__wrapper">

                <div class="footer-logo">

                    <div class="footer__logo">

                        <h6 class="footer-logo-title"><?= $footer['title-archi'] ?></h6>

                        <img class="footer-logo-img" src="/image/<?php echo $footer['logo-footer'] ?>">

                    </div>

                    <div class="footer-navbar">

                        <li class="navbar__item-footer"><a class="footer-navbar-a" href="#about"><?= $footer['about'] ?></a></li>
    
                        <li class="navbar__item-footer"><a class="footer-navbar-a" href="#forms"><?= $footer['contact'] ?></a></li>
    
                        <li class="navbar__item-footer"><a class="footer-navbar-a" href="#project"><?= $footer['project'] ?></a></li>
    
                    </div>

                </div>

                <div class="footer__text">

                    <p class="footer__text-paragraph">

                    <?= $footer['paragraph'] ?>

                    </p>

                </div>

                <div class="footer__social">

                    <div class="social-footer">

                        <div class="social">

                            <div class="social-one">

                                <a class="social-one-a" href="#"><img class="social-image" src="/icons/<?php echo $footer['icon-one'] ?>"></a>

                            </div>

                            <div class="social-one">

                                <a class="social-one-a" href="#"><img class="social-image" src="/icons/<?php echo $footer['icon-two'] ?>"></a>

                            </div>

                            <div class="social-one">

                                <a class="social-one-a" href="https://github.com/B1znesMeM/Full-Page3D.git" target="_blank"><img class="social-image" src="/icons/<?php echo $footer['icon-three'] ?>"></a>

                            </div>

                        </div>

                        <div class="footer-social-text">

                            <p class="footer-social-text-paragraph"><?= $footer['pre-paragraph'] ?></p>

                        </div>

                    </div>

                </div>

            </div>

            <div class="footer-text-bottom">

                <h6 class="footer-company"><?= $footer['copyright'] ?></h6>
    
                <h6 class="footer-privacy"><a class="footer-privacy-a" href="/privacy.php"><?= $footer['policy'] ?></a></h6>
    
            </div>

        </div>

    </footer>
