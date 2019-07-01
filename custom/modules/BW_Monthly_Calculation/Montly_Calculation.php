<?php
ini_set('display_error', 1);
error_reporting(E_ALL);
$current_date= date("Y-m-d H:i:s");
$last_sync_date= $sugar_config['last_sync_date'];

if(!empty($current_date) && !empty($last_sync_date) ){
    $diff=round((strtotime($current_date) - strtotime($last_sync_date)) /86400);

    if($diff >0 && !empty($diff) ){
        $msg="Click on Sync button for Mannulay Calculation";
        $disable='';

    }else{
        $msg="You Can Not Sync Now Because Last Sync Differance is Less Than 1 Day.";
        $disable='disabled';
    }
}
?>

<h2>CALCULATE COMMISSION </h2>
<p><h3>Here's how to get started:</br></br>
</p>



<div class="panel panel-default">
    <div class="panel-heading">
        <h3  style="padding:8px">Syncup Log <em class="pull-right" id="shopify_contact_last_sync_date">Last Sync Date :-<?php echo date("Y-m-d H:i:s", strtotime('+3 hours 30 minutes', strtotime($last_sync_date)));?></em></h3> 
    </div>
    <div class="panel-body">
        <h3  style="padding-left:8px;margin-top: 5px;"><pre id="sync_success"><?php echo $msg; ?></pre></h3>
    </div>
</div>

<br/>
<form id="" method="POST" action="index.php?module=BW_Monthly_Calculation&action=Montly_Calculation">
<input type="Submit" id="btnsyncup" name="btnsyncup" class="button" value="Sync data" <?php echo $disable; ?> />
</form>


<?php 

