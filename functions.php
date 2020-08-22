
<?php

function wporg_simple_role() {
    add_role(
        'Organizer',
        'Organizer',
        [
            'read'         => true,
            'edit_events'   => true,
            'publish_events' => true,
        ]
    );
}

// Add the simple_role.
add_action('init', 'wporg_simple_role');
