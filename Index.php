<?php

session_start();
require './Include/Securite.inc.php';
require_once 'Include/Constantes.inc.php';
require_once './Modeles/SourceDonnees.inc.php';

if (! isset($_REQUEST['gestion'])) {
    $_REQUEST['gestion'] = 14;
    $_REQUEST['action'] = null;
}
 
switch($_REQUEST['gestion']) {
    
    case 1:
        require './Include/entete.inc.php';
        break;

    case GEST_MED: 
        require './Include/entete.inc.php';
        require './Controleurs/C_Medicament.php';
        break;

    case GEST_PRA:
        require './Include/entete.inc.php';
        require_once './Controleurs/C_Praticien.php';
        break;

    case 12:
        require './Include/entete.inc.php';
        require './formCR_VISITE.php';
        break;

    case 13:
        require './Include/entete.inc.php';
        require './formVISITEUR.html';
        break;
   
    case 14:
        require './Identif.php';
        break;
    
    case 30:
        echo fermeSessionUtilisateur();
        header("location: Index.php?action=14");
        break;
}
require_once './Include/pied.inc.php'; 
?>



