-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 13 avr. 2023 à 08:10
-- Version du serveur :  8.0.20
-- Version de PHP : 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gsb1_1`
--

-- --------------------------------------------------------

--
-- Structure de la table `affectation`
--

CREATE TABLE `affectation` (
  `VIS_CODE` char(5) NOT NULL,
  `AFF_NUM` tinyint UNSIGNED NOT NULL,
  `REG_CODE` char(2) NOT NULL,
  `AFF_DATE` date NOT NULL,
  `AFF_ROLE` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `affectation`
--

INSERT INTO `affectation` (`VIS_CODE`, `AFF_NUM`, `REG_CODE`, `AFF_DATE`, `AFF_ROLE`) VALUES
('a131', 1, 'BG', '1992-12-10', 1),
('a17', 1, 'RA', '1991-08-25', 1),
('a17', 2, 'RA', '2012-09-18', 2),
('a55', 1, 'MP', '2002-08-20', 2),
('a55', 2, 'MP', '2007-07-16', 1),
('a93', 1, 'PC', '1999-11-01', 1),
('b16', 1, 'BG', '2007-03-20', 1),
('b25', 1, 'PL', '1994-07-02', 1),
('b25', 2, 'PL', '1999-12-31', 2),
('b34', 1, 'CE', '1993-12-05', 2),
('b34', 2, 'CE', '2000-12-31', 3),
('b4', 1, 'AQ', '1997-09-24', 1),
('b59', 1, 'RA', '1995-10-20', 1),
('b59', 2, 'RA', '2004-12-31', 3),
('c14', 1, 'PA', '1989-01-31', 1),
('c14', 2, 'PA', '1997-01-31', 2),
('c14', 3, 'PA', '2000-12-31', 3),
('c3', 1, 'CA', '1992-05-04', 1),
('c54', 1, 'AL', '1991-03-31', 1),
('d51', 1, 'FC', '1997-11-17', 2),
('d51', 2, 'FC', '2001-12-31', 3),
('e22', 1, 'PA', '1989-03-23', 1),
('e24', 1, 'PA', '1993-04-30', 2),
('e24', 2, 'AL', '2000-02-28', 3),
('e39', 1, 'IF', '2008-04-25', 1),
('e49', 1, 'MP', '1996-02-18', 1),
('e5', 1, 'AQ', '1990-11-26', 1),
('e5', 2, 'AQ', '1992-10-31', 2),
('e5', 3, 'AQ', '2005-10-31', 3),
('e52', 1, 'HN', '1991-10-30', 1),
('f39', 1, 'RA', '1997-02-14', 1),
('f39', 2, 'RA', '2007-02-14', 3),
('g30', 1, 'PI', '2004-12-31', 2),
('g30', 2, 'PI', '2005-02-28', 3),
('g53', 1, 'BG', '2005-10-04', 1),
('g7', 1, 'LI', '2005-01-14', 1),
('h13', 1, 'LI', '2001-05-07', 1),
('h30', 1, 'IF', '1999-04-25', 1),
('h35', 1, 'AU', '2004-08-19', 1),
('h40', 1, 'CA', '2003-02-28', 1),
('j45', 1, 'CA', '2004-02-24', 3),
('j50', 1, 'NP', '1992-11-30', 1),
('j8', 1, 'IF', '2005-05-31', 3),
('k53', 1, 'AL', '1982-01-02', 2),
('k53', 2, 'AL', '1983-03-19', 1),
('l23', 1, 'CE', '2006-05-31', 1),
('l46', 1, 'PL', '2003-12-31', 1),
('l56', 1, 'FC', '2001-02-09', 1),
('m35', 1, 'MP', '2007-10-05', 1),
('m45', 1, 'PA', '2016-03-17', 1),
('n42', 1, 'HN', '1996-02-29', 1),
('n59', 1, 'PI', '1994-11-30', 1),
('o26', 1, 'LG', '2006-12-31', 1),
('p40', 1, 'BN', '1992-12-02', 1),
('p40', 2, 'BN', '1999-07-16', 3),
('p40', 3, 'BN', '2003-11-30', 2),
('p41', 1, 'PC', '2005-07-19', 1),
('p42', 1, 'PI', '1994-11-30', 1),
('p49', 1, 'CE', '2001-09-30', 1),
('p6', 1, 'LG', '2003-02-28', 1),
('p8', 1, 'BO', '2006-05-31', 1),
('q17', 1, 'BN', '2007-08-31', 1),
('r24', 1, 'BN', '2002-05-15', 3),
('r24', 2, 'BN', '2004-07-28', 1),
('s10', 1, 'FC', '2011-10-31', 1),
('s21', 1, 'LI', '2008-08-31', 1),
('t43', 1, 'BO', '2005-02-28', 1),
('t47', 1, 'NP', '2009-07-31', 1),
('t60', 1, 'LG', '1991-03-18', 1);

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `DEP_CODE` char(2) NOT NULL,
  `REG_CODE` char(2) NOT NULL,
  `DEP_NOM` varchar(25) NOT NULL,
  `DEP_PREFECTURE` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`DEP_CODE`, `REG_CODE`, `DEP_NOM`, `DEP_PREFECTURE`) VALUES
('01', 'RA', 'Ain', 'Bourg-en-Bresse'),
('02', 'PI', 'Aisne', 'Laon'),
('03', 'AU', 'Allier', 'Moulins'),
('04', 'PA', 'Alpes de Hte Provence', 'Digne les Bains'),
('05', 'PA', 'Hautes Alpes', 'Gap'),
('06', 'PA', 'Alpes Maritimes', 'Nice'),
('07', 'RA', 'Ardèche', 'Privas'),
('08', 'CA', 'Ardennes', 'Charleville-Mézières'),
('09', 'MP', 'Ariège', 'Foix'),
('10', 'CA', 'Aube', 'Troyes'),
('11', 'LG', 'Aude', 'Carcassonne'),
('12', 'MP', 'Aveyron', 'Rodez'),
('13', 'PA', 'Bouches du Rhône', 'Marseille'),
('14', 'BN', 'Calvados', 'Caen'),
('15', 'AU', 'Cantal', 'Aurillac'),
('16', 'PC', 'Charente', 'Angoulême'),
('17', 'PC', 'Charente-Maritime', 'La Rochelle'),
('18', 'CE', 'Cher', 'Bourges'),
('19', 'LI', 'Corrèze', 'Tulle'),
('21', 'BO', 'Côte d\'Or', 'Dijon'),
('22', 'BG', 'Côtes du Nord', 'St Brieux'),
('23', 'LI', 'Creuse', 'Guéret'),
('24', 'AQ', 'Dordogne', 'Périgueux'),
('25', 'FC', 'Doubs', 'Besançon'),
('26', 'RA', 'Drôme', 'Valence'),
('27', 'HN', 'Eure', 'Evreux'),
('28', 'CE', 'Eure et Loir', 'Chartres'),
('29', 'BG', 'Finistère', 'Quimper'),
('2A', 'CO', 'Corse du Sud', 'Ajaccio'),
('2B', 'CO', 'Haute Corse', 'Bastia'),
('30', 'LG', 'Gard', 'Nîmes'),
('31', 'MP', 'Haute Garonne', 'Toulouse'),
('32', 'MP', 'Gers', 'Auch'),
('33', 'AQ', 'Gironde', 'Bordeaux'),
('34', 'LG', 'Hérault', 'Montpellier'),
('35', 'BG', 'Ile et Vilaine', 'Rennes'),
('36', 'CE', 'Indre', 'Châteauroux'),
('37', 'CE', 'Indre et Loire', 'Tours'),
('38', 'RA', 'Isère', 'Grenoble'),
('39', 'FC', 'Jura', 'Lons le Saunier'),
('40', 'AQ', 'Landes', 'Mont de Marsan'),
('41', 'CE', 'Loir et Cher', 'Blois'),
('42', 'RA', 'Loire', 'St Etienne'),
('43', 'AU', 'Haute Loire', 'Le Puy'),
('44', 'PL', 'Loire Atlantique', 'Nantes'),
('45', 'CE', 'Loiret', 'Orléans'),
('46', 'MP', 'Lot', 'Cahors'),
('47', 'AQ', 'Lot et Garonne', 'Agen'),
('48', 'LG', 'Lozère', 'Mende'),
('49', 'PL', 'Maine et Loire', 'Angers'),
('50', 'BN', 'Manche', 'St-Lô'),
('51', 'CA', 'Marne', 'Châlons en Champagne'),
('52', 'CA', 'Haute Marne', 'Chaumont'),
('53', 'PL', 'Mayenne', 'Laval'),
('54', 'LO', 'Meurthe et Moselle', 'Nancy'),
('55', 'LO', 'Meuse', 'Bar le Duc'),
('56', 'BG', 'Morbihan', 'Vannes'),
('57', 'LO', 'Moselle', 'Metz'),
('58', 'BO', 'Nièvre', 'Nevers'),
('59', 'NP', 'Nord', 'Lille'),
('60', 'PI', 'Oise', 'Beauvais'),
('61', 'BN', 'Orne', 'Alençon'),
('62', 'NP', 'Pas de Calais', 'Arras'),
('63', 'AU', 'Puy de Dôme', 'Clermont Ferrand'),
('64', 'AQ', 'Pyrénées Atlantiques', 'Pau'),
('65', 'MP', 'Hautes Pyrénées', 'Tarbes'),
('66', 'LG', 'Pyrénées Orientales', 'Perpignan'),
('67', 'AL', 'Bas Rhin', 'Strasbourg'),
('68', 'AL', 'Haut Rhin', 'Colmar'),
('69', 'RA', 'Rhône', 'Lyon'),
('70', 'FC', 'Haute Saône', 'Vesoul'),
('71', 'BO', 'Saône et Loire', 'Mâcon'),
('72', 'PL', 'Sarthe', 'Le Mans'),
('73', 'RA', 'Savoie', 'Chambéry'),
('74', 'RA', 'Haute Savoie', 'Annecy'),
('75', 'IF', 'Paris', 'Paris'),
('76', 'HN', 'Seine Maritime', 'Rouen'),
('77', 'IF', 'Seine et Marne', 'Melun'),
('78', 'IF', 'Yvelines', 'Versailles'),
('79', 'PC', 'Deux Sèvres', 'Niort'),
('80', 'PI', 'Somme', 'Amiens'),
('81', 'MP', 'Tarn', 'Albi'),
('82', 'MP', 'Tarn et Garonne', 'Montauban'),
('83', 'PA', 'Var', 'Toulon'),
('84', 'PA', 'Vaucluse', 'Avignon'),
('85', 'PL', 'Vendée', 'La Roche sur Yon'),
('86', 'PC', 'Vienne', 'Poitiers'),
('87', 'LI', 'Haute Vienne', 'Limoges'),
('88', 'LO', 'Vosges', 'Epinal'),
('89', 'BO', 'Yonne', 'Auxerre'),
('90', 'FC', 'Territoire de Belfort', 'Belfort'),
('91', 'IF', 'Essonne', 'Evry'),
('92', 'IF', 'Hauts de Seine', 'Nanterre'),
('93', 'IF', 'Seine St Denis', 'Bobigny'),
('94', 'IF', 'Val de Marne', 'Créteil'),
('95', 'IF', 'Val d\'Oise', 'Pontoise');

-- --------------------------------------------------------

--
-- Structure de la table `echantillon_distribue`
--

CREATE TABLE `echantillon_distribue` (
  `VIS_CODE` char(5) NOT NULL,
  `VISITE_NUM` smallint UNSIGNED NOT NULL,
  `MED_CODE` char(10) NOT NULL,
  `ED_QTE` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `echantillon_distribue`
--

INSERT INTO `echantillon_distribue` (`VIS_CODE`, `VISITE_NUM`, `MED_CODE`, `ED_QTE`) VALUES
('a131', 2, 'AMOX45', 5),
('a131', 3, 'AMOPIL7', 3),
('a131', 3, 'AMOX45', 5),
('a131', 3, 'APATOUX22', 3),
('a17', 1, 'AMOXIG12', 3),
('a17', 2, 'AMOXIG12', 3),
('a17', 3, 'AMOXIG12', 3),
('a17', 3, 'BACTIG10', 3),
('a17', 3, 'BITALV', 5),
('a17', 3, 'CLAZER6', 5),
('a17', 3, 'EVILR7', 5),
('a17', 3, 'JOVAI8', 5),
('c14', 1, 'EVILR7', 5),
('c14', 3, 'DORNOM8', 2),
('c54', 1, 'APATOUX22', 3),
('c54', 1, 'URIEG6', 3),
('c54', 3, 'DIMIRTAM6', 6),
('c54', 4, 'APATOUX22', 3),
('e22', 1, 'DIMIRTAM6', 5),
('e22', 1, 'TROXT21', 5),
('e22', 1, 'TXISOL22', 4),
('e22', 2, 'TXISOL22', 6),
('m45', 1, 'EQUILARX6', 5),
('m45', 2, 'ADIMOL9', 5),
('m45', 2, 'AMOXIG12', 3),
('m45', 2, 'BACTIGEL', 10),
('m45', 2, 'BACTIVIL', 5),
('m45', 3, 'BACTIVIL', 5),
('m45', 4, 'BACTIVIL', 5);

-- --------------------------------------------------------

--
-- Structure de la table `famille_medicament`
--

CREATE TABLE `famille_medicament` (
  `FM_CODE` char(3) NOT NULL,
  `FM_LIBELLE` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `famille_medicament`
--

INSERT INTO `famille_medicament` (`FM_CODE`, `FM_LIBELLE`) VALUES
('AA', 'Antalgiques en association'),
('AAA', 'Antalgiques antipyrétiques en association'),
('AAC', 'Antidépresseur d\'action centrale'),
('AAH', 'Antivertigineux antihistaminique H1'),
('ABA', 'Antibiotique antituberculeux'),
('ABC', 'Antibiotique antiacnéique local'),
('ABP', 'Antibiotique de la famille des béta-lactamines (pénicilline A)'),
('AFC', 'Antibiotique de la famille des cyclines'),
('AFM', 'Antibiotique de la famille des macrolides'),
('AH', 'Antihistaminique H1 local'),
('AIM', 'Antidépresseur imipraminique (tricyclique)'),
('AIN', 'Antidépresseur inhibiteur sélectif de la recapture de la sérotonine'),
('ALO', 'Antibiotique local (ORL)'),
('ANS', 'Antidépresseur IMAO non sélectif'),
('AO', 'Antibiotique ophtalmique'),
('AP', 'Antipsychotique normothymique'),
('AUM', 'Antibiotique urinaire minute'),
('CRT', 'Corticoïde, antibiotique et antifongique à  usage local'),
('HYP', 'Hypnotique antihistaminique'),
('LAX', 'Laxatif'),
('PSA', 'Psychostimulant, antiasthénique');

-- --------------------------------------------------------

--
-- Structure de la table `laboratoire`
--

CREATE TABLE `laboratoire` (
  `LAB_CODE` char(2) NOT NULL,
  `LAB_NOM` varchar(15) NOT NULL,
  `LAB_CHEFVENTE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `laboratoire`
