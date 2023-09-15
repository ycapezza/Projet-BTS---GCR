<?php

if(!isset($_REQUEST['ide'])) {
    $_REQUEST['ide'] = 17;
}

switch($_REQUEST['ide']) {
    case 17:
        require './Include/entete2.inc.php';
        require './afficheIdentif.php';
        break;
    
    case 18:
        require './valideIdentif.php';
        break;
}
?>


