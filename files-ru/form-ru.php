<?php

require_once './database/connect.php';

$sql = $pdo->prepare('SELECT * FROM form_ru');
$sql->execute();
$res = $sql->fetch(PDO::FETCH_ASSOC);
?> 

<section class="forms" id="forms">

        <div class="forms-image">

            <div class="form-laptop">

                <img class="laptop-img" src="/image/<?php echo $res['img-laptop'] ?>">

            </div>

            <div class="form-phone">

                <img class="phone-img" src="/image/<?php echo $res['img-phone'] ?>">

            </div>

        </div>

        <div class="content">

        <div class="right-side">

          <div class="topic-text"><?= $res['title'] ?></div>
          
          <p class="form-paragraph">
          <?= $res['paragraph'] ?>
          </p>

          <form action="send.php" name="form" method="post">
            <div class="input-box">
              <input
                type="text"
                placeholder="Ваше имя"
                name="name"
                id="name"
                data-reg="^[А-ЯЁ][а-яё]*$"
              />
              <label for="name" class="label-form"><?= $res['pre-input-one'] ?></label>
            </div>

            <div class="input-box">
              <input
                type="text"
                placeholder="Введите email"
                name="email"
                id="email"
                data-reg="^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$"
              />
              <label for="email"><?= $res['pre-input-two'] ?></label>
            </div>

            <div class="input-box">
              <input
                type="text"
                placeholder="Введите телефон"
                name="phone"
                id="phone"
                data-reg="^((\+7|7|8)+([0-9]){10})$"
              />
              <label for="phone"><?= $res['pre-input-three'] ?></label>

            </div>

            <div class="input-checkbox">

              <div class="checkbox-rect">

                <input type="checkbox" id="checkbox-rect1" name="check" checked>
                
                <label for="checkbox-rect1" class="checkbox-title">Вы соглашаетесь на <a class="checkbox-title-a" href="/privacy.php">обработку личных данных и соглашаетесь на политику конфидициальности</a></label>

              </div>

            </div>

            <div class="button">

              <input type="submit" id="button" value="Отправить" />

            </div>

          </form>

        </div>

      </div>

    </section>