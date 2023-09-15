<?php
require_once './Include/Bibliotheque01.inc.php';
?>
<fieldset>
    <legend>Identifiez-vous</legend>
    <form id="frmIdentification" method="post" action="Index.php?gestion=14&ide=18">
        <?php
        if(isset($_POST['txtUtil'])) {
            $id = $_POST['txtUtil'];
        }
        else {
            $id = null;
        }
        
        echo formInputText2('txtUtil', 'txtUtil', 'Utilisateur :', 10, $id, NULL, ['titre', 'ZONE'], false, false);
        echo formInputPassword('Mot de passe :', 'mdp', 'mdp', '', 10, 10, 10, false); 
        echo formBoutonSubmit("Valider", "Valider", "Valider", 40, FALSE);
        ?>
        <p class="erreur"></p>
    </form>
</fieldset>
