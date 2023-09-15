//
// gestionnaire motif
//

function rendreDisponibleExplicationMotif(unFormulaire) {
    if(unFormulaire.elements["lstMotif"].options[unFormulaire.elements["lstMotif"].selectedIndex].value == 5) {
        unFormulaire.elements["txtMotifExplication"].readOnly = false;
        unFormulaire.elements["txtMotifExplication"].disabled = false;
        unFormulaire.elements["txtMotifExplication"].focus();
    }
    return;
}

function rendreIndisponibleExplicationMotif(unFormulaire) {
    if(unFormulaire.elements["lstMotif"].options[unFormulaire.elements["lstMotif"].selectedIndex].value != 5) {
        unFormulaire.elements["txtMotifExplication"].readOnly = true;
        unFormulaire.elements["txtMotifExplication"].disabled = true; 
    }
    return;
}

$(document).ready(function () {
    $("#lstMotif").change(function () {
        rendreDisponibleExplicationMotif(document.forms["frmCompteRenduVisite"]);
    })
});

$(document).ready(function () {
    $("#lstMotif").change(function () {
        rendreIndisponibleExplicationMotif(document.forms["frmCompteRenduVisite"]);
    })
});

//
// gestionnaire remplaçant
//

function rendreDisponibleListeRemplacants(unFormulaire) {
    if(unFormulaire.elements["chkRemplacant"].checked == true) {
        unFormulaire.elements["lstRemplacant"].disabled = false;
    }
    return;
}

function rendreIndisponibleListeRemplacants(unFormulaire) {
    if(unFormulaire.elements["chkRemplacant"].checked == false) {
        unFormulaire.elements["lstRemplacant"].disabled = true;
    }
    return;
}

$(document).ready(function() {
    $("#chkRemplacant").change(function() {
        rendreDisponibleListeRemplacants(document.forms["frmCompteRenduVisite"]);
    })
});

$(document).ready(function() {
    $("#chkRemplacant").change(function() {
        rendreIndisponibleListeRemplacants(document.forms["frmCompteRenduVisite"]);
    })
});

//
// gestinnaire produit présenté
//

function ajouterLigneProduitPresente(uneLigne) {
    document.forms["frmCompteRenduVisite"].elements["btnAjouterPP"].remove();
    var noeudClone = uneLigne.clone(true);
    noeudClone.children().attr({
        name: "lstProduitsPresentes[1]",
        tabindex: 91,
        id: "lstProd2"
    });
    var parentOL = $("#listeProduitsPresentes");
    var clone2 = parentOL.append(noeudClone);
    var buttonSupp = jqFormButton('btnSupprimerPP', 'btnSupprimerPP', null, '-', 92, false);
    buttonSupp.bind("click", function() {
        supprimerLigneProduitPresente($('#listeProduitsPresentes'));
    });
    clone2.children().last().append(buttonSupp);
    
    return;
}

function supprimerLigneProduitPresente(uneListe) {
    document.forms["frmCompteRenduVisite"].elements["btnSupprimerPP"].remove();
    var buttonAj = jqFormButton('btnAjouterPP', 'btnAjouterPP', null, '+', 100, false);
    uneListe.children().first().append(buttonAj);
    uneListe.children().last().remove();
    $(document).ready(function() { 
        $("#btnAjouterPP").click(function() {
            ajouterLigneProduitPresente($('#listeProduitsPresentes').children().first());
        }) 
    });
    
    
    return;
}

$(document).ready(function() { 
   $("#btnAjouterPP").click(function() {
       ajouterLigneProduitPresente($('#listeProduitsPresentes').children().first());
   }) 
});

