
<?php
/**
 * Create roles and capabilities
 */

function add_roles_on_activation() {
    add_role('organiser', 'Organiser',
        array(
            'read' => true,
            'delete_posts' => true,
            'edit_posts' => true
        )
    );
 
}

function del_roles_on_uninstall() {
    remove_role('organiser');
}

register_activation_hook( __FILE__, 'add_roles_on_activation' );
register_uninstall_hook( __FILE__, 'del_roles_on_uninstall' );

?>
