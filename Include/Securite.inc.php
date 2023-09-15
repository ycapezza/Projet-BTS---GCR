<?php

function valideInfosCompteUtilisateur($unMDP, $codeVisiteur) {
    
    $existeCompte = false;
    
    if(estMdpBcrypt2($unMDP) == false) {
        echo convertirMdpBcrypt($codeVisiteur, $unMDP);
    }
    
    if(existeCompteVisiteur($unMDP, $codeVisiteur) == true) {
        $existeCompte = true;
    }

    return $existeCompte;
}

function ouvreSessionUtilisateur($unId) {
    
    $_SESSION['utilId'] = $unId;
    
    $resultat = getVisiteurInformations($unId);
    $ligne = $resultat->fetch(PDO::FETCH_ASSOC);
    
    $_SESSION['utilNom'] = $ligne['VIS_NOM'];
    $_SESSION['utilPnom'] = $ligne['VIS_PRENOM'];
    $_SESSION['utilRole'] = $ligne['TRA_ROLE'];
    $_SESSION['utilReg'] = $ligne['REG_NOM'];
    
    return;
}

function estSessionUtilisateurOuverte ($existeId) {
    
    if(isset($_SESSION['utilId'])) {
        $existeId = true;
    }
    else {
        $existeId = false;
    }
    
    return $existeId;
}

function fermeSessionUtilisateur () {
    
    session_destroy();
    
    return;
}

function estMdpBcrypt2($unMdp) {
    
    $estMdpBcrypt = true;

    if(password_needs_rehash($unMdp, PASSWORD_BCRYPT) == true) {
        $estMdpBcrypt = false;
    }
    
    return $estMdpBcrypt;
}

function convertirMdpBcrypt($unId, $unMdp) {
    
    $newMdp = password_hash($unMdp, PASSWORD_BCRYPT);
    modifMdpBcrypt($unId, $newMdp);
    
    return;
}
?>