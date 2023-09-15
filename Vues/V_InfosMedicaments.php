    <form name="formMedicament" method="post" action="./Index.php?gestion=<?php echo GEST_MED; ?>&action=<?php echo MED_INFOS; ?>">
         <?php
        echo formInputText2('txtNom', 'txtNom', 'Nom :', 50, $infosMedicaments['MED_NOM'], NULL, ['titre', 'ZONE'], TRUE, FALSE);
        echo formInputText2('txtLabo', 'txtLabo', 'Labo :', 50, $infosMedicaments['LAB_CODE'], NULL, ['titre', 'ZONE'], TRUE, FALSE);
        echo formInputText2('txtFamille', 'txtFamille', 'Famille :', 50, $infosMedicaments['FM_CODE'], NULL, ['titre', 'ZONE'], TRUE, FALSE);
        echo formTextArea('Compo : ', 'taCompo', 'taCompo', $infosMedicaments['MED_COMPO'], 50, 5, 500, 66, TRUE);
        echo '&emsp;';
        echo formTextArea('Effets : ', 'taEffets', 'taEffets', $infosMedicaments['MED_EFFETS'], 50, 5, 500, 66, TRUE);
        echo '<br><br>';
        echo formTextArea('Contreindic : ', 'taContreindic', 'taContreindic', $infosMedicaments['MED_CONTREINDIC'], 50, 5, 500, 66, TRUE);
        ?>
    </form>
        </div>
</div>