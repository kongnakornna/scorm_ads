<?php

$this->require_admin ();

$page->layout = 'admin';

$page->title = __ ('SCORM');

echo $tpl->render (
	'scorm/admin',
	array (
		'modules' => array ()
	)
);

?>