<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'UFS950dzNemqBujqkOiR7FIluBDeFAeW/I9fZonGAP+w+MRme4VB+LqEdK+XoY/6je2xzSeu1rFq5wUT4lILMw==');
define('SECURE_AUTH_KEY',  'E/poOMuhD0NH8GwAFY4PSW+CUH/IPhwQ+fGBF2Hg2RQ73ynB0CNh/gs+ddDtKc4fSR6/Ug0yg/Nn5QFidyE8cg==');
define('LOGGED_IN_KEY',    'Dpi0xLuBTodDnPAQoNLakS2SjwUZlwK4pGcN93ym/cAXpKbkDGju7IDQY5arLdkLMrCdPefH1QuvO7GBVve0Yw==');
define('NONCE_KEY',        'wmAKtwCCqmiBp3MS8qkWPrwo2OwuNLaNEtHFLCPzSbU1DCmOyuuK6cQBfZGAseMic1OwHMz7xPV59wLYtK7j+Q==');
define('AUTH_SALT',        'u8PTuYyI950LWz9R0+6XNKtSp0L6lhBOtZSMSX67kqJqLVTJpm5vd5h/ePlVGA5j9uwwQkprxpgDEZgFvHHHzw==');
define('SECURE_AUTH_SALT', 'KBFsrxcyuyzaaQEfZBqOa7l5fj/u/LISUDbdeCkvf96JvvFD1NfVFViYdam/qfjARDj++dzw17nTP9CsSoSbyg==');
define('LOGGED_IN_SALT',   'Z1NGn3+DY9OrnXsxqhu4WIQgWQ63psaXziEE526e+98xzYvZVDphM/u7Hh3no8BCN4/g+ctwCvEpfww73iHVQA==');
define('NONCE_SALT',       'J1TmbEFCysy2q+WFgDaCEES5UANDHxW8QSGN91Wza8DmAIvDpVA50rHAmPbnqxdmQlZgCJT+gVjF9TSrWZcWeg==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
