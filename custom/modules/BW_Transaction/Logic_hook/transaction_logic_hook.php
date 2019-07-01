<?php

class transactioncls{


    function monthly_calculation($bean, $event, $argument){
        global $db;

        
        $current_date= date("Y-m-d H:i:s");
        $lastDayLastMonth = date("Y-m-t H:i:s", strtotime('last month'));
        $last_month= date('m', strtotime('last month'));
        $query= "SELECT id from bw_transaction where id='".$bean->id."' and deleted=0";
        $result= $db->query($query);
        if($bean->is_calculated_c == 0 && !empty($bean->bw_transaction_contactscontacts_ida)){
            $contact_id =$bean->bw_transaction_contactscontacts_ida;
            $date_entered= date_format(date_create($bean->date_entered), 'Y-m-d');
            $current_month = date('m', strtotime($date_entered));
            // if(!empty($bean->cheque) || !empty($bean->rttgs)){

            // }
            echo"<br/>".$query2= "SELECT mc.*,mcstm.* FROM `bw_monthly_calculation` as mc left Join bw_monthly_calculation_cstm as mcstm on mc.id=mcstm.id_c LEFT JOIN bw_monthly_calculation_contacts_c as mcc on mc.id=mcc.bw_monthly_calculation_contactsbw_monthly_calculation_idb WHERE  mcc.bw_monthly_calculation_contactscontacts_ida='".$contact_id."' and MONTH(mcstm.last_sync_c)='".$current_month."' and mcc.deleted=0 and mc.deleted=0";
            $result2= $db->query($query2);
            $row2= $db->fetchByAssoc($result2);
            echo $mc_id= $row2['id'];

            if(empty($mc_id)){
                $mc_id= $this->checkLastMonthRecord($contact_id, $lastDayLastMonth, $last_month);
                if($mc_id !=""){
                    echo"<br/>".$query3= "SELECT mc.*,mcstm.* FROM `bw_monthly_calculation` as mc left Join bw_monthly_calculation_cstm as mcstm on mc.id=mcstm.id_c WHERE mc.id='".$mc_id."' and mc.deleted=0 ";
                    $result3= $db->query($query3);
                    $row3= $db->fetchByAssoc($result3);
                    $mc_id= $row3['id'];

                    echo "<br/>previous_amount---".$previous_amount= $row3['total_amount'];
                    echo "<br/>last_sync_c---".$last_sync= $row3['last_sync_c'];
                    $calculation_diff= round((strtotime($current_date) - strtotime($last_sync)) /86400);
                    echo "<br>calculation_diff------".$calculation_diff;

                    echo "<br/>old_owner_commission---".$old_owner_commission= $row3['owner_commission'];
                    echo "<br/>old_group_commission---".$old_group_commission= $row3['group_commission'];
                    echo "<br/>old_total_commission---".$old_total_commission= $row3['total_commission'];
                    echo "<br/>old_total_amount---".$old_total_amount= $row3['total_amount'] + $old_total_commission  ;

                    if($bean->type =="Credited"){
                        $total_amount= $old_total_amount + $bean->cash + $bean->cheque + $bean->rttgs;
                        
                        $new_received_amount= $received_amount + $bean->cash + $bean->cheque + $bean->rttgs;
                    }else if($bean->type =="Debited"){
                        $tds=0;
                        $tds= (($bean->cheque + $bean->rttgs)* 10) /100 ;
                        $total_amount= $old_total_amount - $bean->cash - $bean->cheque - $bean->rttgs;
                        $new_payment_by_cheque= $payment_by_cheque + $bean->cheque;
                        $new_all_rtgs= $all_rtgs + $bean->rttgs;
                        $new_cash= $cash + $bean->cash;
                        $new_return_amount= $return_amount + $bean->cash + $bean->cheque + $bean->rttgs ;
                    }

                    echo "<br/>new_owner_commission---".$new_owner_commission= round((($total_amount * $default_interest) /100) /30 * $calculation_diff);
                    echo "<br/>new_group_commission---".$new_group_commission= round((($total_amount * $group_interest)) /100 /30 * $calculation_diff);
                    echo "<br/>owner_commission---".$owner_commission= $new_owner_commission;
                    echo "<br/>group_commission---".$group_commission= $new_group_commission;
                    echo "<br/>total_commission---".$total_commission= $owner_commission + $group_commission;


                    $name= $bean->bw_transaction_contacts_name."-".date("M-Y");
                    $mcBean= new BW_Monthly_Calculation();
                    $mcBean->name= $name;
                    $mcBean->total_amount= $total_amount;
                    $mcBean->bw_monthly_calculation_contactscontacts_ida= $contact_id;
                    $mcBean->previous_amount= $previous_amount;
                    $mcBean->received_amount= $new_received_amount;
                    $mcBean->returned_amount= $new_return_amount;
                    $mcBean->total_amount= $total_amount;
                    $mcBean->owner_commission= $owner_commission;
                    $mcBean->group_commission= $group_commission;
                    $mcBean->total_commission= $total_commission;
                    $mcBean->payment_by_cheque= $new_payment_by_cheque;
                    $mcBean->all_rtgs= $new_all_rtgs;
                    $mcBean->cash= $new_cash;
                    $mcBean->last_sync_c= $current_date;
                    $mcBean->save();
                }else{
                    if($bean->type =="Credited"){
                        $total_amount= $bean->cash + $bean->cheque + $bean->rttgs;
                        
                        $new_received_amount= $bean->cash + $bean->cheque + $bean->rttgs;
                        $name= $bean->bw_transaction_contacts_name."-".date("M-Y");

                        $mcBean= new BW_Monthly_Calculation();
                        $mcBean->name= $name;
                        $mcBean->total_amount= $total_amount;
                        $mcBean->bw_monthly_calculation_contactscontacts_ida= $contact_id;
                        $mcBean->previous_amount= 0;
                        $mcBean->received_amount= $new_received_amount;
                        $mcBean->returned_amount= 0;
                        $mcBean->total_amount= $total_amount;
                        $mcBean->owner_commission= 0;
                        $mcBean->group_commission= 0;
                        $mcBean->total_commission= 0;
                        $mcBean->payment_by_cheque= 0;
                        $mcBean->all_rtgs= 0;
                        $mcBean->cash= 0;
                        $mcBean->last_sync_c= $current_date;
                        $mcBean->save();
                    }
                }
                

            }else{

                $payment_by_cheque= $row2['payment_by_cheque'];
                $all_rtgs= $row2['all_rtgs'];
                $cash= $row2['cash'];
                $received_amount= $row2['received_amount'];
                $return_amount= $row2['returned_amount'];
    
                $old_total_amount= $row2['total_amount'];
                if($bean->type =="Credited"){
                    $total_amount= $old_total_amount + $bean->cash + $bean->cheque + $bean->rttgs;
                    
                    $new_received_amount= $received_amount + $bean->cash + $bean->cheque + $bean->rttgs;
                    $new_payment_by_cheque= $payment_by_cheque;
                    $new_all_rtgs= $all_rtgs;
                    $new_cash= $cash;
                    $new_return_amount= $return_amount;
                }else if($bean->type =="Debited"){
                    $tds=0;
                    $tds= (($bean->cheque + $bean->rttgs)* 10) /100 ;
                    $total_amount= $old_total_amount - $bean->cash - $bean->cheque - $bean->rttgs;
                    $new_payment_by_cheque= $payment_by_cheque + $bean->cheque;
                    $new_all_rtgs= $all_rtgs + $bean->rttgs;
                    $new_cash= $cash + $bean->cash;
                    $new_received_amount= $received_amount;
                    $new_return_amount= $return_amount + $bean->cash + $bean->cheque + $bean->rttgs;
                }
                

                echo"<br/>".$query3="UPDATE `bw_monthly_calculation` SET `date_modified`='".$current_date."',`total_amount`='".$total_amount."', payment_by_cheque='".$new_payment_by_cheque."', all_rtgs='".$new_all_rtgs."', cash='".$new_cash."', received_amount='".$new_received_amount."', returned_amount='".$new_return_amount."' WHERE id='".$mc_id."' and deleted=0";
                $result3= $db->query($query3);
            }

            
            // echo "<pre>";print_r($bean);exit; 
            $bean->name= $bean->bw_transaction_contacts_name."-".$bean->type;
            $bean->is_calculated_c = 1;
            $bean->tds_c= $tds;
        }
    }
    function checkLastMonthRecord($contact_id, $lastDayLastMonth, $last_month){
        global $db, $sugar_config;

        echo $query= "SELECT * from contacts LEFT JOIN contacts_cstm on id=id_c where deleted=0 and id='".$contact_id."'";
        $result= $db->query($query);
        $row= $db->fetchByAssoc($result);
        $contact_name= $row['first_name']." ".$row['last_name'];
        $default_interest= $row['default_interest_c'];
        $group_interest = $row['current_interest_c'];
        $pending_payment= number_format($row['pending_payment_c'],2);


        echo"<br/>---------------------checkLastMonthRecord------------------------";
        echo"<br/>".$query2= "SELECT mc.*,mcstm.* FROM `bw_monthly_calculation` as mc left Join bw_monthly_calculation_cstm as mcstm on mc.id=mcstm.id_c LEFT JOIN bw_monthly_calculation_contacts_c as mcc on mc.id=mcc.bw_monthly_calculation_contactsbw_monthly_calculation_idb WHERE  mcc.bw_monthly_calculation_contactscontacts_ida='".$contact_id."' and MONTH(mcstm.last_sync_c)='".$last_month."' and mcc.deleted=0 and mc.deleted=0 ";
        $result2= $db->query($query2);
        $row2= $db->fetchByAssoc($result2);
        $mc_id= $row2['id'];

        if($mc_id !="" && $lastDayLastMonth != date_format(date_create($row2['last_sync_c']), "Y-m-d")){
            echo "<br/>previous_amount---".$previous_amount= $row2['previous_amount'];
            echo "<br/>received_amount---".$received_amount= $row2['received_amount'];
            echo "<br/>return_amount---".$return_amount= $row2['returned_amount'];
            echo "<br/>old_owner_commission---".$old_owner_commission= $row2['owner_commission'];
            echo "<br/>old_group_commission---".$old_group_commission= $row2['group_commission'];
            echo "<br/>old_total_commission---".$old_total_commission= $row2['total_commission'];
            echo "<br/>old_total_amount---".$old_total_amount= $row2['total_amount'];
            echo "<br/>last_sync_c---".$last_sync= $row2['last_sync_c'];
            $calculation_diff= round((strtotime($lastDayLastMonth) - strtotime($last_sync)) /86400);
            echo $calculation_diff;
            echo "<br/>new_owner_commission---".$new_owner_commission= round((($total_amount * $default_interest) /100) /30 * $calculation_diff);
            echo "<br/>new_group_commission---".$new_group_commission= round((($total_amount * $group_interest)) /100 /30 * $calculation_diff);
            echo "<br/>owner_commission---".$owner_commission= $new_owner_commission + $old_owner_commission;
            echo "<br/>group_commission---".$group_commission= $new_group_commission + $old_group_commission;
            echo "<br/>total_commission---".$total_commission= $owner_commission + $group_commission;

            $name= $contact_name."-".date("M-Y");
            echo"<br/>".$query3="UPDATE `bw_monthly_calculation` SET `name`='".$name."',`date_modified`='".$current_date."',`total_amount`='".$total_amount."',`owner_commission`='".$owner_commission."',`group_commission`='".$group_commission."',`total_commission`='".$total_commission."', pending_commission='".$pending_payment."' WHERE id='".$mc_id."' and deleted=0";
            $result3= $db->query($query3);

            echo"<br/>".$query4="UPDATE `bw_monthly_calculation_cstm` SET `last_sync_c`='".$lastDayLastMonth."' WHERE id_c='".$mc_id."'";
            $result= $db->query($query4);
        }

        return $mc_id;

    }

    
}


?>