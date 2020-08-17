<?php

# tests/bootstrap.php

require_once(dirname(__DIR__) . '/vendor/autoload.php');

$_tests_dir = getenv('WP_TESTS_DIR');
if ( !$_tests_dir ) $_tests_dir = '/tmp/wordpress-tests-lib';

require_once $_tests_dir . '/includes/functions.php';

function _manually_load_plugin() {
    $_tests_plugin = getenv('WP_TESTS_PLUGIN');
    require dirname( __FILE__ ) . '/../' . $_tests_plugin;
}
tests_add_filter( 'muplugins_loaded', '_manually_load_plugin' );

require $_tests_dir . '/includes/bootstrap.php';
