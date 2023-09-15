<?php 
if (! isset($_REQUEST['med'])) {
    $_REQUEST['med'] = 14;
}
 
switch ($_REQUEST['med']) {
    case 14: 
        require 'formChoixFamilleMedicaments.php';
        break;
    
    case 15:
        require 'formChoixMedicaments.php';
        break;
    
    case 16:
        require 'formInfosMedicaments.php';
        break;
}

require_once './Include/pied.inc.php';
?>

