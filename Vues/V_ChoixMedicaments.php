<form name="formchoixMedicaments" method="post" action="./Index.php?gestion=<?php echo GEST_MED; ?>&action=<?php echo MED_INFOS; ?>">
    <?php 
     echo formSelectDepuisRecordsetV2('Choisir un médicament : ', 'lstMed', 'lstMed', $lstMedicaments, $nummedicament, 30);
     echo formBoutonSubmit("OK", "OK", "OK", 40, FALSE); 
     echo formInputHidden('hidFamMed', 'hidFamMed', $numfamille);
     ?>
    </form><br /><br />