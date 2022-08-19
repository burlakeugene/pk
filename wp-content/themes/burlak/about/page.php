<?php
  $fields = get_fields();
  $blocks = $fields['blocks'];
?>

<div class="about">
  <?php
    foreach($blocks as $key => $block):
  ?>
    <div class="about__block about__block--<?= $block['type'] ?>">
      <div class="about__block__image"
      <?php if($block['type'] !== 'first'): ?>
        style="background-image: url(<?= $block['image']['sizes']['large'] ?>)"
      <?php endif; ?>
      >
        <?php if($block['type'] === 'first'):
          ?>
          <img src="<?= $block['image']['sizes']['large'] ?>" alt="<?= $block['image']['alt'] ?>">
        <?php endif; ?>
      </div>
      <div class="about__block__content">
        <?php
          if($block['title']):
          ?>
            <h2 class="about__block__title">
              <?= $block['title'] ?>
            </h2>
          <?php
          endif;
        ?>
        <?php
          if($block['text']):
          ?>
            <div class="about__block__text content">
              <?= $block['text'] ?>
            </div>
          <?php
          endif;
        ?>
      </div>
    </div>
  <?php
    endforeach;
  ?>
</div>