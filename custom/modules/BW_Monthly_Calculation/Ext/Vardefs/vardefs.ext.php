<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2019-05-03 21:05:08

 

// created: 2019-05-03 20:41:23
$dictionary["BW_Monthly_Calculation"]["fields"]["bw_monthly_calculation_contacts"] = array (
  'name' => 'bw_monthly_calculation_contacts',
  'type' => 'link',
  'relationship' => 'bw_monthly_calculation_contacts',
  'source' => 'non-db',
  'module' => 'Contacts',
  'bean_name' => 'Contact',
  'vname' => 'LBL_BW_MONTHLY_CALCULATION_CONTACTS_FROM_CONTACTS_TITLE',
  'id_name' => 'bw_monthly_calculation_contactscontacts_ida',
);
$dictionary["BW_Monthly_Calculation"]["fields"]["bw_monthly_calculation_contacts_name"] = array (
  'name' => 'bw_monthly_calculation_contacts_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BW_MONTHLY_CALCULATION_CONTACTS_FROM_CONTACTS_TITLE',
  'save' => true,
  'id_name' => 'bw_monthly_calculation_contactscontacts_ida',
  'link' => 'bw_monthly_calculation_contacts',
  'table' => 'contacts',
  'module' => 'Contacts',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["BW_Monthly_Calculation"]["fields"]["bw_monthly_calculation_contactscontacts_ida"] = array (
  'name' => 'bw_monthly_calculation_contactscontacts_ida',
  'type' => 'link',
  'relationship' => 'bw_monthly_calculation_contacts',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BW_MONTHLY_CALCULATION_CONTACTS_FROM_BW_MONTHLY_CALCULATION_TITLE',
);


 // created: 2019-06-21 20:02:15
$dictionary['BW_Monthly_Calculation']['fields']['last_sync_c']['inline_edit']='1';
$dictionary['BW_Monthly_Calculation']['fields']['last_sync_c']['labelValue']='Last Sync';

 
?>