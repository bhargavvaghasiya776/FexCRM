<?php
ini_set("display_error", 1);
error_reporting(E_ALL ^ E_STRICT);

class contactcls{

    function contactfun($bean,$event,$argument){
        global $db, $sugar_config;
        $cid= $_REQUEST['contacts_contacts_1contacts_ida'];
        $diff_gc=0;
        $is_type= 0;
        if($bean->is_calculated_c==0 && $cid !="" && $bean->contact_type_c=="Child"){
            
            
                echo "<br/>".$query="SELECT cc.* FROM `contacts` LEFT JOIN contacts_cstm as cc on contacts.id=cc.id_c WHERE contacts.id='".$cid."' and contacts.deleted=0 ";
                    $result= $db->query($query);
                    $row= $db->fetchByAssoc($result);
                    $gc= $row['current_interest_c'];
                    $oc= $row['default_interest_c'];
                    $type= $row['contact_type_c'];
                    $contact= $row['id_c'];
                    if($contact== $cid){
                        $diff_gc= $oc - $bean->default_interest_c;
                        $new_gc= $diff_gc + $gc;

                    }
                    echo $new_gc;
                    if($type=="Child"){
                        $contact_id=$cid;
                        $tryAgain = true;
                    }else if($type=="Parent"){
                        $tryAgain = false;
                    }
                    echo "<br/>".$query1="UPDATE `contacts_cstm` SET `current_interest_c`='".$new_gc."' WHERE id_c='".$contact."'  ";
                    $result1= $db->query($query1);
                while($tryAgain){
                    echo "<br/>".$query2="SELECT cc.* FROM `contacts` LEFT JOIN contacts_cstm as cc on contacts.id=cc.id_c LEFT JOIN contacts_contacts_1_c as ctc on contacts.id=ctc.contacts_contacts_1contacts_idb WHERE ctc.contacts_contacts_1contacts_ida='".$contact_id."' and ctc.deleted=0 and contacts.deleted=0 ";

                    $result2= $db->query($query2);
                    $row1= $db->fetchByAssoc($result2);
                    $gc= $row1['current_interest_c'];
                    $oc= $row1['default_interest_c'];
                    $type= $row1['contact_type_c'];
                    $contact= $row1['id_c'];
                    $new_gc= $diff_gc + $gc;

                    echo "<br/>".$query3="UPDATE `contacts_cstm` SET `current_interest_c`='".$new_gc."' WHERE id_c='".$contact."'  ";
                    $result3= $db->query($query3);
                    if($type=="Child"){
                        $contact_id=$contact;
                        $tryAgain = true;
                    }else if($type=="Parent"){
                        $tryAgain = false;
                    }
                }
            $bean->is_calculated_c=1;
            $bean->contact_type_c="Child";
             
        }else if(empty($cid)){
            echo "<br/>".$query2="UPDATE `contacts_cstm` SET `is_calculated_c`=1, contact_type_c='Parent' WHERE id_c='".$bean->id."' ";
            $result2= $db->query($query2);
            
        }
        // echo"<pre>";print_r($bean);
        // exit;
    }
}


?>