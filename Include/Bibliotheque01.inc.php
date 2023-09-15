<?php

function formSelectDepuisRecordset($unLabel, $unName, $id, $jeuEnregistrement, $valeuroptionnel = NULL, $unTabindex) {
    $codeHTML = '<label for="' . $id . '">' . $unLabel . '</label>'
            . '<select name="' . $unName . '" id="' . $id . '" tabindex="' . $unTabindex . '">';
    $jeuEnregistrement->setFetchMode(PDO::FETCH_NUM);
    $ligne = $jeuEnregistrement->fetch();

    if ($valeuroptionnel === NULL) {
        while ($ligne == true) {
            $codeHTML .= '<option value="' . $ligne[0] . '">' . $ligne[1] . '</option>' . "\n";
            $ligne = $jeuEnregistrement->fetch();
        }
    } else {
        while ($ligne == true) {
            $codeHTML .= '<option';
            if ($ligne[0] == $valeuroptionnel) {
                $codeHTML .= ' selected="selected"';
            }
            $codeHTML .= ' value="' . $ligne[0] . '">' . $ligne[1] . '</option>' . "\n";
            $ligne = $jeuEnregistrement->fetch();
        }
    }
    $codeHTML .= '</select>';
    return $codeHTML;
}

function formSelectDepuisRecordsetV2($unLabel, $unName, $id, $jeuEnregistrement, $valeuroptionnel = NULL, $unTabindex) {
    $codeHTML = '<label for="' . $id . '">' . $unLabel . '</label>'
            . '<select name="' . $unName . '" id="' . $id . '" tabindex="' . $unTabindex . '">';
    
    if ($valeuroptionnel === NULL) {
        foreach($jeuEnregistrement as $ligne) {
            $codeHTML .= '<option value="' . $ligne[0] . '">' . $ligne[1] . '</option>' . "\n";     
        }
    }
    else {
        foreach($jeuEnregistrement as $ligne) {
            $codeHTML .= '<option';
            if ($ligne[0] == $valeuroptionnel) {
                $codeHTML .= ' selected="selected"';
            }
            $codeHTML .= ' value="' . $ligne[0] . '">' . $ligne[1] . '</option>' . "\n";
        }
    }
    $codeHTML .= '</select>';

    return $codeHTML;
}

/**
 * 
 * @param type $css
 * @param type $nom
 * @param type $nomlabel
 * @param type $size
 * @param type $css2
 * @param type $valeur
 * @param type $lectureSeule
 * @param type $required
 * @return string
 */
function formInputText($css = NULL, $nom, $nomlabel, $size, $css2, $valeur, $lectureSeule, $required) {
    $codeHTML = '<label class="' . $css . '" for="' . $nom . '">' . $nomlabel . '</label>
<input type="text" value="' . $valeur . '" size="' . $size . '" name="' . $nom . '" class="' . $css2 . '"'
            . ($lectureSeule == TRUE ? ' readonly="readonly"' : '')
            . ($required == TRUE ? ' required="required"' : '') . '/>'
            . '<br />';

    return $codeHTML;
}

function formInputText2($nom, $id, $nomlabel, $size, $valeur, $tabIndex, $css = NULL, $lectureSeule, $required) {
    $codeHTML = '<label ' 
            . ($css != NULL ? 'class="' . $css[0] . '"' : '') . ' for="' . $id . '">' . $nomlabel . '</label>
<input type="text" value="' . $valeur . '" size="' . $size . '" id="' . $id . '" name="' . $nom . '" tabindex="' . $tabIndex . '" ' 
            . ($css != NULL ? 'class="' . $css[1] . '"' : '')
            . ($lectureSeule == TRUE ? ' readonly="readonly"' : '')
            . ($required == TRUE ? ' required="required"' : '') . '/>'
            . '<br />';

    return $codeHTML;
}

function formBoutonSubmit($unName, $id, $valeur, $unTabindex, $readondly) {
    $codeHTML = '<input type="submit" name="' . $unName . '" id="' . $id . '" value="' . $valeur . '" tabindex="' . $unTabindex . '"'
            . ($readondly == TRUE ? ' readonly="readonly"' : '') . '/>';

    return $codeHTML;
}

function formInputHidden($unName, $id, $valeur) {
    $codeHTML = '<input type="hidden" name="' . $unName . '" id="' . $id . '" value="' . $valeur . '" />';

    return $codeHTML;
}

