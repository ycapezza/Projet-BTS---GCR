<?php 
require './Include/Bibliotheque01.inc.php';
?>
<div id="droite">
    <div id="bas">
    <h1> Praticiens </h1>
    <form name="formListeRecherche" method="post" action="Index.php?gestion=<?php echo GEST_PRA; ?>&action=<?php echo PRA_INFOS; ?>">
    <?php 
        echo formSelectDepuisRecordsetV2('Choisir un praticien : ', 'lstPrat', 'lstPrat', $lstPraticiens, $numpraticien, 30);
        echo formBoutonSubmit("Valider", "Valider", "Valider", 40, FALSE); 
    ?>
    </form><br /><br />
