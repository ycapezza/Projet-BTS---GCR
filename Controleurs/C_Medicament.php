<?php

switch ($_REQUEST['action']) {

    case MED_FAM:
        $numfamille = NULL;
        $lstFamilleMedicaments = getlisteFamilleMedicaments();

        require './Vues/V_ChoixFamilleMedicaments.php';
        break;

    case MED_CHOIX:
        $numfamille = $_POST['lstFam'];
        $lstFamilleMedicaments = getlisteFamilleMedicaments();
        require './Vues/V_ChoixFamilleMedicaments.php';

        $nummedicament = null;
        $lstMedicaments = getlisteMedicaments($_REQUEST['lstFam']);
        require './Vues/V_ChoixMedicaments.php';
        break;

    case MED_INFOS:
        $numfamille = $_POST['hidFamMed'];
        $lstFamilleMedicaments = getlisteFamilleMedicaments();
        require './Vues/V_ChoixFamilleMedicaments.php';

        $nummedicament = $_POST['lstMed'];
        $lstMedicaments = getlisteMedicaments($_REQUEST['hidFamMed']);
        require './Vues/V_ChoixMedicaments.php';

        $nummedicament = $_POST['lstMed'];
        $infosMedicaments = getMedicamentInformations($_REQUEST['lstMed']);
        require './Vues/V_InfosMedicaments.php';
        break;

    default:
        break;
}
?>

