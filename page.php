<?php

//Connexion dtb
	include 'dtb.php';
	$dtb = new Database('menestrelartisanat', 'root', '');
	$chapitres = $dtb->__selectAll('chapitres');
	//var_dump($chapitres);

	//var_dump($_GET['page']);


//Construction de table chapitres
	$title = [];
	foreach($chapitres as $key => $value)
	{
		array_push($title, $value['titre']);
	};

	
//Verification de valididté URL

	if(!in_array($_GET['page'], $title))
	{
		header('Location: index.php');
		exit();
	};

//Titre de la page

		$titrePage = $dtb->__queryOne(	'SELECT contenu_chapitre 
										FROM chapitres 
										WHERE titre=?', $_GET['page']);

//Contenue de la page

		$articles = $dtb->__queryAll(	'SELECT textArticle, 
												chapitres.contenu_chapitre,
												titreArticle,
												imageArticle,
												alt,
												prix
										FROM articles 
										INNER JOIN chapitres ON articles.`titreChapitres` = chapitres.titre
										WHERE chapitres.titre=?', $_GET['page']);

		//var_dump($articles);

//Idéntifiants de la page contenus de main
		$page_title = 'Auteur';
		$template_name = 'page.phtml';
		include 'master.phtml';