--

INSERT INTO `laboratoire` (`LAB_CODE`, `LAB_NOM`, `LAB_CHEFVENTE`) VALUES
('BC', 'Bichat', 'Suzanne Terminus'),
('GY', 'Gyverny', 'Marcel MacDouglas'),
('SW', 'Swiss Kane', 'Alain Poutre');

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE `medicament` (
  `MED_CODE` char(10) NOT NULL,
  `LAB_CODE` char(2) NOT NULL,
  `FM_CODE` char(3) NOT NULL,
  `MED_NOM` varchar(25) NOT NULL,
  `MED_COMPO` varchar(255) NOT NULL,
  `MED_EFFETS` varchar(255) NOT NULL,
  `MED_CONTREINDIC` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `medicament`
--

INSERT INTO `medicament` (`MED_CODE`, `LAB_CODE`, `FM_CODE`, `MED_NOM`, `MED_COMPO`, `MED_EFFETS`, `MED_CONTREINDIC`) VALUES
('3MYC7', 'SW', 'CRT', 'TRIMYCINE', 'Triamcinolone (acétonide) + Néomycine + Nystatine', 'Ce médicament est un corticoïde à  activité forte ou très forte associé à  un antibiotique et un antifongique, utilisé en application locale dans certaines atteintes cutanées surinfectées.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants, d\'infections de la peau ou de parasitisme non traités, d\'acné. Ne pas appliquer sur une plaie, ni sous un pansement occlusif.'),
('ADIMOL9', 'SW', 'ABP', 'ADIMOL', 'Amoxicilline + Acide clavulanique', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d\'allergie aux pénicillines ou aux céphalosporines.'),
('AGIC100', 'BC', 'AA', 'ASPEGIC 100', 'Acétylsalicylate de lysine', 'Traitement symptomatique des douleurs d\'intensité légère à modérée et/ou des états fébriles.', 'Ce médicament contient de l\'acide acétylsalicylique. D\'autres médicaments en contiennent. Ne les associez pas, afin de ne pas dépasser la dose quotidienne recommandée.'),
('AGIC500', 'BC', 'AA', 'ASPEGIC 500', 'Acétylsalicylate de lysine', 'Traitement symptomatique des douleurs d\'intensité légère à modérée et/ou des états fébriles.', 'En cas d\'association avec d\'autres médicaments, pour éviter un risque de surdosage, vérifier l\'absence d\'acide acétylsalicylique dans la composition des autres médicaments.'),
('AMOPIL7', 'GY', 'ABP', 'AMOPIL', 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d\'allergie aux pénicillines. Il doit être administré avec prudence en cas d\'allergie aux céphalosporines.'),
('AMOX45', 'GY', 'ABP', 'AMOXAR', 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'La prise de ce médicament peut rendre positifs les tests de dépistage du dopage.'),
('AMOXIG12', 'SW', 'ABP', 'AMOXI Gé', 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d\'allergie aux pénicillines. Il doit être administré avec prudence en cas d\'allergie aux céphalosporines.'),
('APATOUX22', 'GY', 'ALO', 'APATOUX Vitamine C', 'Tyrothricine + Tétracaïne + Acide ascorbique (Vitamine C)', 'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants, en cas de phénylcétonurie et chez l\'enfant de moins de 6 ans.'),
('BACTIG10', 'GY', 'ABC', 'BACTIGEL', 'Erythromycine', 'Ce médicament est utilisé en application locale pour traiter l\'acné et les infections cutanées bactériennes associées.', 'Ce médicament est contre-indiqué en cas d\'allergie aux antibiotiques de la famille des macrolides ou des lincosanides.'),
('BACTIV13', 'SW', 'AFM', 'BACTIVIL', 'Erythromycine', 'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d\'allergie aux macrolides (dont le chef de file est l\'érythromycine).'),
('BITALV', 'SW', 'AAA', 'BIVALIC', 'Dextropropoxyphène + Paracétamol', 'Ce médicament est utilisé pour traiter les douleurs d\'intensité modérée ou intense.', 'Ce médicament est contre-indiqué en cas d\'allergie aux médicaments de cette famille, d\'insuffisance hépatique ou d\'insuffisance rénale.'),
('CARTION6', 'GY', 'AAA', 'CARTION', 'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol', 'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.', 'Ce médicament est contre-indiqué en cas de troubles de la coagulation (tendances aux hémorragies), d\'ulcère gastroduodénal, maladies graves du foie.'),
('CLAZER6', 'GY', 'AFM', 'CLAZER', 'Clarithromycine', 'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques. Il est également utilisé dans le traitement de l\'ulcère gastro-duodénal, en association avec d\'autres médicaments.', 'Ce médicament est contre-indiqué en cas d\'allergie aux macrolides (dont le chef de file est l\'érythromycine).'),
('CODO400', 'BC', 'AAA', 'CODOLIPRANE 400', 'Codéine + paracétamol', 'Codoliprane Adultes 400 mg/20 mg, est indiqué chez les patients âgés de plus de 15 ans pour le traitement des douleurs aiguës d\'intensité modérée qui ne peuvent pas être soulagées par d\'autres antalgiques comme le paracétamol ou l\'ibuprofène (seul).', 'Les douleurs par désafférentation ne répondent pas à l\'association codéine/paracétamol.'),
('DEPRIL9', 'SW', 'AIM', 'DEPRAMIL', 'Clomipramine', 'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères, certaines douleurs rebelles, les troubles obsessionnels compulsifs et certaines énurésies chez l\'enfant.', 'Ce médicament est contre-indiqué en cas de glaucome ou d\'adénome de la prostate, d\'infarctus récent, ou si vous avez reà§u un traitement par IMAO durant les 2 semaines précédentes ou en cas d\'allergie aux antidépresseurs imipraminiques.'),
('DIMIRTAM6', 'SW', 'AAC', 'DIMIRTAM', 'Mirtazapine', 'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères.', 'La prise de ce produit est contre-indiquée en cas de d\'allergie à  l\'un des constituants.'),
('DOLRIL7', 'SW', 'AAA', 'DOLORIL', 'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol', 'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.', 'Ce médicament est contre-indiqué en cas d\'allergie au paracétamol ou aux salicylates.'),
('DORNOM8', 'GY', 'HYP', 'NORMADOR', 'Doxylamine', 'Ce médicament est utilisé pour traiter l\'insomnie chez l\'adulte.', 'Ce médicament est contre-indiqué en cas de glaucome, de certains troubles urinaires (rétention urinaire) et chez l\'enfant de moins de 15 ans.'),
('DULCO10', 'BC', 'LAX', 'DULCOLAX 10', 'Bisacodyl', '    Traitement symptomatique de la constipation par dyschésie rectale.', 'Une utilisation prolongée (plus de 10 jours) est déconseillée.'),
('EQUILARX6', 'SW', 'AAH', 'EQUILAR', 'Méclozine', 'Ce médicament est utilisé pour traiter les vertiges et pour prévenir le mal des transports.', 'Ce médicament ne doit pas être utilisé en cas d\'allergie au produit, en cas de glaucome ou de rétention urinaire.'),
('EVILR7', 'GY', 'PSA', 'EVEILLOR', 'Adrafinil', 'Ce médicament est utilisé pour traiter les troubles de la vigilance et certains symptomes neurologiques chez le sujet agé.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants.'),
('INSXT5', 'SW', 'AH', 'INSECTIL', 'Diphénydramine', 'Ce médicament est utilisé en application locale sur les piqûres d\'insecte et l\'urticaire.', 'Ce médicament est contre-indiqué en cas d\'allergie aux antihistaminiques.'),
('JOVAI8', 'SW', 'AFM', 'JOVENIL', 'Josamycine', 'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d\'allergie aux macrolides (dont le chef de file est l\'érythromycine).'),
('LIDOXY23', 'GY', 'AFC', 'LIDOXYTRACINE', 'Oxytétracycline +Lidocaïne', 'Ce médicament est utilisé en injection intramusculaire pour traiter certaines infections spécifiques.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants. Il ne doit pas être associé aux rétinoïdes.'),
('LITHOR12', 'SW', 'AP', 'LITHORINE', 'Lithium', 'Ce médicament est indiqué dans la prévention des psychoses maniaco-dépressives ou pour traiter les états maniaques.', 'Ce médicament ne doit pas être utilisé si vous êtes allergique au lithium. Avant de prendre ce traitement, signalez à  votre médecin traitant si vous souffrez d\'insuffisance rénale, ou si vous avez un régime sans sel.'),
('PARMOL16', 'GY', 'AA', 'PARMOCODEINE', 'Codéine + Paracétamol', 'Ce médicament est utilisé pour le traitement des douleurs lorsque des antalgiques simples ne sont pas assez efficaces.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants, chez l\'enfant de moins de 15 Kg, en cas d\'insuffisance hépatique ou respiratoire, d\'asthme, de phénylcétonurie et chez la femme qui allaite.'),
('PHYSOI8', 'SW', 'PSA', 'PHYSICOR', 'Sulbutiamine', 'Ce médicament est utilisé pour traiter les baisses d\'activité physique ou psychique, souvent dans un contexte de dépression.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants.'),
('PIRIZ8', 'GY', 'ABA', 'PIRIZAN', 'Pyrazinamide', 'Ce médicament est utilisé, en association à  d\'autres antibiotiques, pour traiter la tuberculose.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants, d\'insuffisance rénale ou hépatique, d\'hyperuricémie ou de porphyrie.'),
('POMDI20', 'SW', 'AO', 'POMADINE', 'Bacitracine', 'Ce médicament est utilisé pour traiter les infections oculaires de la surface de l\'oeil.', 'Ce médicament est contre-indiqué en cas d\'allergie aux antibiotiques appliqués localement.'),
('TROXT21', 'SW', 'AIN', 'TROXADET', 'Paroxétine', 'Ce médicament est utilisé pour traiter la dépression et les troubles obsessionnels compulsifs. Il peut également être utilisé en prévention des crises de panique avec ou sans agoraphobie.', 'Ce médicament est contre-indiqué en cas d\'allergie au produit.'),
('TXISOL22', 'GY', 'ALO', 'TOUXISOL Vitamine C', 'Tyrothricine + Acide ascorbique (Vitamine C)', 'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.', 'Ce médicament est contre-indiqué en cas d\'allergie à  l\'un des constituants et chez l\'enfant de moins de 6 ans.'),
('URIEG6', 'GY', 'AUM', 'URIREGUL', 'Fosfomycine trométamol', 'Ce médicament est utilisé pour traiter les infections urinaires simples chez la femme de moins de 65 ans.', 'La prise de ce médicament est contre-indiquée en cas d\'allergie à  l\'un des constituants et d\'insuffisance rénale.');

-- --------------------------------------------------------

--
-- Structure de la table `medicament_presente`
--

CREATE TABLE `medicament_presente` (
  `VIS_CODE` char(5) NOT NULL,
  `VISITE_NUM` smallint UNSIGNED NOT NULL,
  `MED_CODE` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `medicament_presente`
--

INSERT INTO `medicament_presente` (`VIS_CODE`, `VISITE_NUM`, `MED_CODE`) VALUES
('c54', 1, 'AMOX45'),
('a17', 1, 'APATOUX22'),
('c54', 2, 'APATOUX22'),
('e22', 3, 'APATOUX22'),
('m45', 1, 'APATOUX22'),
('e22', 3, 'BACTIG10'),
('c54', 3, 'BACTIV13'),
('e22', 1, 'CARTION6'),
('e22', 2, 'CARTION6'),
('a131', 2, 'DEPRIL9'),
('a131', 3, 'DEPRIL9'),
('c14', 1, 'DEPRIL9'),
('c54', 4, 'DIMIRTAM6'),
('m45', 1, 'DIMIRTAM6'),
('m45', 2, 'EQUILARX6'),
('a131', 1, 'LITHOR12'),
('a17', 2, 'PARMOL16'),
('a17', 3, 'PARMOL16'),
('c14', 2, 'PHYSOI8'),
('c14', 3, 'PHYSOI8'),
('m45', 2, 'TROXT21'),
('m45', 3, 'TROXT21'),
('m45', 4, 'URIEG6');

-- --------------------------------------------------------

--
-- Structure de la table `praticien`
--

CREATE TABLE `praticien` (
  `PRA_NUM` mediumint UNSIGNED NOT NULL,
  `TP_CODE` char(2) NOT NULL,
  `REG_CODE` char(2) NOT NULL,
  `PRA_NOM` varchar(25) NOT NULL,
  `PRA_PRENOM` varchar(30) NOT NULL,
  `PRA_ADRESSE1` varchar(50) NOT NULL,
  `PRA_ADRESSE2` varchar(50) DEFAULT NULL,
  `PRA_CP` char(5) NOT NULL,
  `PRA_VILLE` varchar(25) NOT NULL,
  `PRA_COEF` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `praticien`
--

INSERT INTO `praticien` (`PRA_NUM`, `TP_CODE`, `REG_CODE`, `PRA_NOM`, `PRA_PRENOM`, `PRA_ADRESSE1`, `PRA_ADRESSE2`, `PRA_CP`, `PRA_VILLE`, `PRA_COEF`) VALUES
(1, 'MH', 'PL', 'Notini', 'Alain', '114 rue Authie', NULL, '85000', 'LA ROCHE SUR YON', 58),
(2, 'MV', 'CE', 'Gosselin', 'Albert', '13 rue Devon', NULL, '41000', 'BLOIS', 61.5),
(3, 'PS', 'FC', 'Delahaye', 'André', '36 avenue du 6 Juin', NULL, '25000', 'BESANCON', 37.2),
(4, 'PH', 'PI', 'Leroux', 'André', '47 avenue Robert Schuman', NULL, '60000', 'BEAUVAIS', 34.4),
(5, 'PO', 'LG', 'Desmoulins', 'Anne', '31 rue St Jean', NULL, '30000', 'NIMES', 19),
(6, 'MH', 'PI', 'Mouel', 'Anne', '27 rue Auvergne', NULL, '80000', 'AMIENS', 9),
(7, 'MV', 'BG', 'Desgranges-Lentz', 'Antoine', '1 rue Albert de Mun', NULL, '29000', 'MORLAIX', 4),
(8, 'PS', 'AL', 'Martin', 'Arnaud', '31 rue St Jean', NULL, '68000', 'MULHOUSE', 79.3),
(9, 'PH', 'LG', 'Dupuy', 'Benoit', '9 rue Demolombe', NULL, '34000', 'MONTPELLIER', 79.1),
(10, 'PO', 'NP', 'Lerat', 'Bernard', '31 rue St Jean', NULL, '59000', 'LILLE', 51.6),
(11, 'MH', 'AL', 'Marçais-Lefebvre', 'Bertrand', '86Bis rue Basse', NULL, '67000', 'STRASBOURG', 90.2),
(12, 'MV', 'CA', 'Boscher', 'Bruno', '94 rue Falaise', NULL, '10000', 'TROYES', 71),
(13, 'PS', 'IF', 'Morel', 'Catherine', '21 rue Chateaubriand', NULL, '75000', 'PARIS', 76),
(14, 'PH', 'CE', 'Guivarch', 'Chantal', '4 avenue du Général Laperrine', NULL, '45000', 'ORLEANS', 23),
(15, 'PO', 'PA', 'Bessin-Grosdoit', 'Christophe', '92 rue Falaise', NULL, '06000', 'NICE', 44.5),
(16, 'MH', 'PA', 'Rossa', 'Claire', '14 avenue  Thiès', NULL, '06000', 'NICE', 100),
(17, 'MV', 'LG', 'Cauchy', 'Denis', '5 avenue  Ste Thérèse', NULL, '11000', 'NARBONNE', 92),
(18, 'PS', 'BG', 'Gaffé', 'Dominique', '9 avenue  1ère Armée Française', NULL, '35000', 'RENNES', 43),
(19, 'PH', 'PL', 'Guenon', 'Dominique', '98 bd Maréchal Lyautey', NULL, '44000', 'NANTES', 35),
(20, 'PO', 'LI', 'Prévot', 'Dominique', '29 rue Lucien Nelle', NULL, '87000', 'LIMOGES', 30),
(21, 'MH', 'PL', 'Houchard', 'Eliane', '9 rue Demolombe', NULL, '49100', 'ANGERS', 87),
(22, 'MV', 'BG', 'Desmons', 'Elisabeth', '51 rue Bernières', NULL, '29000', 'QUIMPER', 56),
(23, 'PS', 'BG', 'Flament', 'Elisabeth', '11 rue Pasteur', NULL, '35000', 'RENNES', 63),
(24, 'PH', 'PL', 'Goussard', 'Emmanuel', '9 rue Demolombe', NULL, '41000', 'BLOIS', 8),
(25, 'PO', 'AQ', 'Desprez', 'Eric', '9 rue Vaucelles', NULL, '33000', 'BORDEAUX', 81),
(26, 'MH', 'LI', 'Coste', 'Evelyne', '29 rue Lucien Nelle', NULL, '19000', 'TULLE', 88),
(27, 'MV', 'LO', 'Lefebvre', 'Frédéric', '2 pl Wurzburg', NULL, '55000', 'VERDUN', 100),
(28, 'PS', 'BG', 'Lemée', 'Frédéric', '29 avenue du 6 Juin', NULL, '56000', 'VANNES', 65),
(29, 'PH', 'FC', 'Martin', 'Frédéric', 'Bât A 90 rue de Bayeux', NULL, '70000', 'VESOUL', 100),
(30, 'PO', 'FC', 'Marie', 'Frédérique', '172 rue Caponière', NULL, '70000', 'VESOUL', 63),
(31, 'MH', 'IF', 'Rosenstech', 'Geneviève', '27 rue Auvergne', NULL, '75000', 'PARIS', 73),
(32, 'MV', 'PL', 'Pontavice', 'Ghislaine', '8 rue Gaillon', NULL, '86000', 'POITIERS', 53),
(33, 'PS', 'AQ', 'Leveneur-Mosquet', 'Guillaume', '47 avenue  Robert Schuman', NULL, '64000', 'PAU', 37),
(34, 'PH', 'CA', 'Blanchais', 'Guy', '30 rue Authie', NULL, '08000', 'SEDAN', 100),
(35, 'PO', 'NP', 'Leveneur', 'Hugues', '7 place St Gilles', NULL, '62000', 'ARRAS', 1.5),
(36, 'MH', 'HN', 'Mosquet', 'Isabelle', '22 rue Jules Verne', NULL, '76000', 'ROUEN', 15),
(37, 'MV', 'RA', 'Giraudon', 'Jean-Christophe', '1 rue Albert de Mun', NULL, '38200', 'VIENNE', 18.5),
(38, 'PS', 'RA', 'Marie', 'Jean-Claude', '26 rue Hérouville', NULL, '69000', 'LYON', 24),
(39, 'PH', 'BO', 'Maury', 'Jean-François', '5 rue Pierre Girard', NULL, '71000', 'CHALON SUR SAONE', 3),
(40, 'PO', 'CE', 'Dennel', 'Jean-Louis', '7 pl St Gilles', NULL, '28000', 'CHARTRES', 100),
(41, 'MH', 'PI', 'Ain', 'Jean-Pierre', '4 résidence Olympia', NULL, '02000', 'LAON', 1),
(42, 'MV', 'BN', 'Chemery', 'Jean-Pierre', '51 pl Ancienne Boucherie', NULL, '14000', 'CAEN', 79),
(43, 'PS', 'CE', 'Comoz', 'Jean-Pierre', '35 rue Auguste Lechesne', NULL, '18000', 'BOURGES', 68),
(44, 'PH', 'BG', 'Desfaudais', 'Jean-Pierre', '7 pl St Gilles', NULL, '29000', 'BREST', 14),
(45, 'PO', 'PC', 'Phan', 'Jérôme', '9 rue Clos Caillet', NULL, '79000', 'NIORT', 90),
(46, 'MH', 'IF', 'Riou', 'Line', '43 bd Gén Vanier', NULL, '77000', 'MARNE LA VALLEE', 39),
(47, 'MV', 'PC', 'Chubilleau', 'Louis', '46 rue Eglise', NULL, '17000', 'SAINTES', 40),
(48, 'PS', 'AL', 'Lebrun', 'Lucette', '178 rue Auge', NULL, '54000', 'NANCY', 82),
(49, 'PH', 'FC', 'Goessens', 'Marc', '6 avenue du 6 Juin', NULL, '39000', 'DOLE', 100),
(50, 'PO', 'BN', 'Laforge', 'Marc', '5 résid Prairie', NULL, '50000', 'SAINT LO', 53),
(51, 'MH', 'PL', 'Millereau', 'Marc', '36 avenue du 6 Juin', NULL, '72000', 'LA FERTE BERNARD', 86),
(52, 'MV', 'BO', 'Dauverne', 'Marie-Christine', '69 avenue Charlemagne', NULL, '21000', 'DIJON', 56),
(53, 'PS', 'IF', 'Vittorio', 'Myriam', '3 place Champlain', NULL, '94000', 'BOISSY SAINT LEGER', 71),
(54, 'PH', 'CA', 'Lapasset', 'Nhieu', '31 avenue du 6 Juin', NULL, '52000', 'CHAUMONT', 21),
(55, 'PO', 'PC', 'Plantet-Besnier', 'Nicole', '10 avenue de la 1ère Armée Française', NULL, '86000', 'CHATELLEREAULT', 74),
(56, 'MH', 'AU', 'Chubilleau', 'Pascal', '3 rue Hastings', NULL, '15000', 'AURILLAC', 58),
(57, 'MV', 'IF', 'Robert', 'Pascal', '31 rue St Jean', NULL, '93000', 'BOBIGNY', 33),
(58, 'PS', 'PL', 'Jean', 'Pascale', '114 rue Authie', NULL, '49100', 'SAUMUR', 75),
(59, 'PH', 'PA', 'Chanteloube', 'Patrice', '14 avenue Thiès', NULL, '34000', 'MONTPELLIER', 96),
(60, 'PO', 'AL', 'Lecuirot', 'Patrice', 'résidence St Pères 55 rue Pigacière', NULL, '54000', 'NANCY', 48),
(61, 'MH', 'PL', 'Gandon', 'Patrick', '47 avenue Robert Schuman', NULL, '37000', 'TOURS', 100),
(62, 'MV', 'RA', 'Mirouf', 'Patrick', '22 rue Puits Picard', NULL, '74000', 'ANNECY', 92),
(63, 'PS', 'CA', 'Boireaux', 'Philippe', '14 avenue Thiès', NULL, '51000', 'CHALONS EN CHAMPAGNE', 91),
(64, 'PH', 'MP', 'Cendrier', 'Philippe', '7 pl St Gilles', NULL, '12000', 'RODEZ', 33),
(65, 'PO', 'LG', 'Duhamel', 'Philippe', '114 rue Authie', NULL, '34000', 'MONTPELLIER', 20),
(66, 'MH', 'PL', 'Grigy', 'Philippe', '15 rue Mélingue', NULL, '44000', 'CLISSON', 57),
(67, 'MV', 'MP', 'Linard', 'Philippe', '1 rue Albert de Mun', NULL, '81000', 'ALBI', 97),
(68, 'PS', 'MP', 'Lozier', 'Philippe', '8 rue Gaillon', NULL, '31000', 'TOULOUSE', 10),
(69, 'PH', 'LI', 'Dechâtre', 'Pierre', '63 avenue Thiès', NULL, '23000', 'MONTLUCON', 51),
(70, 'PO', 'AQ', 'Goessens', 'Pierre', '22 rue Jean Romain', NULL, '40000', 'MONT DE MARSAN', 85),
(71, 'MH', 'LO', 'Leménager', 'Pierre', '39 avenue du 6 Juin', NULL, '57000', 'METZ', 24),
(72, 'MV', 'MP', 'Née', 'Pierre', '39 avenue  6 Juin', NULL, '82000', 'MONTAUBAN', 14.5),
(73, 'PS', 'LG', 'Guyot', 'Pierre-Laurent', '43 bd Général Vanier', NULL, '48000', 'MENDE', 70.5),
(74, 'PH', 'PA', 'Chauchard', 'Roger', '9 rue Vaucelles', NULL, '13001', 'MARSEILLE', 100),
(75, 'PO', 'AL', 'Mabire', 'Roland', '11 rue Boutiques', NULL, '67000', 'STRASBOURG', 84.5),
(76, 'MH', 'BN', 'Leroy', 'Soazig', '45 rue Boutiques', NULL, '61000', 'ALENCON', 100),
(77, 'MV', 'MP', 'Guyot', 'Stéphane', '26 rue Hérouville', NULL, '46000', 'FIGEAC', 6),
(78, 'PS', 'HN', 'Delposen', 'Sylvain', '39 avenue du 6 Juin', NULL, '27000', 'DREUX', 58),
(79, 'PH', 'PI', 'Rault', 'Sylvie', '15 bd Richemond', NULL, '02000', 'SOISSON', 100),
(80, 'PO', 'AL', 'Renouf', 'Sylvie', '98 bd Maréchal Lyautey', NULL, '88000', 'EPINAL', 85),
(81, 'MH', 'RA', 'Alliet-Grach', 'Thierry', '14 avenue Thiès', NULL, '07000', 'PRIVAS', 90),
(82, 'MV', 'RA', 'Bayard', 'Thierry', '92 rue Falaise', NULL, '42000', 'SAINT ETIENNE', 54),
(83, 'PS', 'RA', 'Gauchet', 'Thierry', '7 rue Desmoueux', NULL, '38100', 'GRENOBLE', 81),
(84, 'PH', 'MP', 'Bobichon', 'Tristan', '219 rue Caponière', NULL, '09000', 'FOIX', 43.5),
(85, 'PO', 'AQ', 'Duchemin-Laniel', 'Véronique', '130 rue St Jean', NULL, '33000', 'LIBOURNE', 53),
(86, 'MH', 'PL', 'Younès', 'Laurent', '34 rue Demolombe', NULL, '53000', 'MAYENNE', 99),
(87, 'MV', 'PA', 'Delétoile', 'André', '14, rue Bédarride', NULL, '13100', 'AIX EN PROVENCE', 91),
(88, 'MV', 'PA', 'Azrayan', 'Malik', '56, rue Nationale', NULL, '13770', 'VENELLES', 91),
(89, 'MV', 'PA', 'Artières', 'Antoine', '454, Cours de Arts et métiers', NULL, '13100', 'AIX EN PROVENCE', 7),
(90, 'MV', 'PA', 'Dacosta', 'Michèle', '34 boulevard des Lices', NULL, '13200', 'ARLES', 92),
(91, 'MV', 'PA', 'Demar', 'Alexandre', '35 bd du Théâtre', NULL, '13500', 'MARTIQUES', 60),
(92, 'MV', 'PA', 'Mazetta', 'Léon', '450, Le Prado', NULL, '13008', 'MARSEILLE', 91),
(93, 'MV', 'RA', 'Garnier', 'Alexandre', '450, Quai de l\'Isère', NULL, '38000', 'GRENOBRE', 60),
(94, 'MV', 'RA', 'Chautard', 'Léon', '3 rue Chataing', NULL, '38580', 'ALLEVARD', 81),
(95, 'MV', 'PL', 'Bunisset', 'Francis', '10 rue Nicolas Chorier', NULL, '85000', 'LA ROCHE SUR YON', 22),
(96, 'MV', 'LG', 'Cacheux', 'Bernard', '114 rue Authie', NULL, '34000', 'MONTPELLIER', 32),
(97, 'MV', 'PA', 'Clepkens', 'Christophe', '12 rue Fédérico Garcia Lorca', NULL, '13009', 'MARSEILLE', 30),
(98, 'MV', 'FC', 'Debelle', 'Jeanne', '134 rue Stalingrad', NULL, '25000', 'BESANCON', 68),
(99, 'MV', 'RA', 'Finck', 'Jacques', 'rte Montreuil Bellay', NULL, '74000', 'ANNECY', 60),
(100, 'MV', 'MP', 'Gest', 'Alain', '30 rue Authie', NULL, '46000', 'FIGEAC', 40),
(101, 'MV', 'IF', 'Gheysen', 'Galassus', '32 avenue Foch', NULL, '75000', 'PARIS', 100),
(102, 'MV', 'LG', 'Lanne', 'Bernard', '4 rue Bayeux', NULL, '30000', 'NIMES', 30),
(103, 'MV', 'PA', 'Legendre', 'Jean', '39 rue Raspail', NULL, '83000', 'AVIGNON', 50),
(104, 'MV', 'LG', 'Pernot', 'Claude-Noël', '6 rue Alexandre 1 de Yougoslavie', NULL, '11000', 'NARBONNE', 44),
(105, 'MV', 'IF', 'Marcouiller', 'Gérard', '7 pl St Gilles', NULL, '91000', 'ISSY LES MOULINEAUX', 24),
(106, 'MV', 'RA', 'Quiquandon', 'Joël', '7 rue Ernest Renan', NULL, '78000', 'CHAMBERY', 60),
(107, 'MV', 'MP', 'Tréhet', 'Alain', '7D chem Barral', NULL, '12000', 'RODEZ', 40),
(108, 'MV', 'BO', 'Loirat', 'Didier', 'Les Pêchers cité Bourg la Croix', NULL, '89000', 'AUXERRE', 62),
(109, 'MV', 'BO', 'Sartin', 'Robert', '48 Quai de la Saône', NULL, '71000', 'MACON', 50),
(110, 'MV', 'BO', 'Ribaud', 'Jean', '8, bd de la République', NULL, '71000', 'MACON', 50),
(111, 'MV', 'BO', 'Lefebvre', 'Marcel', '4 rue de la basilique', NULL, '58000', 'NEVERS', 70),
(112, 'MV', 'BO', 'Martin', 'Adéline', '49 rue Neuve', NULL, '89100', 'SENS', 30),
(113, 'MV', 'BO', 'Allemand', 'Régine', '6 grand rue', NULL, '89200', 'AVALLON', 56),
(114, 'MV', 'BO', 'LeDantec', 'Yves', '45, place de la République', NULL, '89000', 'COSNE SUR LOIRE', 62),
(115, 'MV', 'BO', 'Grebert', 'Lucie', '48, bd de la Gare', NULL, '89000', 'TOURNUS', 62),
(116, 'MV', 'MP', 'Leveque', 'Serge', '8 des Aiguilles', NULL, '46000', 'CAHORS', 62),
(117, 'MV', 'MP', 'Demarets', 'Andrée', 'Chemin de Bonne', NULL, '65000', 'TARBES', 22),
(118, 'MV', 'IF', 'Delassus', 'Daniel', '4, Bd national', NULL, '77300', 'FONTAINEBLEAU', 70),
(119, 'MV', 'IF', 'Morel', 'Georges', '56, rue des Alouettes', NULL, '91150', 'ETAMPES', 62),
(120, 'MV', 'IF', 'Bouquet', 'Jeanne', '34 rue Victor Hugo', NULL, '77000', 'MEAUX', 62),
(121, 'MV', 'LG', 'Fabre', 'Antoinette', '60, bd des remparts', NULL, '11000', 'CARCASSONNE', 76),
(122, 'MV', 'LG', 'Blanchard', 'Raymond', '35, rue haute', NULL, '11400', 'CASTELNAUDARY', 42),
(123, 'MV', 'FC', 'Campani', 'Lucien', '456, rue Georges', NULL, '39000', 'LONS LE SAULNIER', 62),
(124, 'MV', 'FC', 'Couderc', 'Antoine', '8, place des Trés', NULL, '25300', 'PONTARLIER', 28),
(125, 'MV', 'FC', 'Freymann', 'Jean', '51, rue de l\'Egalité', NULL, '25200', 'MONTBELIARD', 68),
(126, 'MV', 'FC', 'Bonnefond', 'Jean-Pierre', '34 rue de Berne', NULL, '70120', 'GRANDECOURT', 100),
(127, 'MV', 'FC', 'Chenel', 'Lucie', '78, rue des Salines', NULL, '25610', 'ARC ET SENANS', 72);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `REG_CODE` char(2) NOT NULL,
  `REG_NOM` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`REG_CODE`, `REG_NOM`) VALUES
('AL', 'Alsace'),
('AQ', 'Aquitaine'),
('AU', 'Auvergne'),
('BG', 'Bretagne'),
('BN', 'Basse Normandie'),
('BO', 'Bourgogne'),
('CA', 'Champagne-Ardennes'),
('CE', 'Centre'),
('CO', 'Corse'),
('FC', 'Franche-Comté'),
('HN', 'Haute Normandie'),
('IF', 'Ile de France'),
('LG', 'Languedoc-Roussillon'),
('LI', 'Limousin'),
('LO', 'Lorraine'),
('MP', 'Midi-Pyrénées'),
('NP', 'Nord-Pas de Calais'),
('PA', 'Provence-Côte d\'Azur'),
('PC', 'Poitou-Charentes'),
('PI', 'Picardie'),
('PL', 'Pays de la Loire'),
('RA', 'Rhône-Alpes');

-- --------------------------------------------------------

--
-- Structure de la table `type_praticien`
--

CREATE TABLE `type_praticien` (
  `TP_CODE` char(2) NOT NULL,
  `TP_LIBELLE` varchar(25) NOT NULL,
  `TP_LIEU_EXERCICE` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_praticien`
--

INSERT INTO `type_praticien` (`TP_CODE`, `TP_LIBELLE`, `TP_LIEU_EXERCICE`) VALUES
('MH', 'Médecin hospitalier', 'Hopital ou clinique'),
('MV', 'Médecine de Ville', 'Cabinet'),
('PH', 'Pharmacien hospitalier', 'Hopital ou clinique'),
('PO', 'Pharmacien d\'officine', 'Pharmacie'),
('PS', 'Personnel de santé', 'Centre paramédical');

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

CREATE TABLE `visite` (
  `VIS_CODE` char(5) NOT NULL,
  `VISITE_NUM` smallint UNSIGNED NOT NULL,
  `PRA_NUM` mediumint UNSIGNED NOT NULL,
  `PRA_NUM_REMPLACANT` mediumint UNSIGNED DEFAULT NULL,
  `VISITE_DATE` date NOT NULL,
  `VISITE_DH_SAISIE_CR` datetime DEFAULT NULL,
  `VISITE_MOTIF` tinyint UNSIGNED NOT NULL,
  `VISITE_MOTIF_EXPLICATION` varchar(50) DEFAULT NULL,
  `VISITE_BILAN` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `visite`
--

INSERT INTO `visite` (`VIS_CODE`, `VISITE_NUM`, `PRA_NUM`, `PRA_NUM_REMPLACANT`, `VISITE_DATE`, `VISITE_DH_SAISIE_CR`, `VISITE_MOTIF`, `VISITE_MOTIF_EXPLICATION`, `VISITE_BILAN`) VALUES
('a131', 1, 62, NULL, '2016-06-11', '2016-06-11 17:00:00', 1, NULL, 'RàS'),
('a131', 2, 83, NULL, '2016-06-19', '2016-06-19 17:00:00', 1, NULL, 'RàS'),
('a131', 3, 93, NULL, '2016-06-19', '2016-06-19 19:00:00', 2, NULL, 'Rendez-Vous acceptable.'),
('a17', 1, 106, NULL, '2016-06-10', '2016-06-10 17:00:00', 1, NULL, 'RàS'),
('a17', 2, 94, NULL, '2016-06-19', '2016-06-19 17:00:00', 1, NULL, 'RàS'),
('a17', 3, 99, NULL, '2016-06-19', '2016-06-19 19:00:00', 1, NULL, 'RàS'),
('c14', 1, 103, NULL, '2016-06-11', '2016-06-11 17:00:00', 1, NULL, 'RàS'),
('c14', 2, 15, NULL, '2016-06-19', '2016-06-19 19:00:00', 1, NULL, 'RàS'),
('c14', 3, 16, 15, '2016-06-20', '2016-06-20 17:00:00', 1, NULL, 'Malade. Remplacé par le Dr Bessin-Grosdoit pendant 1 mois. A revoir.'),
('c14', 4, 16, NULL, '2016-07-20', '2016-07-20 17:00:00', 3, NULL, 'Remotivé.'),
('c54', 1, 11, NULL, '2017-09-14', '2017-09-14 16:51:19', 1, NULL, 'RàS'),
('c54', 2, 75, NULL, '2017-09-14', '2017-09-14 17:10:30', 1, NULL, 'RàS'),
('c54', 3, 48, NULL, '2017-10-14', '2017-09-14 19:31:19', 1, NULL, 'RàS'),
('c54', 4, 75, NULL, '2017-10-14', '2017-09-14 19:55:00', 1, NULL, 'RàS'),
('e22', 1, 74, NULL, '2016-06-12', '2016-06-12 17:00:00', 1, NULL, 'RàS'),
('e22', 2, 87, NULL, '2016-06-19', '2016-06-19 19:00:00', 1, NULL, 'RàS'),
('e22', 3, 88, NULL, '2016-06-20', '2016-06-20 17:00:00', 1, NULL, 'RàS'),
('m45', 1, 62, NULL, '2017-09-14', '2017-09-14 17:10:56', 1, NULL, 'RàS'),
('m45', 2, 62, NULL, '2017-09-14', '2017-09-14 17:10:56', 1, NULL, 'RàS'),
('m45', 3, 62, NULL, '2017-09-14', '2017-09-14 17:10:56', 1, NULL, 'RàS'),
('m45', 4, 62, NULL, '2017-09-14', '2017-09-14 17:10:56', 1, NULL, 'RàS');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `VIS_CODE` char(5) NOT NULL,
  `LAB_CODE` char(2) NOT NULL,
  `VIS_PASSE` varchar(60) NOT NULL,
  `VIS_NOM` varchar(25) NOT NULL,
  `VIS_PRENOM` varchar(30) NOT NULL,
  `VIS_ADRESSE1` varchar(50) NOT NULL,
  `VIS_ADRESSE2` varchar(50) DEFAULT NULL,
  `VIS_CP` char(5) NOT NULL,
  `VIS_VILLE` varchar(25) NOT NULL,
  `VIS_DATE_EMBAUCHE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `visiteur`
--

INSERT INTO `visiteur` (`VIS_CODE`, `LAB_CODE`, `VIS_PASSE`, `VIS_NOM`, `VIS_PRENOM`, `VIS_ADRESSE1`, `VIS_ADRESSE2`, `VIS_CP`, `VIS_VILLE`, `VIS_DATE_EMBAUCHE`) VALUES
('a131', 'SW', '$2y$10$DSt9IujobMKtaxiH2y92ouX/MgP1jRVyL.ySMMFG7sVnsMCT5uDD2', 'Villechalane', 'Louis', '8 cours Lafontaine', NULL, '69000', 'LYON', '1992-12-10'),
('a17', 'GY', '924278e00ade1aac2b7f0e39a8c608ea', 'Andres', 'David', '1 rue Aimon de Chissée', NULL, '38000', 'GRENOBLE', '1991-08-25'),
('a55', 'GY', '09b35d77b1c3afa2f3d3beef8366f25f', 'Bedos', 'Christian', '1 rue Bénédictins', NULL, '65000', 'TARBES', '1987-07-16'),
('a93', 'SW', '29003b76d525b60dc7bda037ad3d5f4e', 'Tusseau', 'Louis', '22 rue Renou', NULL, '86000', 'POITIERS', '1999-01-01'),
('b16', 'SW', '91cb7485e51e5ec7dcf22dd60db0b5a3', 'Bioret', 'Luc', '1 rue Linne', NULL, '35000', 'RENNES', '2007-03-20'),
('b25', 'SW', '3129b5407df9a172659d5681b32cdce4', 'Bunisset', 'Denise', '1 rue Lionne', NULL, '49100', 'ANGERS', '1994-07-02'),
('b34', 'SW', '5dc911dd2e627fb22d2360d5a712e4e5', 'Cadic', 'Eric', '123 rue Caponière', NULL, '41000', 'BLOIS', '1993-12-05'),
('b4', 'SW', '8caaa6ccd377d7d984675d75dc2f0194', 'Charoze', 'Catherine', '100 pl Géants', NULL, '33000', 'BORDEAUX', '1997-09-24'),
('b59', 'GY', 'a92109d06702e010d843db84b32b7ea4', 'Cottin', 'Vincent', '36 sq Capucins', NULL, '05000', 'GAP', '1995-10-20'),
('c14', 'SW', 'a30b7af7ad6fd12c7d0335ed0b749cbc', 'Daburon', 'François', '13 promenade des Anglais', NULL, '06000', 'NICE', '1989-01-31'),
('c3', 'SW', '662d1f9f74614ff5d15e9b4fa6f3afef', 'Delrieux', 'Philippe', '13 rue Charles Peguy', NULL, '10000', 'TROYES', '1992-05-04'),
('c54', 'SW', '5e6dbf80eeabe4414b76dccda28484c5', 'Debelle', 'Michel', '181 rue Caponière', NULL, '88000', 'EPINAL', '1991-03-31'),
('d51', 'GY', '8d4da03218a694b86667e748c62711d0', 'Debroise', 'Michel', '2 av 6 Juin', NULL, '70000', 'VESOUL', '1997-11-17'),
('e22', 'GY', 'eae78466e4c74eec6339669dbdf55e49', 'Desmarquest', 'Nathalie', '14 rue Fédérico Garcia Lorca', NULL, '13005', 'MARSEILLE', '1989-03-23'),
('e24', 'SW', '9754cd85275c1345e91dae5f6902b3d3', 'Desnost', 'Pierre', '16 rue Barral de Montferrat', NULL, '13006', 'MARSEILLE', '1993-04-30'),
('e39', 'GY', '11745ad620a4b2e918e1670134d6646d', 'Dudouit', 'Frédéric', '18 quai Xavier Jouvin', NULL, '75000', 'PARIS', '2008-04-25'),
('e49', 'GY', 'e633b65405d435ba0980cd7b1fcd2364', 'Duncombe', 'Claude', '19 av Alsace Lorraine', NULL, '09000', 'FOIX', '1996-02-18'),
('e5', 'GY', 'b6f5c405b38371ffb649bf83257b891f', 'Enault-Pascreau', 'Céline', '25B rue Stalingrad', NULL, '40000', 'MONT DE MARSAN', '1990-11-26'),
('e52', 'GY', '1de5bdb3b1877d42f1cf506197042d72', 'Eynde', 'Valérie', '3 rue Henri Moissan', NULL, '76000', 'ROUEN', '1991-10-30'),
('f39', 'GY', '1a7d018035b0e4022ef856131c8fe633', 'Frémont', 'Fernand', '4 rue Jean Giono', NULL, '69000', 'LYON', '1997-02-14'),
('g30', 'GY', 'd9815ae0882c2593cf2b79abc0054249', 'Girard', 'Yvon', '31 av 6 Juin', NULL, '80000', 'AMIENS', '2000-03-19'),
('g53', 'GY', '28694be41fe17667bb27dabad97b5ab9', 'Gombert', 'Luc', '32 rue Emile Gueymard', NULL, '56000', 'VANNES', '1995-10-02'),
('g7', 'GY', '7843a3376c16bb67c154fddd8eb1158b', 'Guindon', 'Caroline', '40 rue Maréchal Montgomery', NULL, '87000', 'LIMOGES', '2005-01-14'),
('h13', 'SW', 'c4c61fd0ca02bfab4f031dceecd6b22d', 'Guindon', 'François', '44 rue Picotière', NULL, '19000', 'TULLE', '2011-05-07'),
('h30', 'SW', '71f0dc050f6ede4adebc880278277db2', 'Igigabel', 'Guy', '33 gal Arlequin', NULL, '94000', 'CRETEIL', '1999-04-25'),
('h35', 'GY', '9bd259de6b04447d6fadaab731586416', 'Jourdren', 'Pierre', '34 av Jean Perrot', NULL, '15000', 'AURILLAC', '2004-08-19'),
('h40', 'GY', 'a92c5df585c44f560c8776bef2edea4c', 'Juttard', 'Pierre-Raoul', '34 cours Jean Jaurès', NULL, '08000', 'SEDAN', '2003-02-28'),
('j45', 'SW', 'd0b3edba3b917a06e637b618a59f1081', 'Labouré-Morel', 'Saout', '38 cours Berriat', NULL, '52000', 'CHAUMONT', '1998-01-31'),
('j50', 'GY', 'e344682442916c4f5f2fe68017e362b6', 'Landré', 'Philippe', '4 av Gén Laperrine', NULL, '59000', 'LILLE', '1992-11-30'),
('j8', 'GY', 'a95a3ce5556e0edd31dc9306d971aabd', 'Langeard', 'Hugues', '39 av Jean Perrot', NULL, '93000', 'BAGNOLET', '1998-06-17'),
('k53', 'SW', '238c171c8ca8a5f721f2b3c9f5b39481', 'Lemoine', 'Noël', '4 av Beauvert', NULL, '68000', 'MULHOUSE', '1983-03-19'),
('l23', 'SW', '0ac21de9f2d27660f856f174f683128d', 'Leclercq', 'Servane', '11 rue Quinconce', NULL, '18000', 'BOURGES', '2006-05-31'),
('l46', 'GY', 'b3f4508a2f13b4f90b151fa742cfd7e7', 'Lecornu', 'Jean-Bernard', '4 bd Maréchal Foch', NULL, '72000', 'LA FERTE BERNARD', '2003-12-31'),
('l56', 'SW', '41332885301569cf06e6502e06c80770', 'Lecornu', 'Ludovic', '4 rue Abel Servien', NULL, '25000', 'BESANCON', '2001-02-09'),
('m35', 'SW', 'cdd958b6b06153fcdfc2743d69a65bfe', 'Lejard', 'Agnès', '4 rue Anthoard', NULL, '82000', 'MONTAUBAN', '1987-09-30'),
('m45', 'SW', '84e693b8786364bdc4f59f271e66cf0a', 'Lesaulnier', 'Pascal', '47 rue Thiers', NULL, '13100', 'AIX EN PROVENCE', '1990-09-30'),
('n42', 'GY', 'f397ecd22277886688cb037b898b0b72', 'Letessier', 'Stéphane', '5 chem Capuche', NULL, '27000', 'EVREUX', '1996-02-29'),
('n59', 'SW', '5af49c7f32c45175f503c4c84932ea8a', 'Maffezzoli', 'Thibaud', '5 rue Chateaubriand', NULL, '02000', 'LAON', '1994-11-30'),
('o26', 'GY', '832418e10f30867fe6a0621985828ceb', 'Mancini', 'Anne', '5 rue D\'Agier', NULL, '48000', 'MENDE', '2006-12-31'),
('p40', 'SW', '3ba5263746c13038b235bcc07d4a8d58', 'Michel', 'Jean-Claude', '5 rue Gabriel Péri', NULL, '61000', 'FLERS', '1992-12-02'),
('p41', 'GY', 'f6a3b2883751ae24ea665a8a5289d894', 'Montecot', 'François', '6 rue Paul Valéry', NULL, '17000', 'SAINTES', '2005-07-19'),
('p42', 'SW', 'de879880cbea027feecd5a65b8e0e782', 'Notini', 'Veronique', '5 rue Lieut Chabal', NULL, '60000', 'BEAUVAIS', '1994-11-30'),
('p49', 'GY', 'c88dd90516218942d33f7be6842e6361', 'Onfroy', 'Den', '5 rue Sidonie Jacolin', NULL, '37000', 'TOURS', '2001-09-30'),
('p6', 'SW', '228c3e8583a8102725d90d6fb70c09e4', 'Pascreau', 'Charles', '57 bd Maréchal Foch', NULL, '11100', 'NARBONNE', '2003-02-28'),
('p8', 'GY', '841c88377acb5fd62ee3ff3a5f23ba8b', 'Perrier', 'Maître', '6 rue Aubert Dubayet', NULL, '71000', 'CHALON SUR SAONE', '2006-05-31'),
('q17', 'GY', '58357efc48595686d3b515eb0baa2fec', 'Petit', 'Jean-Louis', '7 rue Ernest Renan', NULL, '50000', 'SAINT LO', '2007-08-31'),
('r24', 'GY', 'd4a60d01161a1883cc7c8b4728d3f1ba', 'Piquery', 'Patrick', '9 rue Vaucelles', NULL, '14000', 'CAEN', '1984-07-28'),
('s10', 'GY', 'b5d9c778b7aa58cae174494b3d27a402', 'Retailleau', 'Josselin', '88Bis rue Saumuroise', NULL, '39000', 'DOLE', '2011-10-31'),
('s21', 'SW', 'db0cfe32177e6129aa1b02710043b8dd', 'Retailleau', 'Pascal', '32 bd Ayrault', NULL, '23000', 'MONTLUCON', '2008-08-31'),
('t43', 'SW', 'c2d3826c8ad09a16668d68c7293e8473', 'Souron', 'Maryse', '7B rue Gay Lussac', NULL, '21000', 'DIJON', '2005-02-28'),
('t47', 'SW', 'e33a9cf086aea63cfdd552d67f766567', 'Tiphagne', 'Patrick', '7B rue Gay Lussac', NULL, '62000', 'ARRAS', '2009-07-31'),
('t60', 'GY', '5ba75b8e264e33574078ff20e6aff4dd', 'Tusseau', 'Josselin', '63 rue Bon Repos', NULL, '34000', 'MONTPELLIER', '1991-03-18');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_visiteur_affectation_actuelle`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `v_visiteur_affectation_actuelle` (
`AFF_DATE` date
,`AFF_NUM` tinyint unsigned
,`AFF_ROLE` tinyint unsigned
,`REG_CODE` char(2)
,`VIS_CODE` char(5)
);

-- --------------------------------------------------------

--
-- Structure de la vue `v_visiteur_affectation_actuelle`
--
DROP TABLE IF EXISTS `v_visiteur_affectation_actuelle`;
-- Erreur de lecture de structure pour la table gsb1_1.v_visiteur_affectation_actuelle : #1142 - La commande 'SHOW VIEW' est interdite à l'utilisateur: 'PPEgsb'@'@localhost' sur la table 'v_visiteur_affectation_actuelle'

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD PRIMARY KEY (`VIS_CODE`,`AFF_NUM`),
  ADD KEY `FK_REGCODE` (`REG_CODE`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`DEP_CODE`),
  ADD KEY `fk_REGCODE` (`REG_CODE`);

--
-- Index pour la table `echantillon_distribue`
--
ALTER TABLE `echantillon_distribue`
  ADD PRIMARY KEY (`VIS_CODE`,`VISITE_NUM`,`MED_CODE`),
  ADD KEY `FK_MED_CODE` (`MED_CODE`);

--
-- Index pour la table `famille_medicament`
--
ALTER TABLE `famille_medicament`
  ADD PRIMARY KEY (`FM_CODE`);

--
-- Index pour la table `laboratoire`
--
ALTER TABLE `laboratoire`
  ADD PRIMARY KEY (`LAB_CODE`);

--
-- Index pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD PRIMARY KEY (`MED_CODE`),
  ADD KEY `FK_LABCODE` (`LAB_CODE`),
  ADD KEY `FK_MEDICAMENT_FAMILLE_MEDICAMENT_idx` (`FM_CODE`);

--
-- Index pour la table `medicament_presente`
--
ALTER TABLE `medicament_presente`
  ADD PRIMARY KEY (`VIS_CODE`,`VISITE_NUM`,`MED_CODE`),
  ADD KEY `FK_MED_CODE` (`MED_CODE`);

--
-- Index pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD PRIMARY KEY (`PRA_NUM`),
  ADD KEY `FK_TP_CODE` (`TP_CODE`),
  ADD KEY `FK_REG_CODE` (`REG_CODE`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`REG_CODE`);

--
-- Index pour la table `type_praticien`
--
ALTER TABLE `type_praticien`
  ADD PRIMARY KEY (`TP_CODE`);

--
-- Index pour la table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`VIS_CODE`,`VISITE_NUM`),
  ADD KEY `FK_PRA_NUM` (`PRA_NUM`),
  ADD KEY `FK_PRA_NUM_REMPLACANT` (`PRA_NUM_REMPLACANT`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`VIS_CODE`),
  ADD KEY `FK_LABCODE` (`LAB_CODE`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `praticien`
--
ALTER TABLE `praticien`
  MODIFY `PRA_NUM` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD CONSTRAINT `FK_AFFECTATION_REGION` FOREIGN KEY (`REG_CODE`) REFERENCES `region` (`REG_CODE`),
  ADD CONSTRAINT `FK_AFFECTATION_VISITEUR` FOREIGN KEY (`VIS_CODE`) REFERENCES `visiteur` (`VIS_CODE`);

--
-- Contraintes pour la table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `fk_DEPARTEMENT_REGION` FOREIGN KEY (`REG_CODE`) REFERENCES `region` (`REG_CODE`);

--
-- Contraintes pour la table `echantillon_distribue`
--
ALTER TABLE `echantillon_distribue`
  ADD CONSTRAINT `FK_ECHANTILLON_DISTRIBUE_MEDICAMENT` FOREIGN KEY (`MED_CODE`) REFERENCES `medicament` (`MED_CODE`),
  ADD CONSTRAINT `FK_ECHANTILLON_DISTRIBUE_VISITE` FOREIGN KEY (`VIS_CODE`,`VISITE_NUM`) REFERENCES `visite` (`VIS_CODE`, `VISITE_NUM`);

--
-- Contraintes pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD CONSTRAINT `FK_MEDICAMENT_FAMILLE_MEDICAMENT` FOREIGN KEY (`FM_CODE`) REFERENCES `famille_medicament` (`FM_CODE`),
  ADD CONSTRAINT `FK_MEDICAMENT_LABORATOIRE` FOREIGN KEY (`LAB_CODE`) REFERENCES `laboratoire` (`LAB_CODE`);

--
-- Contraintes pour la table `medicament_presente`
--
ALTER TABLE `medicament_presente`
  ADD CONSTRAINT `FK_MEDICAMENT_PRESENTE_MEDICAMENT` FOREIGN KEY (`MED_CODE`) REFERENCES `medicament` (`MED_CODE`),
  ADD CONSTRAINT `FK_MEDICAMENT_PRESENTE_VISITE` FOREIGN KEY (`VIS_CODE`,`VISITE_NUM`) REFERENCES `visite` (`VIS_CODE`, `VISITE_NUM`);

--
-- Contraintes pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD CONSTRAINT `FK_PRATICIEN_REGION` FOREIGN KEY (`REG_CODE`) REFERENCES `region` (`REG_CODE`),
  ADD CONSTRAINT `FK_PRATICIEN_TYPE_PRATICIEN` FOREIGN KEY (`TP_CODE`) REFERENCES `type_praticien` (`TP_CODE`);

--
-- Contraintes pour la table `visite`
--
ALTER TABLE `visite`
  ADD CONSTRAINT `FK_VISITE_MEDECIN` FOREIGN KEY (`PRA_NUM`) REFERENCES `praticien` (`PRA_NUM`),
  ADD CONSTRAINT `FK_VISITE_MEDECIN_REMPLACANT` FOREIGN KEY (`PRA_NUM_REMPLACANT`) REFERENCES `praticien` (`PRA_NUM`),
  ADD CONSTRAINT `FK_VISITE_VISITEUR` FOREIGN KEY (`VIS_CODE`) REFERENCES `visiteur` (`VIS_CODE`);

--
-- Contraintes pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD CONSTRAINT `FK_VISITEUR_LABORATOIRE` FOREIGN KEY (`LAB_CODE`) REFERENCES `laboratoire` (`LAB_CODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
