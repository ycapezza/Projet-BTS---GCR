<!Doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8" />
    <link href="./Styles/Gcr.css" rel="stylesheet">
    <script language="JavaScript" src="JavaScript/jquery-3.6.4.min.js"></script>
    <?php
    $jsFichier = 'JavaScript/crVisite.js';
    $bibliothequeJs = './JavaScript/Bibliotheque01.js';
    if(isset($jsFichier)) { ?>
        <script language="javascript" src="<?php echo $jsFichier; ?>"></script>
    <?php } if(isset($bibliothequeJs)) { ?>
        <script language="javascript" src="<?php echo $bibliothequeJs; ?>"></script>
    <?php } ?>
    <title>GSB : Suivi de la Visite médicale </title>
</head>
<body>
<div id="haut"><h1><img src="Images/logo.jpg" width="100" height="60"/>Gestion des visites</h1></div>
<div id="gauche">
    <?php
    $infosUtil = ouvreSessionUtilisateur($_SESSION['utilId']);
    ?>
    <p id="infosUtil">
        <?php
        echo $_SESSION['utilNom'];
        echo "&nbsp;";
        echo $_SESSION['utilPnom'];
        echo "<br>";
        echo $_SESSION['utilRole'];
        echo "<br>";
        echo "Région &nbsp;";
        echo $_SESSION['utilReg'];
        ?>
    </p>
	<h2>Outils</h2>
	<ul><li>Comptes-Rendus</li>
		<ul>
			<li><a href="./Index.php?gestion=12">Nouveaux</a></li>
			<li>Consulter</li>
		</ul>
		<li>Consulter</li>
		<ul><li><a href="./Index.php?gestion=<?php echo GEST_MED; ?>&action=<?php echo MED_FAM; ?>">Médicaments</a></li>
		    <li><a href="./Index.php?gestion=<?php echo GEST_PRA; ?>&action=<?php echo PRA_LST; ?>" >Praticiens</a></li>
	            <li><a href="./Index.php?action=13" >Autres visiteurs</a></li>
		</ul>
                    <li><a href="./Index.php?action=30">Fermer la session</a></li>
	</ul>
</div>


	

