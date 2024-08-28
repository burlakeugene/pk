<?php if($data):  ?>
  <div class="list">
    <?php foreach($data as $item): ?>
      <div class="list__item">
        <?php if($item['image']): ?>
          <div class="list__item__image">
            <img src="<?= $item['image']['sizes']['thumbnail'] ?>" alt="<?= $item['title'] ?>">
          </div>
        <?php endif; ?>
        <div class="list__item__content">
          <?php if($item['title']): ?>
            <div class="list__item__title">
              <?= $item['title'] ?>
            </div>
          <?php endif; ?>
          <?php if($item['text']): ?>
            <div class="list__item__text">
              <?php
                my_get_template_part('landing/blocks/content/text', [
                  'data' => $item['text'],
                  'dark' => $dark
                ]);
              ?>
            </div>
          <?php endif; ?>
        </div>
      </div>
    <?php endforeach; ?>
  </div>
<?php endif; ?>