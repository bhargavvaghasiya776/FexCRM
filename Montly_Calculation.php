<?php
if (!defined('sugarEntry')) {
    define('sugarEntry', true);
}
ini_set('display_error', 1);
error_reporting(E_ALL);
require_once 'include/entryPoint.php';
$obj= new Monthly_Calculation();
echo $query= "SELECT * from contacts LEFT JOIN contacts_cstm on id=id_c where deleted=0";
$result= $db->query($query);
while($row= $db->fetchByAssoc($result)){
    $obj->calculationfun($row);
}
class Monthly_Calculation{
    

    function calculationfun($row){
        global $db, $sugar_config;

        $lastDayLastMonth = date("Y-m-t H:i:s", strtotime('last month'));
        $last_month= date('m', strtotime('last month'));
        $last_month_year= date('Y', strtotime('last month'));
        $current_month= date('m');
        $current_year= date('Y');
        echo"<br/>last_sync_date----".$last_sync_date= $sugar_config['last_sync_date'];
        echo"<br/>current_date----".$current_date= date("Y-m-d H:i:s");

        if(!empty($current_date) && !empty($last_sync_date) ){
            $diff=round((strtotime($current_date) - strtotime($last_sync_date)) /86400);
            echo "diff----".$diff;

            if($diff >0 && !empty($diff) ){
        
                $contact_id= $row['id'];
                $contact_name= $row['first_name']." ".$row['last_name'];
                $default_interest= $row['default_interest_c'];
                $group_interest = $row['current_interest_c'];
                $pending_payment= number_format($row['pending_payment_c'],2);

                echo"<br/>".$query2= "SELECT mc.*,mcstm.* FROM `bw_monthly_calculation` as mc left Join bw_monthly_calculation_cstm as mcstm on mc.id=mcstm.id_c LEFT JOIN bw_monthly_calculation_contacts_c as mcc on mc.id=mcc.bw_monthly_calculation_contactsbw_monthly_calculation_idb WHERE  mcc.bw_monthly_calculation_contactscontacts_ida='".$contact_id."' and MONTH(mcstm.last_sync_c)='".$current_month."' and mcc.deleted=0 and mc.deleted=0 ";
                $result2= $db->query($query2);
                $row2= $db->fetchByAssoc($result2);
                $mc_id= $row2['id'];
                    /// It goes in current month record is get
                if($mc_id !=""){
                    echo "<br/>previous_amount---".$previous_amount= $row2['previous_amount'];
                    echo "<br/>received_amount---".$received_amount= $row2['received_amount'];
                    echo "<br/>return_amount---".$return_amount= $row2['returned_amount'];
                    echo "<br/>old_owner_commission---".$old_owner_commission= $row2['owner_commission'];
                    echo "<br/>old_group_commission---".$old_group_commission= $row2['group_commission'];
                    echo "<br/>old_total_commission---".$old_total_commission= $row2['total_commission'];
                    echo "<br/>old_total_amount---".$total_amount= $row2['total_amount'];
                    echo "<br/>last_sync_c---".$last_sync= $row2['last_sync_c'];
                    $calculation_diff= round((strtotime($current_date) - strtotime($last_sync)) /86400);

                    echo "<br/>new_owner_commission---".$new_owner_commission= round((($total_amount * $default_interest) /100) /30 * $calculation_diff);
                    echo "<br/>new_group_commission---".$new_group_commission= round((($total_amount * $group_interest)) /100 /30 * $calculation_diff);
                    echo "<br/>owner_commission---".$owner_commission= $new_owner_commission + $old_owner_commission;
                    echo "<br/>group_commission---".$group_commission= $new_group_commission + $old_group_commission;
                    echo "<br/>total_commission---".$total_commission= $owner_commission + $group_commission;

                    $name= $contact_name."-".date("M-Y");
                    echo"<br/>".$query3="UPDATE `bw_monthly_calculation` SET `name`='".$name."',`date_modified`='".$current_date."',`total_amount`='".$total_amount."',`owner_commission`='".$owner_commission."',`group_commission`='".$group_commission."',`total_commission`='".$total_commission."', pending_commission='".$pending_payment."' WHERE id='".$mc_id."' and deleted=0";
                    $result3= $db->query($query3);

                    echo"<br/>".$query4="UPDATE `bw_monthly_calculation_cstm` SET `last_sync_c`='".$current_date."' WHERE id_c='".$mc_id."'";
                    $result= $db->query($query4);
                } else{
                    $mc_id= $this->checkLastMonthRecord($contact_id, $lastDayLastMonth, $last_month, $default_interest, $group_interest, $contact_name);


                    echo "-------------------------Create New record----------------------------";

                    echo"<br/>".$query2= "SELECT mc.*,mcstm.* FROM `bw_monthly_calculation` as mc left Join bw_monthly_calculation_cstm as mcstm on mc.id=mcstm.id_c WHERE mc.id='".$mc_id."' and mc.deleted=0 ";
                $result2= $db->query($query2);
                $row2= $db->fetchByAssoc($result2);
                $mc_id= $row2['id'];
                    /// It goes in current month record is get
                if($mc_id !=""){
                    echo "<br/>previous_amount---".$previous_amount= $row2['total_amount'];
                    echo "<br/>received_amount---".$received_amount= $row2['received_amount'];
                    echo "<br/>return_amount---".$return_amount= $row2['returned_amount'];
                    echo "<br/>old_owner_commission---".$old_owner_commission= $row2['owner_commission'];
                    echo "<br/>old_group_commission---".$old_group_commission= $row2['group_commission'];
                    echo "<br/>old_total_commission---".$old_total_commission= $row2['total_commission'];
                    echo "<br/>total_amount---".$total_amount= $row2['total_amount'] + $old_total_commission;
                    echo "<br/>last_sync_c---".$last_sync= $row2['last_sync_c'];
                    $calculation_diff= round((strtotime($current_date) - strtotime($last_sync)) /86400);
                    echo "<br>calculation_diff------".$calculation_diff;
                    echo "<br/>new_owner_commission---".$new_owner_commission= round((($total_amount * $default_interest) /100) /30 * $calculation_diff);
                    echo "<br/>new_group_commission---".$new_group_commission= round((($total_amount * $group_interest)) /100 /30 * $calculation_diff);

                    echo "<br/>owner_commission---".$owner_commission= $new_owner_commission;
                    echo "<br/>group_commission---".$group_commission= $new_group_commission;
                    echo "<br/>total_commission---".$total_commission= $owner_commission + $group_commission;

                    $name= $contact_name."-".date("M-Y");
                    $MCBean = new BW_Monthly_Calculation();
                    $MCBean->bw_monthly_calculation_contactscontacts_ida= $row['id'];
                    $MCBean->name= $name;
                    $MCBean->previous_amount= $previous_amount;
                    $MCBean->received_amount= 0;
                    $MCBean->returned_amount= 0;
                    $MCBean->total_amount= $total_amount;
                    $MCBean->owner_commission= $owner_commission;
                    $MCBean->group_commission= $group_commission;
                    $MCBean->total_commission= $total_commission;
                    $MCBean->last_sync_c= $current_date;
                    $MCBean->pending_commission=$pending_payment;
                    $MCBean->save();
                }
                

            }
            $configuratorObj = new Configurator();
            $configuratorObj->loadConfig();
            $configuratorObj->config['last_sync_date'] = $current_date;
            $configuratorObj->saveConfig();
        }
    }
}

    function checkLastMonthRecord($contact_id, $lastDayLastMonth, $last_month, $default_interest, $group_interest, $contact_name){
        global $db, $sugar_config;
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
            echo"<br/>".$query3="UPDATE `bw_monthly_calculation` SET `name`='".$name."',`date_modified`='".$current_date."',`total_amount`='".$total_amount."',`owner_commission`='".$owner_commission."',`group_commission`='".$group_commission."',`total_commission`='".$total_commission."' WHERE id='".$mc_id."' and deleted=0";
            $result3= $db->query($query3);

            echo"<br/>".$query4="UPDATE `bw_monthly_calculation_cstm` SET `last_sync_c`='".$lastDayLastMonth."' WHERE id_c='".$mc_id."'";
            $result= $db->query($query4);
        }

        return $mc_id;

    }
    
}

?>