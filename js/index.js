'use strict';

//Il faut fair un tableau avec l'adresse des images et le texte alternative

var tableau = [	{image: 'img/slider/img1.jpg', alt: 'Image de bracelet beige'},
				{image: 'img/slider/img2.jpg', alt: 'Image de bracelet beige et de centure blue'},
				{image: 'img/slider/img3.jpg', alt: 'Image de bracelet marron'},
				{image: 'img/slider/img4.jpg', alt: 'Image des bracelets multicolores'},
				{image: 'img/slider/img5.jpg', alt: 'Image de bracelet jaune'},
				{image: 'img/slider/img6.jpg', alt: 'Image des bracelets verts'},
				{image: 'img/slider/img7.jpg', alt: 'Image des broches multicolores'},
				{image: 'img/slider/img8.jpg', alt: 'Image des broches beiges'},
				{image: 'img/slider/img9.jpg', alt: 'Image des broches multicolores'},
				{image: 'img/slider/img10.jpg', alt: 'Image des broches multicolores'},
				{image: 'img/slider/img11.jpg', alt: 'Image des broches beiges'},
				{image: 'img/slider/img12.jpg', alt: 'Image des broches et bracelets multicolores'},
				{image: 'img/slider/img13.jpg', alt: 'Image des broches et bracelets multicolores'},
				{image: 'img/slider/img14.jpg', alt: 'Image de la ceinture jaune'},
				{image: 'img/slider/img15.jpg', alt: 'Image de la ceinture beige-blue'},
				{image: 'img/slider/img16.jpg', alt: 'Image de la ceinture blue'}
				];

//Déffinir la fréquance de défilement
var interval = 6000; //4000 minimum si non l'éffet de disparition prendra tout le temps


/*Instancer l'objet*/

//Dans ce code il faut changer seulement les variables de l'objet

document.addEventListener('DOMContentLoaded', function()
{
	var slider = new Slider(tableau, 		//Variable tableau déffini précedemment
							interval, 		//Fréquance de défilement
							'#image', 		//Id de l'image à remplacer
							'#toggle i', 	// i de l'icone play pour pouvoir manipuler les classes
							'#arrow', 		//Id de la flaiche pour cacher la nav
							'#previous', 	//Id de bouton precedent
							'#toggle', 		//Id de bouton play
							'#next');		//Id de bouton next

	//Il est possible d'utiliser les mêmes Id des élements pour faciliter les manipulations. 

	//Debut de diaporama à la chargement de la page (ne pas modifier)
	slider.playSlider();

	//Evenement sur les boutons de la navigation (ne pas modifier)
	slider.buttonPrevious.addEventListener('click', function() {slider.previousSlide();}, false);
	slider.buttonPlay.addEventListener('click', function() {slider.playSlider();}, false);
	slider.buttonNext.addEventListener('click', function() {slider.nextSlide();}, false);
	slider.img.addEventListener('click', function() {slider.nextSlide();}, false);
	slider.img.addEventListener('click', function() {slider.hideNav(	'fa-arrow-up', 
																		'fa-arrow-right', 
																		'cacher')},
																		false);
	
	slider.arrow.addEventListener('click', function() {slider.hideNav(	'fa-arrow-up', 
																		'fa-arrow-right', 
																		'cacher')},
																		false);
});

