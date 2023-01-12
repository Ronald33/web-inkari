<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'web_inkari' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'toor' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define('FS_METHOD','direct');

/**#@+
 * Authentication unique keys and salts.
i *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Pb6lq%),(&C2:h>TH.f:=W)$?B,_gpmd^DENTLfanp3x>i7r}wh=Z7{?5^rOw84}' );
define( 'SECURE_AUTH_KEY',  'bM1#krU?t@;NOa^#MyA.VTqIlcX|7oBiH6m(hW}94=9Al7|SJvS%(b@C`q`.6h8G' );
define( 'LOGGED_IN_KEY',    'TT^GJen_^@SV,+fG1Mbh0awWUM7YpQ78Z(m5mO:^W4M;Gta~piA/@xkl6&aJhf~,' );
define( 'NONCE_KEY',        'Uzt0-*4%Q*@s?})sen4_EGL~MHn*kWOr$IlL3n%KiQeZ/E FZH][>j9xfyG(G-OW' );
define( 'AUTH_SALT',        '&Ce9dQ-LB1ix7RfN`YpR %P,S[OF11M[@@!-{|4&O]];+nqvw&Sb3chV*t@>KhDf' );
define( 'SECURE_AUTH_SALT', 'ty^%w #l&)pdM@q6}b&V[D) bJJiEkXQC>:;a-z]9NVL=QnCJT>2GU Zs8YfeFO$' );
define( 'LOGGED_IN_SALT',   'rLs:I0T2T6uB8{M,hut(hzlE`,m@Sh*9</Q2}quR{_rn{UmU0^3~yd$raf`y}M+s' );
define( 'NONCE_SALT',       '-Gs0B72>@LK^`l]J5O3c0[>`Ww]uxn <jqkdXgm*<:}+76YuO_9k2m46P*?q`j/_' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
