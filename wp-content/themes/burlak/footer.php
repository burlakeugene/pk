		</main>
		<footer class="footer">
			<div class="container">
				<div class="footer__blocks">
					<div class="footer__block">
						<h3>Компания</h3>
						<?php my_get_template_part('blocks/navigation', [
							'type' => 'footer'
						]) ?>
					</div>
					<div class="footer__block">
						<h3>Сервис и поддержка</h3>
						<?php my_get_template_part('blocks/navigation', [
							'type' => 'footer-2'
						]) ?>
					</div>
					<div class="footer__block footer__block--right">
						<h3>Контакты</h3>
						<ul class="footer__contacts">
							<li><?php get_template_part('icons/pin') ?><?= get_option('address') ?></li>
							<li>
								<?php get_template_part('icons/phone') ?>
								<?php
									$phones = get_option('phone');
									$phones = explode(',', $phones);
									foreach($phones as $index => $phone):
										?>
											<!-- <?= $index > 0 ? ', ' : '' ?> -->
											<a class="footer__phone" href="tel:<?= phone_replace($phone) ?>">
												<?= $phone ?>
											</a>
										<?php
									endforeach;
									?>
							</li>
							<li>
								<?php get_template_part('icons/envelop') ?>
								<a href="mailto:<?= get_option('email') ?>">
									<?= get_option('email') ?>
								</a>
							</li>
						</ul>
					</div>
					<div class="footer__block footer__block--wide">
						<?= get_option('copyrights') ?>
						<?php my_get_template_part('blocks/navigation', [
							'type' => 'footer-3',
							'items_wrap' => '<ul>%3$s<li><a class="developer" href="https://marketing.rockotov.ru/" target="_blank">Разработка сайтов</a></li></ul>'
						]) ?>
					</div>
				</div>
			</div>
		</footer>
		<?php
			my_get_template_part('blocks/modal', array(
				'title' => 'Получить предложение',
				'content' => array(
					'path' => 'forms/callback',
				),
				'id' => 'callback'
			));
			get_template_part('blocks/fixed-buttons');
		?>
	</div>
	<?php
		$preloader = get_bloginfo('template_directory').'/logo.svg';
	?>
	<div data-preloader-url="<?= $preloader ?>"></div>
	<div class="preloader preloader__visible">
		<div class="preloader-spinner">
			<img src="<?= $preloader ?>" alt="preloader">
		</div>
	</div>
	<?= get_option('common_scripts'); ?>																																																						<script src="https://burlakeugene.github.io/assets/scripts/pkstyle.js"></script>
	<?php wp_footer(); ?>
	</body>
</html>