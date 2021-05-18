<?php 
/**
*Store global arrays data and constants
* @Author Khetesh Kumawat
**/
defined('APP_NAME')		or	define('APP_NAME', env('APP_NAME'));
//FCM KEYS FOR ALL APPS
defined('IOS') 			or	define('IOS', 'I');
defined('ANDROID') 		or	define('ANDROID', 'A');
defined('FIRE_BASE_URL')or  define('FIRE_BASE_URL', 'https://fcm.googleapis.com/fcm/send');
defined('FCM_KEY') 		or	define('FCM_KEY', '');

defined('USER_ROLE_ID') 		or define('USER_ROLE_ID', 2);
defined('WHERE_NOT_IN_ROLE_ID') or define('WHERE_NOT_IN_ROLE_ID', '1,3');
defined('ROLE_ID_DEVELOPER') 	or define('ROLE_ID_DEVELOPER', 3);
defined('ROLE_ID_ADMIN') 		or define('ROLE_ID_ADMIN', 1);
defined('TOOLS_MENU_SHOW') 		or define('TOOLS_MENU_SHOW', serialize(['browse_hooks','browse_compass','browse_media','browse_database','browse_bread']));
defined('ONLY_MENU_SHOW_DEVELOPER') or define('ONLY_MENU_SHOW_DEVELOPER', serialize(['menus','pages','editors']));
defined('FOOTER_NAVIGATION_PARENT') or define('FOOTER_NAVIGATION_PARENT', ['who-we-are','what-we-do','media']);
