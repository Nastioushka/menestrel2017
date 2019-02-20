<?php

	include 'dtb.php';
	$dtb = new Database('menestrelartisanat', 'root', '');
	$chapitres = $dtb->__selectAll('chapitres');
	$page_title = 'Association artisanale et culturelle à Tarbes';
	$template_name = 'index.phtml';
	include 'master.phtml';

