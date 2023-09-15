<?php
switch($_REQUEST['action']) {
    
    case PRA_LST:
        $numpraticien = null;
        $lstPraticiens = getListePraticiens();      
        require './Vues/V_ListePraticien.php';
        break;
    
    case PRA_INFOS:
        $numpraticien = $_REQUEST['lstPrat'];
        $lstPraticiens = getListePraticiens();
        require './Vues/V_ListePraticien.php';
        
        $infosPraticiens = getPraticienInformations($_REQUEST['lstPrat']);
        require './Vues/V_InfosPraticien.php';
        break; 
    
    default:
        break;
}
?>

