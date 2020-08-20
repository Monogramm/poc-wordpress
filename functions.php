
<?php

$result = add_role( 'organizer', __(

'Organizer' ),

array(

'read' => true, // true allows this capability
'edit_events' => true, // Allows user to edit their own events
'edit_others_events' => true, // Allows user to edit others events not just their own
'create_events' => true, // Allows user to create new events
'manage_categories' => true, // Allows user to manage post categories
'publish_events' => true, // Allows the user to publish, otherwise events stays in draft mode
'edit_themes' => false, // false denies this capability. User can’t edit your theme
'install_plugins' => false, // User cant add new plugins
'update_plugin' => false, // User can’t update any plugins
'update_core' => false // user cant perform core updates

)
)



