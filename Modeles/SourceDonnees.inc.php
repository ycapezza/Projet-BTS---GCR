<?php
function SGBDConnect() {
try { 
 $connexion = new PDO('mysql:host=SVRSLAM02;dbname=gsb1_1', 'PPEgsb', 'PPEgsb'); 
 $connexion->query('SET NAMES UTF8'); 
 $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
} catch (PDOException $e) { 
 echo 'Erreur !: ' . $e->getMessage() . '<br />'; 
 exit();
}
return $connexion;
}
function getlistePraticiens() {
   $connexion = SGBDConnect();
   $sql = $connexion->query('select PRA_NUM, concat(PRA_NOM,\' \',PRA_PRENOM) '
         . 'From praticien '
      . 'order by PRA_NOM ,PRA_PRENOM');

   return $sql->fetchAll(PDO::FETCH_NUM);
}
function getPraticienInformations($numpraticien) {
    $connexion = SGBDConnect();
    $sql = $connexion->prepare('SELECT PRA_NOM, PRA_PRENOM, PRA_ADRESSE1, PRA_COEF, type_praticien.TP_LIEU_EXERCICE, praticien.TP_CODE, PRA_VILLE , Concat(PRA_CP,\' \',PRA_VILLE)
FROM praticien
INNER JOIN type_praticien ON praticien.TP_CODE = type_praticien.TP_CODE
WHERE praticien.PRA_NUM = :praNum');
    $sql->bindParam(':praNum', $numpraticien);
    $sql->execute();
    
    return $sql->fetch(PDO::FETCH_ASSOC);
}
function getlisteFamilleMedicaments () {
    $connexion = SGBDConnect();
    $requete = $connexion->query('select FM_CODE, FM_LIBELLE'
            . ' From famille_medicament');
    //$resultat = $connexion->query($requete);
    return $requete->fetchAll(PDO::FETCH_NUM);
}
function getlisteMedicaments ($numfamille) {
    $connexion = SGBDConnect();
    $requete = $connexion->prepare('select MED_CODE, MED_NOM'
            . ' From medicament'
            . ' Where medicament.FM_CODE = :medFamNum');
    //$resultat = $connexion->query($requete);
    $requete->bindParam(':medFamNum', $numfamille);
    $requete->execute();
    return $requete->fetchAll(PDO::FETCH_NUM);
}
function getMedicamentInformations($nummedicament){
    $connexion = SGBDConnect();
    $requete = $connexion->prepare('select MED_NOM, LAB_CODE, FM_CODE, MED_COMPO, MED_EFFETS, MED_CONTREINDIC'
            . ' From medicament'
            . ' Where MED_CODE = :numMed');
    //$resultat = $connexion->query($requete);
    $requete->bindParam(':numMed', $nummedicament);
    $requete->execute();
    return $requete->fetch(PDO::FETCH_ASSOC);
}
function existeCompteVisiteur($unMDP, $codeVisiteur) {
    $connexion = SGBDConnect();
    $requete ='select VIS_CODE, VIS_PASSE'
            . ' from visiteur'
            . ' where VIS_CODE="' . $codeVisiteur . '"'
            . ' and VIS_PASSE="' . $unMDP . '"';
    $resultat = $connexion->query($requete);
    return $resultat;
}
function getVisiteurInformations($unId) {
try {
    $connexion = SGBDConnect();
    $requete = 'select VIS_NOM, VIS_PRENOM, AFF_ROLE, REG_NOM'
            . ' from visiteur'
            . ' inner join affectation on visiteur.VIS_CODE = affectation.VIS_CODE'
            . ' inner join region on affectation.REG_CODE = region.REG_CODE'
            . ' where AFF_ROLE = \'Visiteur\' and visiteur.VIS_CODE ="' . $unId . '"'
            . ' and AFF_DATE = (select max(AFF_DATE) from affectation'
            . ' where affectation.VIS_CODE ="' . $unId . '")';
    $resultat = $connexion->query($requete);
}
catch (PDOException $e) { 
    echo 'Erreur !: ' . $e->getMessage() . '<br />'; 
    exit();
}   
    return $resultat;
}
function modifMdpBcrypt($id, $unMdp) {
    $connexion = SGBDConnect();
    $requete = $connexion->prepare('update visiteur'
            . ' set VIS_PASSE = :visMdp'
            . ' where VIS_CODE = :visId');
    $requete->bindParam(':visMdp', $unMdp);
    $requete->bindParam(':visId', $id);
    $requete->execute();
    
    return;
}
function mdpAlgoHash($id) {
    $connexion = SGBDConnect();
    $requete = $connexion->prepare('select VIS_PASSE'
            . ' from visiteur'
            . ' where VIS_CODE = :visId'); 
    $requete->bindParam(':visId', $id);
    $requete->execute();
    
    return $requete->fetchColumn();
}

function getListePraticiensTab() {
    $connexion = SGBDConnect();
    $sql = $connexion->query('select PRA_NUM, concat(PRA_NOM,\' \',PRA_PRENOM) '
         . 'From praticien '
         . 'order by PRA_NOM ,PRA_PRENOM');

   return $sql->fetch(PDO::CURSOR_SCROLL);
}

function getListeCompleteMedicaments() {
    $connexion = SGBDConnect();
    $requete = $connexion->query('select MED_CODE, MED_NOM'
            . ' from medicament');
    
    return $requete->fetchAll(PDO::FETCH_NUM);
}

?>
