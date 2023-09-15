<?php 
$jeuEnregistrements = getlisteFamilleMedicaments();
require './Include/Bibliotheque01.inc.php';
?>
<div id="droite">
	<div id="bas">
            <h1> Médicaments </h1>
         <form name="formChoixFamilleMedicaments" method="post" action="./Index.php?action=10&med=15">
    <?php 
    if (isset($_POST['lstFam'])) {
        $numfamille = $_POST['lstFam'];
    } else {
        $numfamille = NULL;
    }
        echo formSelectDepuisRecordset('Choisir une famille :', 'lstFam', 'lstFam', $jeuEnregistrements, $numfamille, 30);
        echo formBoutonSubmit("OK", "OK", "OK", 40);
    ?>
    </form><br /><br />
        </div>
</div>