function formTextArea($nomlabel, $unName, $id, $valeur, $cols, $rows, $longueurMaxi, $unTabindex, $lectureSeule) {
    $codeHTML = '<label for="' . $id . '">' . $nomlabel . '</label>'
            . '<textarea name="' . $unName . '" id="' . $id . '" cols="' . $cols . '" rows="' . $rows . '" maxlength="' . $longueurMaxi . '" tabindex="' . $unTabindex . '"'
            . ($lectureSeule == TRUE ? ' readonly="readonly"' : '') . '>'
            . '' . $valeur . ''
            . '</textarea>';

    return $codeHTML;
}

function formInputPassword($unLabel, $unName, $unId, $valeur , $size, $longueurMax, $unTabindex, $required) {
    $codeHTML = '<label for="' . $unId . '">' . $unLabel . '</label>
            <input type="password" value"' . $valeur . '" size="' . $size . '" id="' . $unId . '" name="' . $unName . '" tabindex="' . $unTabindex . '" maxlength="' . $longueurMax . '"'
            . ($required == TRUE ? ' required="required"' : '') . '/>'
            . '<br />';
    
    return $codeHTML;
}

function formSelectDepuisTab2D($unLabel, $unName, $id, $jeuEnregistrement, $valeuroptionnel = NULL, $unTabindex, $disabled) {
    $codeHTML = '';
    if($unLabel != null) {
        $codeHTML .= '<label'
                . ($id != null ? ' for="' . $id . '"' : '') . '>' . $unLabel . '</label>';
    }
    $codeHTML .= '<select name="' . $unName . '"'
            . ($id != null ? ' id="' . $id . '"' : '') . ' tabindex="' . $unTabindex . '"'
            . ($disabled == TRUE ? ' disabled' : '') . '>';
    
    if ($valeuroptionnel === NULL) {
        foreach($jeuEnregistrement as $ligne) {
            $codeHTML .= '<option value="' . $ligne[0] . '">' . $ligne[1] . '</option>' . "\n";     
        }
    }
    else {
        foreach($jeuEnregistrement as $ligne) {
            $codeHTML .= '<option';
            if ($ligne[0] == $valeuroptionnel) {
                $codeHTML .= ' selected="selected"';
            }
            $codeHTML .= ' value="' . $ligne[0] . '">' . $ligne[1] . '</option>' . "\n";
        }
    }
    $codeHTML .= '</select>';

    return $codeHTML;
}

function formInputCheckBox($caseAvantLabel, $label, $name, $unId, $isCheck, $tabIndex, $estLectureSeule) {
    $codeHTML = '';
    if($caseAvantLabel == FALSE) {
        $codeHTML = '<label for="' . $unId . '">' . $label . '</label>';
    }
    $codeHTML .= '<input type="checkbox" name="' . $name . '" id="' . $unId . '" tabindex="' . $tabIndex . '"'
            . ($estLectureSeule == TRUE ? ' readonly="readonly"' : '')
            . ($isCheck == TRUE ? ' checked="checked"' : '') . '/>';
    if($caseAvantLabel == TRUE) {
        $codeHTML .= '<label for="' . $unId . '">' . $label . '</label>';
    }

    return $codeHTML;
}

function formInputNumber($label, $name, $unId, $valueMin, $valueMax, $pasVariation, $tabIndex, $estLectureSeule, $obligatoire, $placeHolder) {
    $codeHTML = '';
    if($label != null) {
        $codeHTML .= '<label'
                . ($unId != null ? ' for="' . $unId . '"' : '') . '>' . $label . '</label>';
    }
    $codeHTML .= '<input type="number" name="' . $name . '"'
            . ($unId != null ? ' id="' . $unId . '"' : '');
    $codeHTML .= ' min="' . $valueMin . '"'
            . ' max="' . $valueMax . '" tabindex="' . $tabIndex . '" placeholder="' . $placeHolder . '" step="' . $pasVariation . '"'
            . ($estLectureSeule == TRUE ? ' readonly="readonly"' : '')
            . ($obligatoire == TRUE ? ' required="required"' : '') . '/>';
    
    return $codeHTML;
}
    
function formInputReset($unName, $id, $valeur, $unTabindex, $readondly) {
    $codeHTML = '<input type="reset" name="' . $unName . '" id="' . $id . '" value="' . $valeur . '" tabindex="' . $unTabindex . '"'
            . ($readondly == TRUE ? ' readonly="readonly"' : '') . '/>';
    
    return $codeHTML;
}

function formButton($name, $id, $value, $text, $tabIndex, $readonly) {
    $codeHTML = '<button name="' . $name . '"'
            . ($id != null ? ' id="' . $id . '"' : '') . ' tabindex="' . $tabIndex . '" value="' . $value . '"'
                . ($readonly == TRUE ? ' readonly="readonly"' : '') . '>' . $text . '</button>';
    
    return $codeHTML;
}

?>
