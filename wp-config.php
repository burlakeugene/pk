<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки базы данных
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры базы данных: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'pkstyle' );

/** Имя пользователя базы данных */
define( 'DB_USER', 'root' );

/** Пароль к базе данных */
define( 'DB_PASSWORD', 'root' );

/** Имя сервера базы данных */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '&y~m?G+njl#^gsMFFeB7uNtw&K83NiYh %9B7GIFgL=p*%|M#m58*:gP&/w`Mk45' );
define( 'SECURE_AUTH_KEY',  'd*syR%3.8vyA>40zOEVVQw<JTmutJ(EEH.|SSxzaU>DlSj31~dkg`K3_F:~UCAh+' );
define( 'LOGGED_IN_KEY',    'xWkjiHv5 64=lV]@Xzm&Z,Pvt:^7,ZmtTBwP|~=Kyu_T :v;tn,aH~_T+TQ~5lrZ' );
define( 'NONCE_KEY',        'm2JJntBoQCbH+8pSFDpg8WOx|o_~D^0^|dw3!meF0P.rCR$@iQ<7Gb;6JLh+&@0z' );
define( 'AUTH_SALT',        'v%JN+t!8AE`D<[VO`U;m|$z`3~H8}zei(PF}*~B^z}([V@zy3`@HcyJcK-gv]nZt' );
define( 'SECURE_AUTH_SALT', '}?31`vWpww2>p&biqNjeqe_:-M?,/qz lcN,=1Wu 7d@$$cKgriRQ@0G48,[$RkT' );
define( 'LOGGED_IN_SALT',   ']j(n(7F8Cj~(j pFTsZ8D33c,=@&(hQ;#eF3;RO+tj#2Cnz_I==*3~?k7Y%`(<{Z' );
define( 'NONCE_SALT',       'WUp?bNH;/Q62T|UeqeHKs4%:nk<0L[8E!&W<Z32tQZ>EQtY6S0`1?At3)^|#a>Kk' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'pk_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
