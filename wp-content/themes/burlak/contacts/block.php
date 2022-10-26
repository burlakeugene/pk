<?php
  $page = get_page_by_path('contacts');
  $id = $page->ID;
  $address = get_option('address');
  $phones = explode(',', get_option('phone'));
  $email = get_option('email');
  $map = get_field('map', $id);
  $map['pin'] = array(
    'href' => $map['pin']['url'],
    'width' => $map['pin']['width'],
    'height' => $map['pin']['height']
  );
?>
  <div class="contacts">
    <div class="map contacts__map"
      id="contacts-map"
      data-center="<?= $map['coords']['lat'] ?>,<?= $map['coords']['lng'] + 0.11 ?>"
      data-point='<?= json_encode($map) ?>'
      ></div>
    <div class="map contacts__map--mobile"
      id="contacts-map-mobile"
      data-center="<?= $map['coords']['lat'] ?>,<?= $map['coords']['lng'] ?>"
      data-point='<?= json_encode($map) ?>'
    ></div>
    <div class="contacts__content allow-select">
      <div class="contacts__content__inner">
        <?php
          my_get_template_part('blocks/title', [
            'text' => 'Мы находимся',
            'apperance' => ['theme', 'dark'],
            'mini' => true
          ])
        ?>
        <div class="contacts__content__blocks">
          <div class="contacts__content__block">
            <div class="contacts__content__block__text">
              Адрес
            </div>
            <div class="contacts__content__block__value">
              <?php get_template_part('icons/pin') ?>
              <div><?= $address ?></div>
            </div>
          </div>
          <?php if($phones): ?>
          <div class="contacts__content__block">
            <div class="contacts__content__block__text">
              Номер телефона
            </div>
            <div class="contacts__content__block__value">
              <?php get_template_part('icons/phone') ?>
              <div>
                <?php
                  foreach($phones as $index => $phone):
                    ?>
                      <?= $index > 0 ? '<br /> ' : '' ?>
                      <a href="tel:<?= phone_replace($phone) ?>">
                        <?= $phone ?>
                      </a>
                    <?php
                  endforeach;
                ?>
              </div>
            </div>
          </div>
          <?php endif; ?>
          <?php if($email): ?>
          <div class="contacts__content__block">
            <div class="contacts__content__block__text">
              Почта
            </div>
            <div class="contacts__content__block__value">
              <?php get_template_part('icons/envelop') ?>
              <a href="mailto:<?= $email ?>">
                <?= $email ?>
              </a>
            </div>
          </div>
          <?php endif; ?>
        </div>
        <button data-callback="Карта" class="button">
          Отправить заявку
        </button>
      </div>
    </div>
  </div>