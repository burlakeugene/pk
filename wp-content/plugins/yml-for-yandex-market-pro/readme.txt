=== YML for Yandex Market Pro ===
Contributors: icopydoc
Donate link: https://pay.cloudtips.ru/p/45d8ff3f
Tags: yml, yandex, market, export, woocommerce
Requires at least: 4.5
Tested up to: 6.1.1
Stable tag: 4.5.1
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

Creates a YML-feed to upload to Yandex market.

== Description ==

Сreates a YML-feed to upload to Yandex market. The plug-in Woocommerce is required!

= Format and method requirements for product data feeds =

For a better understanding of the principles of YML feed - read this: https://yandex.ru/support/market-tech-requirements/index.html 

== Installation ==

This section describes how to install the plugin and get it working.

1. Upload the entire `yml-for-yandex-market-pro` folder to the `/wp-content/plugins/` directory.
1. Activate the plugin through the 'Plugins' screen in WordPress
1. Use the Export Yandex Market-->Settings screen to configure the plugin

== Frequently Asked Questions ==

= How to connect my store to Yandex market? =

Read this:
https://yandex.ru/support/partnermarket/purchase/how-to-start.html
https://yandex.ru/support/webmaster/goods-prices/connecting-shop.xml
https://yandex.ru/adv/edu/market-exp/vtoroy-magazin

= What plugin online store supported by your plugin? =

Only Woocommerce.

= How to create a YML feed? =

Go to Yandex Market-->Settings. In the box called "Automatic file creation" select another menu entry (which differs from "off"). You can also change values in other boxes if necessary, then press "Save".
After 1-7 minutes (depending on the number of products), the feed will be generated and a link will appear instead of this message.

== Screenshots ==

1. screenshot-1.png

== Changelog ==

= 4.5.1 =
* Fixed bugs

= 4.5.0 =
* Fixed bugs

= 4.4.11 =
* Added the ability to exclude products by product ID

= 4.4.10 =
* Fixed bugs

= 4.4.9 =
* Fixed bugs

= 4.4.8 =
* Fixed bugs

= 4.4.7 =
* Fixed bugs
* Improved the product price filter
* Added the ability to exclude products by brand (vendor)

= 4.4.6 =
* Fixed bugs

= 4.4.5 =
* Fixed bug with Constructor of parameters

= 4.4.4 =
* Improved addition to YML kit
* Improved stock quantity filter

= 4.4.3 =
* Fixed bug with constructor of parameters

= 4.4.2 =
* Fixed bug with price from post_meta

= 4.4.1 =
* Fixed bugs

= 4.4.0 =
* New core

= 4.3.1 =
* Fixed bug with Constructor of parameters

= 4.2.10 =
* Fix bugs

= 4.2.9 =
* Improved function VC tags removal

= 4.2.8 =
* Added the ability to add an arbitrary amount to the price

= 4.2.7 =
* Fixed bug with duplicate product names

= 4.2.6 =
* Fixed product exclusion error by price
* Added removal of vc_text_separator shortcode

= 4.2.5 =
* Fixed possible error with UTM

= 4.2.4 =
* Added the ability export only products for which enable stock management

= 4.2.3 =
* Some changes

= 4.2.2 =
* Added the ability forcefully remove product from selected YML feeds

= 4.2.1 =
* Added support for Roistat

= 4.2.0 =
* Fix bugs with disabling YML for Yandex Market
* Added the ability skip the products by stock quantity

= 4.1.4 =
* Fix bugs
* Improved support for WooCommerce Variation images gallery

= 4.1.3 =
* Fix bugs
* Added the ability to add attributes only to the name of simple products

= 4.1.2 =
* Fix bugs

= 4.1.1 =
* Fix possible bug with category id

= 4.1.0 =
* Fix bugs
* Improved function VC tags removal
* Added support for WooCommerce Variation images gallery

= 4.0.9 =
* Fix bugs
* Added ability description from post_meta
* Added ability disabled ymarket cat

= 4.0.8 =
* Fix update the plugin

= 4.0.7 =
* The process of saving checkboxs 'vygruzhat' and 'yfymp_removefromyml' has been fixed

= 4.0.6 =
* Added filter support 'yfym_args_terms_arr_filter'

= 4.0.5 =
* Added support upload only the first variation
* Added custom parameter constructor
* Added remove attributes from tags

= 4.0.4 =
* Add filters yfymp_pic_simple_offer_filter and yfymp_pic_variable_offer_filter

= 4.0.3 =
* Fixed error adding products to the YML kit

= 4.0.2 =
* Fix bug for VC tags removal

= 4.0.1 =
* Fix bugs

= 4.0.0 =
* New plugin core

= 3.0.2 =
* Fixed bug of collaboration of YML-kit and filter at a price

= 3.0.1 =
* Fix bugs

= 3.0.0 =
* Fix bugs

= 2.5.0 =
* Fix bugs
* Fix update the plugin

= 2.1.2 =
* Fix bugs

= 2.1.1 =
* Fix bugs

= 2.1.0 =
* Fix bugs
* Added new features to exclude products

= 2.0.8 =
* Fix bugs
* Improved plugin update mechanism

= 2.0.7 =
* Fix bugs

= 2.0.6 =
* Fix bugs

= 2.0.5 =
* Added support for diagonal screen

= 2.0.4 =
* Fix bugs

= 2.0.3 =
* Fix bugs
* Added UTM tags utm_campaign, utm_content, utm_medium

= 2.0.2 =
* Added additional(fifth) parameter Size

= 2.0.1 =
* Fix bugs
* The ability to add one attribute to the beginning of the product name, add three attributes to the end of the product name

= 2.0.0 =
* Fix bugs
* Added the ability to automatically update the plugin

= 1.1.4 =
* Fix bugs

= 1.1.3 =
* Added price filter

= 1.1.2 =
* Added categories for Yandex Market

= 1.1.1 =
* Fix yfymp_cat_tree function

= 1.1.0 =
* Added the ability to delete tags of the Visual Composer

= 1.0.10 =
* Improved get_terms compatibility below version 4.5

= 1.0.9 =
* Updated tags as cat logic
* Updated list of categories in settings

= 1.0.8 =
* Added UTM tags

= 1.0.7 =
* Improved interface
* Added second parameter Size

= 1.0.6 =
* Improved interface

= 1.0.5 =
* Fixed saving of settings in multisite.

= 1.0.3 =
* Ability to download multiple images for products instead of one

= 1.0.2 =
* First relise

== Upgrade Notice ==

= 4.5.1 =
* Fixed bugs