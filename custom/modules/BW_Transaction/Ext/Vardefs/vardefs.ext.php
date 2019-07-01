<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2019-06-10 19:15:43
$dictionary['BW_Transaction']['fields']['tds_c']['inline_edit']='1';
$dictionary['BW_Transaction']['fields']['tds_c']['labelValue']='TDS';

 

 // created: 2019-06-05 18:48:01
$dictionary['BW_Transaction']['fields']['cash']['default']='0';

 

 // created: 2019-06-05 18:47:51
$dictionary['BW_Transaction']['fields']['rttgs']['default']='0';

 

 // created: 2019-06-05 18:47:32
$dictionary['BW_Transaction']['fields']['cheque']['default']='0';

 

 // created: 2019-06-10 19:15:44
$dictionary['BW_Transaction']['fields']['currency_id']['inline_edit']=1;

 

// created: 2019-06-05 18:34:49
$dictionary["BW_Transaction"]["fields"]["bw_transaction_contacts"] = array (
  'name' => 'bw_transaction_contacts',
  'type' => 'link',
  'relationship' => 'bw_transaction_contacts',
  'source' => 'non-db',
  'module' => 'Contacts',
  'bean_name' => 'Contact',
  'vname' => 'LBL_BW_TRANSACTION_CONTACTS_FROM_CONTACTS_TITLE',
  'id_name' => 'bw_transaction_contactscontacts_ida',
);
$dictionary["BW_Transaction"]["fields"]["bw_transaction_contacts_name"] = array (
  'name' => 'bw_transaction_contacts_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_BW_TRANSACTION_CONTACTS_FROM_CONTACTS_TITLE',
  'save' => true,
  'id_name' => 'bw_transaction_contactscontacts_ida',
  'link' => 'bw_transaction_contacts',
  'table' => 'contacts',
  'module' => 'Contacts',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["BW_Transaction"]["fields"]["bw_transaction_contactscontacts_ida"] = array (
  'name' => 'bw_transaction_contactscontacts_ida',
  'type' => 'link',
  'relationship' => 'bw_transaction_contacts',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_BW_TRANSACTION_CONTACTS_FROM_BW_TRANSACTION_TITLE',
);


 // created: 2019-06-12 19:05:26
$dictionary['BW_Transaction']['fields']['is_calculated_c']['inline_edit']='1';
$dictionary['BW_Transaction']['fields']['is_calculated_c']['labelValue']='IS Calculated';

 
?>