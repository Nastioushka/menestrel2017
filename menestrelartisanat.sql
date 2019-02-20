-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 18 déc. 2017 à 17:58
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `menestrelartisanat`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `titreArticle` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `imageArticle` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(100) NOT NULL,
  `textArticle` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prix` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `titreChapitres` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titreArticle`, `imageArticle`, `alt`, `textArticle`, `prix`, `titreChapitres`) VALUES
(1, 'Irina Pagnoux', 'photo1.jpg', 'Photo de l\'artiste Irina Pagnoux', 'Professeur diplômée de langue et littérature Russe. Sa principale source d\'inspiration est le développement des liens amicaux entre la France et la Russie. Installée à Tarbes, elle contribue à cet échange culturel entre les deux pays en enseignant la langue russe et en faisant découvrir des différents styles de l’artisanat traditionnel, mais pas seulement.\r\n\r\nSon savoir - faire ne se limite pas à une ou deux techniques traditionnelles, son style est en constante évolution : céramique, cuir, bois, peinture...', '', 'auteur'),
(2, 'Les nouveautés en colliers', 'colliersGenerale.jpg', 'Photo des colliers', 'Une journée ensoleillée invite à partager votre bonne humeur avec les gens qui vous entourent- les couleurs vives et les formes harmonieuses des colliers sont là pour vous faire rayonner.</p>\r\n<p>Le soleil joyeux se cache derrière les nuages ? C’est une raison de plus pour mettre votre collier préféré et faire revenir les beaux jours.\r\n  ', '', 'colliers'),
(3, 'Les nouveautés en bracelets', 'deuxbracelets.jpg', 'Photo des bracelets', 'Chaque bracelet est unique car fait- main, les motifs ne se reproduisent pas et sont combinés en fonction de ressentis de l\'artiste. Légers et agréables au touché, ils apportent un brin d\'originalité à votre costume, même le plus classique. Chaque bracelet inspire son style : noir et blanc - sobre et chic, marron - fait penser à la maison de vacances en bois, multicolore - libre et expressive. Essayez- les, et trouvez la gamme qui correspond le plus à votre personnalité.', '', 'bracelets'),
(4, 'Les nouveautés en broches.', 'brocheGenerale.jpg', 'Photo de la broche sur le foulard ', 'Parfois, même les vêtements préférés commencent à lasser et donnent l’envie d’en changer. Les vestes, les robes, les pulls, les chapeaux si seyants et que vous aimez tant - il suffit d’ajouter une petit nuance pour pouvoir jouer avec votre style. Votre costume prend alors une apparence complètement différente lorsqu\'une broche originale y est accrochée.', '', 'broches'),
(5, 'Les nouveautés en ceintures', 'ceintureGenerale.jpg', 'Photo de la poule rouge avec la ceinture en cuire', 'Les ceintures en cuir avec des motifs abstraits vont aussi bien avec des robes classiques qu\'avec des chemises en jeans ou des robes en laine.</p>\r\n\r\n<p>C\'est à vous de jouer pour rendre votre costume plus expressif. Les motifs joyeux ne passeront pas inaperçus auprès de votre entourage. La ceinture unique et fait - main est là pour souligner votre individualité.', '', 'ceintures'),
(6, 'Artisanat de Dimkovo', 'dimka3.jpg', 'Photo des figurines de Dymkovo', 'L’art des figurines de Dymkovo est le style le plus éclatant parmi les styles d’artisanat russe. Comme si la figurine même vous invitait à une fête avec sa teinte blanche et pure, les motifs colorés et joyeux : les ronds, les fleurs, les froufrous, les dorures sautillants. La figurine de Dimkovo est apparue dans le village de Dymkovo (région de Viatka). Elle était fabriquée par des familles de villageois et tous les membres des familles du plus petit au plus grand  participaient à sa préparation : malaxer l’argile, faire la statuette, la sécher, la cuire, la peindre en blanc et puis finalement lui donner une apparence festive avec des couleurs traditionnels.</p> \r\n\r\n<p>Irina Pagnoux a passé 2 ans dans le village de Dymkovo pour apprendre cet art dont les secrets sont soigneusement gardées.', '', 'ceramique'),
(7, 'Peinture dans le style Avant-Garde Russe', '', '', 'Dans les années 1907-17 les artistes russes ont développé une avant-garde remarquable par son dynamisme. Inspirés par la société en reconstruction intensive, les peintres ont mis au centre de leurs œuvres le mouvement, la tension et l’harmonie des couleurs et des formes géométriques.</p>\r\n\r\n<p><cite>« Nous n’avons pas besoin d’un mausolée de l’art où des œuvre mortes sont adorées, mais une vivante usine de l’esprit humain-dans les rues, dans les tramway, dans les usines, dans les ateliers , les maisons des travailleurs. »</cite> par V. Maïakovski - poète, dramaturge, acteur, théoricien, peintre, affichiste et scénariste.\r\n\r\n<p>Dans ses expériences artistiques, Irina Pagnoux se libère des cannons de l’artisanat traditionnel et rejoint le mouvement révolutionnaire de l\'Avant-Garde russe.', '', 'tableaux'),
(8, 'Marchés Artisanaux', '', '', 'Les prochaines dates : </p>\r\n<p>Marché de Noël 15-16 décembre 2017 sur la place St-Jean à Tarbes avec « Petites Fourmis »\r\n', '', 'evenements'),
(9, 'Les associations – amis.', '', '', 'Les associations franco-russes :</p>\r\n<ul>\r\n<li><a href=\"https://www.facebook.com/people/Eurcasia-Bigorre/100008996466561\"> « Eurcasia Bigorre » Tarbes</a></li>\r\n\r\n<li><a href=\"http://associationbearn-russie.hautetfort.com/\"> « Béarn-Russie » Pau</a></li>\r\n</ul>\r\n\r\n<p>Les associations d\'artistes : </p>\r\n<ul>\r\n<li><a href=\"https://www.facebook.com/Lespetitesfourmis/\"> « Petites Fourmis » Tarbes</a></li>\r\n</ul>\r\n\r\n<p>Association française pour l\'intégration.</p>\r\n<ul>\r\n<li><a href=\"http://www.portesouvertes65.fr/\"> « Portes Ouvertes » Tarbes</a></li>\r\n</ul>\r\n\r\n\r\n<p>N’hésitez pas à nous contacter, nous sommes ouverts aux collaborations. ', '', 'partenaires'),
(10, 'Cours en groupe ou particuliers', '', '', 'Nous n\'avons pas de locale fixe, pas encore, alors pour connaitre le lieu des cours nous vous invitons à prendre le contacte par mail : menestrel78280@gmail.com</p>\r\n\r\n<p>Groupe de débutants (adultes): vendredi 9h30 - 10h30</p>\r\n\r\n<p>Groupe des enfants : mercredi 17h – 18h</p>\r\n\r\n<p>Cours avancé ou cours particuliers : 16h  - 17h  18h - 19h\r\n', '', 'cours_de_russe'),
(11, 'Cuir', 'step1.jpg', 'Photo du step à Kazakhstan', 'L\'idée des bijoux en cuir lui a été soufflée par le vent, le vent qui souffle dans les immenses steppes du Kazakhstan, son pays natal. Pays qui abrite de nombreux mystères : une dune chantante \"Poyoushi Barkhan\"(phénomène rare dans le monde), le canyon Charyn, le tumulus de Iessik...</p>\r\n\r\n<img src=\"img/photoArt/montagne2.jpg\" alt=\"photo des montagnes à Almaty\" />\r\n\r\n<p>La ville d’Almaty est entourée de montagnes – gardiennes de l\'esprit de ses habitants qui est lié à la nature: rivières, animaux, neiges éternelles... Ce lien se manifeste à travers des créations originales - bijoux en cuir qui reflète une âme nomade : libre et sauvage.', '', 'auteur'),
(12, 'Céramique', 'coq3.jpg', 'Photo d\'un coq en céramique', 'Les couleurs vives et harmonieuses des ornements sont inspirées de motifs décoratifs russes. Entre 1989 et 1995 Irina réside à St-Petersbourg où elle perfectionne son art de céramiste. Elle s’imprègne des styles traditionnels \r\n - Céramique de Gjel, Khokhloma, miniatures de Palekh, mais l\'art qui lui tient à cœur est la fabrication des jouets de Dymkovo. Modelé de manière particulière dont le secret est soigneusement gardé par les artisans du village, peint d’une multitude de couleurs pures et gaies, ce jouet apporte à la maison une touche festive et un sentiment de sérénité.</p>\r\n\r\n<img src=\"img/photoArt/bougeoirs2.jpg\" alt=\"photo des bougeoirs en céramique\" />\r\n\r\n<p>Irina a pour base une formation rare en céramique - jouets de Dymkovo - avec une expérience considérable en artisanat en tant que peintre et céramiste , ce qui lui a permis de collaborer avec des galeries d\'art à Almaty et à St-Petersbourg et d’élaborer son propre style. Un style unique et original qui lui permet de réaliser une idée inspirée des arts traditionnels mais libérée des restrictions limitant les motifs canoniques.', '', 'auteur'),
(13, 'Bracelet Violet', 'bracelet1.jpg', 'Photo du bracelet violet', 'Bracelet avec une combinaison harmonieuse de couleurs allant du lilas au violet foncé.', '', 'bracelets'),
(14, 'Bracelet Mosaïque', 'bracelet2.jpg', 'Photo du Bracelet Mosaïque', 'Bracelet avec le fond bordeaux qui combine des formes géométriques strictes et des couleurs vives.  ', '', 'bracelets'),
(15, 'Bracelet Printemps', 'bracelet3.jpg', 'Photo du Bracelet Printemps', 'Les couleurs joyeuses de ce bracelet appellent les beaux jours et le soleil se montre derrière les nuages.', '', 'bracelets'),
(16, 'Bracelet Beige', 'bracelet4.jpg', 'Photo du bracelet beige ', 'Bracelet aux couleurs beiges qui fait penser au chalet dans la montagne, meubles en bois et vieille cheminée.', '', 'bracelets'),
(17, 'Bracelet Noir-bordeaux', 'bracelet5.jpg', 'Photo du Bracelet noir-bordeaux', 'Bracelet qui associe les trois couleurs en ornement strict, juste ce qu\'il faut pour souligner le style.', '', 'bracelets'),
(18, 'Bracelet l\'Eté', 'bracelet6.jpg', 'Photo du bracelet l\'été', 'Bracelet décoré avec un ornement minutieux où l’imagination dessine les premières fleurs, la feuillage et les branches des arbres.', '', 'bracelets'),
(19, 'Collier Vert', 'collier1.jpg', 'Photo du Collier Vert', 'Collier aux couleurs de la nature même - vert, jaune. N\'est-ce pas un arbre en fleur?', '', 'colliers'),
(20, 'Collier Jaune', 'collier2.jpg', 'Photo du Collier jaune', 'Collier aux couleurs jaunes vives accentué par le contour noir. Quelle énigme cache ce collier dans le croisement des couleurs et des formes de son décor interne?', '', 'colliers'),
(21, 'Collier Labyrinthe', 'collier3.jpg', 'Photo du Collier Labyrinthe ', 'Collier qui assemble harmonieusement les couleurs vives comme le rouge, le jaune et les couleurs douces comme le violet, lilas.', '', 'colliers'),
(22, 'Collier Totem', 'collier4.jpg', 'Photo du Collier Totem', 'Collier aux formes expressives et aux couleurs remarquables où le croisement complexe d\'ornement est mis en valeur par la forme simple et explicite de la barre bleue.', '', 'colliers'),
(23, 'Collier Tableau', 'collier5.jpg', 'Photo du Collier Tableau ', 'Collier qui vous invite au plein-air, prenez vos pinceaux et libérez votre imagination.', '', 'colliers'),
(24, 'Collier Papillon beige', 'papillon1.jpg', 'Photo du Collier Papillon beige ', 'Qui entre nous n\'as pas été hypnotisé par la grâce des battements d’ailes d\'un papillon.', '', 'colliers'),
(25, 'Collier Sac', 'sac1.jpg', 'Photo du Collier Sac', 'Collier ou un petit sac aux énigmes. Qu\'est ce qui est caché à l\'intérieur ? Une branche de lavande, votre poème préféré? A vous de voir.', '', 'colliers'),
(26, 'Broche Verte', 'broche1.jpg', '', 'Broche aux couleurs vertes et beiges. L\'ornement complexe est souligné par la trait d\'une bordure rouge.', '', 'broches'),
(27, 'Broche Moulin', 'broche2.jpg', '', 'Triangle et rond, couleurs foncées, vives et les deux dans la même création. Tous ce qu\'il faut pour capter le regard.', '', 'broches'),
(28, 'Broche Avant-garde', 'broche3.jpg', '', 'Broche aux formes strictes et couleurs contrastes. Aussi libre, moderne et expressive que les tableaux de MALEVITCH.', '', 'broches'),
(29, 'Broche Palette', 'broche4.jpg', '', 'Comme sur la palette d\'un peintre les couleurs se mélangent et se lient en formes chimériques. Ce mélange donne naissance à une harmonie dont seul l\'imagination peut trouver l’interprétation.', '', 'broches'),
(30, 'Les ponts de Paris', 'tableau1.jpg', '', 'Une promenade à Paris après la pluie. Les formes se reflètent comme si le spectateur observait la ville dans un kaléidoscope. La ballade au bord de la Seine, le café préférée... Où est-ce qu\'elle vous amène cette ballade?', '', 'tableaux'),
(31, 'Village Russe', 'tableau2.jpg', '', 'Nous sommes là dans des pays slaves. Les coupoles des églises, les isbas en bois. Tout est entouré de couleurs joyeuses. Juste une journée ensoleillée ou une fête?', '1000 €', 'tableaux'),
(32, 'Collier Sac jaune', 'sac2.jpg', 'Photo du collier sac jaune', 'Une sacoche colorée, n\'est ce pas une solution originale pour ranger ses clefs par exemple.', '', 'colliers'),
(33, 'Broche Noire-rouge', 'broche5.jpg', 'Image de la Broche noire-rouge', 'Les formes strictes et arrondies, les couleurs simples et sincères qu\'est-ce qu\'il faut de plus?', '', 'broches'),
(34, 'Broche Composition', 'broche6.jpg', 'Photo de la Broche composition', 'Comme un cadre de tableau cette broche est ornée de cuir noir, ce qui permet de souligner la composition interne.', '', 'broches'),
(35, 'Ceinture Beige', 'ceinture6.jpg', 'Photo du ceinture beige', 'Ceinture beige décorée d\'ornements subtils et fins.', '', 'ceintures'),
(36, 'Ceinture Violette', 'ceinture5.jpg', 'Photo de la ceinture violette', 'La gamme harmonieuse des couleurs douces : violet, blanc, vert-clair.', '', 'ceintures'),
(37, 'Ceinture Mosaïque', 'ceinture4.jpg', 'Photo de la Ceinture Mosaïquée ', 'Les formes strictes et les couleurs expressives. Cette ceinture peut être portée ensemble avec le bracelet \"Mosaïque\".', '', 'ceintures'),
(38, 'Cane', 'canard1.jpg', 'Image de la figurine de la Cane', 'Une petite cane avec son chapeau et son nœud colorés. Où est-ce qu\'elle va si bien habillée? A la fête  du marché peut-être?', '', 'ceramique'),
(39, 'Chevalier', 'chevalier1.jpg', 'Photo de la figurine de chevalier.', 'Un brave homme sur son fidèle destrier. ', '', 'ceramique'),
(40, 'Chèvre', 'chevre1.jpg', 'Photo de la figurine de chevre', 'Regardez comme sont jolis le tablier et le mouchoir de cette chèvre. On en viendrait à penser que d\'un instant à l\'autre elle va se mettre à danser une danse joyeuse.', '', 'ceramique'),
(41, 'Dame aux seaux', 'dame1.jpg', 'Photo de la figurine de Dame aux seaux ', 'Voilà la Dame qui en habits traditionnels va chercher un peu d\'eau à la rivière. ', '', 'ceramique'),
(42, 'La dame au petit chien', 'dame2.jpg', 'Photo de la figurine de la Dame au petit chien', 'Magnifique Dame aux habits chics avec son petit compagnon dans les bras.  ', '', 'ceramique'),
(43, 'Coq', 'coq1.jpg', 'Photo de la figurine du coq', 'Voilà le chanteur de la campagne avec son plumage éclatant.', '', 'ceramique'),
(44, 'Sa majesté le Coq', 'coq2.jpg', 'Photo de la figurine de sa majesté le Coq  ', 'On reconnait le roi à la cour, non seulement pas ses habits majestueux mais aussi à sa posture.', '', 'ceramique'),
(45, 'Plaquette Coq', 'plaquetteCoq1.jpg', '', 'Une plaquette aux couleurs vives pour décorer les murs mais aussi pour apporter de la joie et de la lumière à la maison.', '', 'ceramique'),
(46, 'Paysage pastorale', 'pastorale1.jpg', 'Photo de la figurine du paysage pastorale ', 'Un jeune homme qui joue une mélodie pour son chien, même l\'oiseau est venu pour écouter.', '', 'ceramique');

-- --------------------------------------------------------

--
-- Structure de la table `chapitres`
--

DROP TABLE IF EXISTS `chapitres`;
CREATE TABLE IF NOT EXISTS `chapitres` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `chapitre` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contenu_chapitre` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `titre` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `chapitres`
--

INSERT INTO `chapitres` (`id`, `chapitre`, `contenu_chapitre`, `titre`) VALUES
(1, 'Auteur', 'Quelques mots à propos de l’artiste.', 'auteur'),
(2, 'Colliers', 'Démonstration des colliers.', 'colliers'),
(3, 'Bracelets', 'Présentation des bracelets.', 'bracelets'),
(4, 'Broches', 'Présentation des broches.', 'broches'),
(7, 'Ceintures', 'Présentation des ceintures.', 'ceintures'),
(8, 'Céramique', 'Créations en argile.', 'ceramique'),
(9, 'Tableaux', 'La galerie des tableaux.', 'tableaux'),
(10, 'Evènements', 'Les événements à venir.', 'evenements'),
(13, 'Partenaires', 'Les associations - amis.', 'partenaires'),
(14, 'Cours de Russe', 'Cours de la langue russe. Où et quand.', 'cours_de_russe');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
