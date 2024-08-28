<?php if($data):  ?>
  <div class="steps">
    <?php foreach($data as $index => $item): ?>
      <div class="steps__item">
        <div class="steps__item__index">
          <?= $index + 1 ?>
        </div>
        <div class="steps__item__text">
          <?php
            my_get_template_part('landing/blocks/content/text', [
              'data' => $item['text'],
              'dark' => $dark
            ]);
          ?>
        </div>
      </div>
    <?php endforeach; ?>
  </div>
<?php endif; ?>