<?php if($data): ?>
<div class="grid">
	<?php
    foreach ($data as $item):
			?>
				<div class="grid__item">
          <div class="grid__item__background" style="background-image: url(<?= $item['background']['sizes']['category'] ?>)"></div>
          <div class="grid__item__content">
            <div class="grid__item__title">
              <?= $item['title'] ?>
            </div>
            <div class="grid__item__text">
              <?= $item['text'] ?>
            </div>
          </div>
				</div>
			<?php
    endforeach;
	?>
</div>
<?php endif; ?>