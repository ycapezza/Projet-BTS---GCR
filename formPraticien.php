<?php 
//$jeuEnregistrements = getListePraticiens();
require './Include/Bibliotheque01.inc.php';
?>
<div id="droite">
    <div id="bas">
    <h1> Praticiens </h1>
    <form name="formListeRecherche" method="post" action="Index.php?gestion=<?php echo GEST_PRA; ?>&action=<?php echo PRA_LST; ?>">
    <?php 
    if (isset($_REQUEST['lstPrat'])) {
        $numpraticien = $_REQUEST['lstPrat'];
    } else {
        $numpraticien = null;
    }
        echo formSelectDepuisRecordset('Choisir un praticien :', 'lstPrat', 'lstPrat', $jeuEnregistrements, $numpraticien, 30);
        echo formBoutonSubmit("Valider", "Valider", "Valider", 40); 
    ?>
    </form><br /><br />
    
    <form name="formPraticien" action="Index.php?gestion=<?php echo GEST_PRA; ?>&action=<?php echo PRA_INFOS; ?>">
    <?php
    if (isset($_REQUEST['lstPrat'])) {

        //$resultat = getPraticienInformations($numpraticien);
        //$ligne = $resultat->fetch(PDO::FETCH_ASSOC);

        echo formInputText('titre', 'txtNom', 'NOM :', 50, 'ZONE', $infosPraticiens['PRA_NOM'], TRUE,FALSE);
        echo formInputText('titre', 'txtPrenom', 'PRENOM', 50, 'ZONE', $ligne['PRA_PRENOM'], TRUE,FALSE);
        echo formInputText('titre', 'txtADR', 'ADRESSE', 50, 'ZONE', $ligne['PRA_ADRESSE'], TRUE,FALSE);
        echo formInputText('titre', 'txtVILLe', 'VILLE', 50, 'ZONE', $ligne['PRA_VILLE'], TRUE,FALSE);
        echo formInputText('titre', 'txtCN', 'COEFF NOTORIETE', 50, 'ZONE', $ligne['PRA_COEF'], TRUE,FALSE);
        echo formInputText('titre', 'txtLE', 'LIEU D\'EXERCICE', 50, 'ZONE', $ligne['PRA_TYPE'],TRUE ,FALSE);
    }
    ?>
    </form>
    </div>
</div>
    