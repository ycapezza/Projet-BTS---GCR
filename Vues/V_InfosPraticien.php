<form name="formPraticien" action="Index.php?gestion=<?php echo GEST_PRA; ?>&action=<?php echo PRA_INFOS; ?>">
    <?php
    if (isset($_REQUEST['lstPrat'])) {

        echo formInputText2('txtNom', 'txtNom', 'NOM :', 50, $infosPraticiens['PRA_NOM'], NULL, ['titre', 'ZONE'], TRUE,FALSE);
        echo formInputText2('txtPrenom', 'txtPrenom', 'PRENOM :', 50, $infosPraticiens['PRA_PRENOM'], NULL, ['titre', 'ZONE'], TRUE,FALSE);
        echo formInputText2('txtADR', 'txtADR', 'ADRESSE :', 50, $infosPraticiens['PRA_ADRESSE1'], NULL, ['titre', 'ZONE'], TRUE,FALSE);
        echo formInputText2('txtVILLe', 'txtVILLe', 'VILLE :', 50, $infosPraticiens['PRA_VILLE'], NULL, ['titre', 'ZONE'], TRUE,FALSE);
        echo formInputText2('txtCN', 'txtCN', 'COEFF NOTORIETE :', 50, $infosPraticiens['PRA_COEF'], NULL, ['titre', 'ZONE'], TRUE,FALSE);
        echo formInputText2('txtLE', 'txtLE', 'LIEU D\'EXERCICE :', 50, $infosPraticiens['TP_CODE'], NULL, ['titre', 'ZONE'],TRUE ,FALSE);
    }
    ?>
    </form>
    </div>
</div>

