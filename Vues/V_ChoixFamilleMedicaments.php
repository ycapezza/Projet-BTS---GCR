<?php 
require './Include/Bibliotheque01.inc.php';
?>
<div id="droite">
	<div id="bas">
            <h1> Médicaments </h1>
         <form name="formChoixFamilleMedicaments" method="post" action="./Index.php?gestion=<?php echo GEST_MED; ?>&action=<?php echo MED_CHOIX; ?>">
    <?php 
        echo formSelectDepuisRecordsetV2('Choisir une famille : ', 'lstFam', 'lstFam', $lstFamilleMedicaments, $numfamille, 30);
        echo formBoutonSubmit("OK", "OK", "OK", 40, FALSE);
    ?>
    </form><br /><br />