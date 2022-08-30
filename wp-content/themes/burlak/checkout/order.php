<?php
  $id = $_GET['id'];
?>
<div class="checkout__order">
  <div class="checkout__order__icon">
    <svg viewBox="0 0 168 118" fill="none" xmlns="http://www.w3.org/2000/svg">
      <circle opacity="0.2" cx="85.5" cy="62.9998" r="55" fill="#FEB11A"/>
      <circle cx="85.5" cy="62.9998" r="44" fill="#FEB11A"/>
      <circle cx="85.5" cy="62.9998" r="32" fill="white"/>
      <path d="M80.9996 69.2999L74.6996 62.9999L72.5996 65.0999L80.9996 73.4999L98.9996 55.4999L96.8996 53.3999L80.9996 69.2999Z" fill="#FEB11A"/>
      <circle opacity="0.1" cx="153.5" cy="22.9998" r="3" stroke="#FEB11A" stroke-width="2"/>
      <circle cx="3.5" cy="107" r="3" fill="#FEB11A"/>
      <path opacity="0.3" d="M13.5 9.00933C20.6917 7.61037 21.956 6.47254 23.5104 0C25.0648 6.47254 26.329 7.61037 33.5 9.00933C26.329 10.4083 25.0648 11.5461 23.5104 18C21.956 11.5461 20.6917 10.4083 13.5 9.00933Z" fill="#FEB11A"/>
      <path d="M153.5 72.0073C158.534 70.9192 159.419 70.0342 160.507 65C161.595 70.0342 162.48 70.9192 167.5 72.0073C162.48 73.0953 161.595 73.9803 160.507 79C159.419 73.9803 158.534 73.0953 153.5 72.0073Z" fill="#FEB11A"/>
    </svg>
  </div>
  <div class="checkout__order__title">
    <h1>Спасибо!</h1>
  </div>
  <div class="checkout__order__text">
    Вы успешно оформили заказ. Наш менеджер свяжется с Вами в ближайшее время. <?= $id ? 'Номер вашего заказа #'.$id.'.' : ''  ?>
  </div>
  <div class="checkout__order__button">
    <a class="button button--black ajax" href="<?= esc_url(home_url()) ?>">
      Вернуться на главную
    </a>
  </div>
</div>