if(isset($_POST['btnsyncup'])){

    
        
    
            global $db, $sugar_config;
    
            $lastDayLastMonth = date("Y-m-t H:i:s", strtotime('last month'));
            $last_month= date('m', strtotime('last month'));
            $last_month_year= date('Y', strtotime('last month'));
            $current_month= date('m');
            $current_year= date('Y');
            $last_sync_date= $sugar_config['last_sync_date'];
            $current_date= date("Y-m-d H:i:s");
            $count= 0;
            if(!empty($current_date) && !empty($last_sync_date) ){
                $diff=round((strtotime($current_date) - strtotime($last_sync_date)) /86400);
                // echo $diff;exit;
    
                if($diff >0 && !empty($diff) ){
                    $query= "SELECT * from contacts LEFT JOIN contacts_cstm on id=id_c where deleted=0";
                    $result= $db->query($query);
                    while($row= $db->fetchByAssoc($result)){
                    
                    $contact_id= $row['id'];
                    $contact_name= $row['first_name']." ".$row['last_name'];
                    $default_interest= $row['default_interest_c'];
                    $group_interest = $row['current_interest_c'];
                    $pending_payment= number_format($row['pending_payment_c'],2);
    
                    $query2= "SELECT mc.*,mcstm.* FROM `bw_monthly_calculation` as mc left Join bw_monthly_calculation_cstm as mcstm on mc.id=mcstm.id_c LEFT JOIN bw_monthly_calculation_contacts_c as mcc on mc.id=mcc.bw_monthly_calculation_contactsbw_monthly_calculation_idb WHERE  mcc.bw_monthly_calculation_contactscontacts_ida='".$contact_id."' and MONTH(mcstm.last_sync_c)='".$current_month."' and mcc.deleted=0 and mc.deleted=0 ";
                    $result2= $db->query($query2);
                    $row2= $db->fetchByAssoc($result2);
                    $mc_id= $row2['id'];
                        /// It goes in current month record is get
                    if($mc_id !=""){
                        $previous_amount= $row2['previous_amount'];
                        $received_amount= $row2['received_amount'];
                        $return_amount= $row2['returned_amount'];
                        $old_owner_commission= $row2['owner_commission'];
                        $old_group_commission= $row2['group_commission'];
                        $old_total_commission= $row2['total_commission'];
                        $total_amount= $row2['total_amount'];
                        $last_sync= $row2['last_sync_c'];
                        $calculation_diff= round((strtotime($current_date) - strtotime($last_sync)) /86400);
    
                        $new_owner_commission= round((($total_amount * $default_interest) /100) /30 * $calculation_diff);
                        $new_group_commission= round((($total_amount * $group_interest)) /100 /30 * $calculation_diff);
                        $owner_commission= $new_owner_commission + $old_owner_commission;
                        $group_commission= $new_group_commission + $old_group_commission;
                        $total_commission= $owner_commission + $group_commission;
    
                        $name= $contact_name."-".date("M-Y");
                        $query3="UPDATE `bw_monthly_calculation` SET `name`='".$name."',`date_modified`='".$current_date."',`total_amount`='".$total_amount."',`owner_commission`='".$owner_commission."',`group_commission`='".$group_commission."',`total_commission`='".$total_commission."', pending_commission='".$pending_payment."' WHERE id='".$mc_id."' and deleted=0";
                        $result3= $db->query($query3);
    
                        $query4="UPDATE `bw_monthly_calculation_cstm` SET `last_sync_c`='".$current_date."' WHERE id_c='".$mc_id."'";
                        $result= $db->query($query4);
                    } else{
                        $query1= "SELECT mc.*,mcstm.* FROM `bw_monthly_calculation` as mc left Join bw_monthly_calculation_cstm as mcstm on mc.id=mcstm.id_c LEFT JOIN bw_monthly_calculation_contacts_c as mcc on mc.id=mcc.bw_monthly_calculation_contactsbw_monthly_calculation_idb WHERE  mcc.bw_monthly_calculation_contactscontacts_ida='".$contact_id."' and MONTH(mcstm.last_sync_c)='".$last_month."' and mcc.deleted=0 and mc.deleted=0 ";
                        $result1= $db->query($query1);
                        $row1= $db->fetchByAssoc($result1);
                        $mc_id= $row1['id'];
                
                        if($mc_id !="" && $lastDayLastMonth != date_format(date_create($row1['last_sync_c']), "Y-m-d")){
                           $previous_amount= $row1['previous_amount'];
                            $received_amount= $row1['received_amount'];
                            $return_amount= $row1['returned_amount'];
                            $old_owner_commission= $row1['owner_commission'];
                            $old_group_commission= $row1['group_commission'];
                            $old_total_commission= $row1['total_commission'];
                            $old_total_amount= $row1['total_amount'];
                            $last_sync= $row1['last_sync_c'];
                            $calculation_diff= round((strtotime($lastDayLastMonth) - strtotime($last_sync)) /86400);
                            
                            $new_owner_commission= round((($total_amount * $default_interest) /100) /30 * $calculation_diff);
                            $new_group_commission= round((($total_amount * $group_interest)) /100 /30 * $calculation_diff);
                            $owner_commission= $new_owner_commission + $old_owner_commission;
                            $group_commission= $new_group_commission + $old_group_commission;
                            $total_commission= $owner_commission + $group_commission;
                
                            $name= $contact_name."-".date("M-Y");
                            $query3="UPDATE `bw_monthly_calculation` SET `name`='".$name."',`date_modified`='".$current_date."',`total_amount`='".$total_amount."',`owner_commission`='".$owner_commission."',`group_commission`='".$group_commission."',`total_commission`='".$total_commission."', pending_commission='".$pending_payment."' WHERE id='".$mc_id."' and deleted=0";
                            $result3= $db->query($query3);
                
                            $query4="UPDATE `bw_monthly_calculation_cstm` SET `last_sync_c`='".$lastDayLastMonth."' WHERE id_c='".$mc_id."'";
                            $result= $db->query($query4);
                        }
    
                    $query2= "SELECT mc.*,mcstm.* FROM `bw_monthly_calculation` as mc left Join bw_monthly_calculation_cstm as mcstm on mc.id=mcstm.id_c WHERE mc.id='".$mc_id."' and mc.deleted=0 ";
                    $result2= $db->query($query2);
                    $row2= $db->fetchByAssoc($result2);
                    $mc_id= $row2['id'];
                        /// It goes in current month record is get
                    if($mc_id !=""){
                        $previous_amount= $row2['total_amount'];
                        $received_amount= $row2['received_amount'];
                        $return_amount= $row2['returned_amount'];
                        $old_owner_commission= $row2['owner_commission'];
                        $old_group_commission= $row2['group_commission'];
                        $old_total_commission= $row2['total_commission'];
                        $total_amount= $row2['total_amount'] + $old_total_commission;
                        $last_sync= $row2['last_sync_c'];
                        $calculation_diff= round((strtotime($current_date) - strtotime($last_sync)) /86400);
                        
                        $new_owner_commission= round((($total_amount * $default_interest) /100) /30 * $calculation_diff);
                        $new_group_commission= round((($total_amount * $group_interest)) /100 /30 * $calculation_diff);
    
                        $owner_commission= $new_owner_commission;
                        $group_commission= $new_group_commission;
                        $total_commission= $owner_commission + $group_commission;
    
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
                echo"<br>".$mc_id;
                if($mc_id!=""){
                    $count++;
                } 
            }
            $configuratorObj = new Configurator();
            $configuratorObj->loadConfig();
            $configuratorObj->config['last_sync_date'] = $current_date;
            $configuratorObj->saveConfig();
            ?>
            <br/><br/>
                <div class="alert alert-success">
                <strong>Success!</strong> Total <?php echo $count; ?>  Client Commission Calculated.
                </div>
            <?php
        }
        
    }
    
           

}
?>