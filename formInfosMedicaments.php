<?php 
$jeuEnregistrement = getlisteFamilleMedicaments();
 require './Include/Bibliotheque01.inc.php';
?>
<div id="droite">
	<div id="bas">
            <h1> Médicaments </h1>
<form name="formChoixFamilleMedicaments" method="post" action="./Index.php?action=10&med=15">
    <?php 
    if (isset($_POST['hidFamMed'])) {
        $numfamille = $_POST['hidFamMed'];
    }
    else {
        $numfamille = NULL;
    }
        echo formSelectDepuisRecordset('Choisir une famille :', 'lstFam', 'lstFam', $jeuEnregistrement, $numfamille, 30);
        echo formBoutonSubmit("OK", "OK", "OK", 40);  
    ?>    
</form><br /><br />
<?php 
$jeuEnregistrementsChoix = getlisteMedicaments($numfamille);
?>
<form name="formchoixMedicaments" method="post" action="./Index.php?action=10&med=16">
    <?php 
    if (isset($_POST['lstMed'])) {
        $nummedicament = $_POST['lstMed'];
    }
    else {
        $nummedicament = NULL;
    }
    echo formSelectDepuisRecordset('Choisir un médicament :', 'lstMed', 'lstMed', $jeuEnregistrementsChoix, $nummedicament, 30);
    echo formBoutonSubmit("OK", "OK", "OK", 40); 
    echo formInputHidden('hidFamMed', 'hidFamMed', $numfamille);
    echo formInputHidden('hidMed', 'hidMed', $nummedicament);
    ?>
    </form><br /><br />
    <form name="formMedicament" method="post" action="./Index.php?action=10&med=16">
         <?php

        $resultat = getMedicamentInformations($nummedicament);
        $ligne = $resultat->fetch(PDO::FETCH_ASSOC);
        
        echo formInputText('titre', 'txtNom', 'Nom :', 50, 'ZONE', $ligne['MED_NOM'], TRUE, FALSE);
        echo formInputText('titre', 'txtLabo', 'Labo :', 50, 'ZONE', $ligne['MED_LABO'], TRUE, FALSE);
        echo formInputText('titre', 'txtFamille', 'Famille :', 50, 'ZONE', $ligne['MED_FAMILLE'], TRUE, FALSE);
        echo formTextArea('Compo :', 'taCompo', 'taCompo', $ligne['MED_COMPO'], 50, 5, 500, 66, TRUE);
        echo formTextArea('Effets :', 'taEffets', 'taEffets', $ligne['MED_EFFETS'], 50, 5, 500, 66, TRUE);
        echo formTextArea('Contreindic :', 'taContreindic', 'taContreindic', $ligne['MED_CONTREINDIC'], 50, 5, 500, 66, TRUE);
        ?>
    </form>
        </div>
</div>