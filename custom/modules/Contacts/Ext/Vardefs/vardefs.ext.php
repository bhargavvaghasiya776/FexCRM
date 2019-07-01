<?php 
 //WARNING: The contents of this file are auto-generated


 // created: 2019-05-03 17:43:19
$dictionary['Contact']['fields']['jjwg_maps_geocode_status_c']['inline_edit']=1;

 

 // created: 2019-05-03 17:43:21
$dictionary['Contact']['fields']['jjwg_maps_address_c']['inline_edit']=1;

 

// created: 2019-06-05 18:34:49
$dictionary["Contact"]["fields"]["bw_transaction_contacts"] = array (
  'name' => 'bw_transaction_contacts',
  'type' => 'link',
  'relationship' => 'bw_transaction_contacts',
  'source' => 'non-db',
  'module' => 'BW_Transaction',
  'bean_name' => 'BW_Transaction',
  'side' => 'right',
  'vname' => 'LBL_BW_TRANSACTION_CONTACTS_FROM_BW_TRANSACTION_TITLE',
);


 // created: 2019-05-03 17:43:18
$dictionary['Contact']['fields']['jjwg_maps_lat_c']['inline_edit']=1;

 

 // created: 2019-05-03 17:43:17
$dictionary['Contact']['fields']['jjwg_maps_lng_c']['inline_edit']=1;

 

 // created: 2019-06-20 19:10:32
$dictionary['Contact']['fields']['contact_type_c']['inline_edit']='1';
$dictionary['Contact']['fields']['contact_type_c']['labelValue']='Contact Type';

 

 // created: 2019-06-10 19:20:21
$dictionary['Contact']['fields']['pending_payment_c']['inline_edit']='1';
$dictionary['Contact']['fields']['pending_payment_c']['labelValue']='Pending Payment';

 

 // created: 2019-06-10 19:08:40
$dictionary['Contact']['fields']['default_interest_c']['inline_edit']='1';
$dictionary['Contact']['fields']['default_interest_c']['labelValue']='Owner Commission(%)';

 

 // created: 2019-06-10 19:07:37
$dictionary['Contact']['fields']['current_interest_c']['inline_edit']='1';
$dictionary['Contact']['fields']['current_interest_c']['labelValue']='Group  Commission(%)';

 

 // created: 2019-06-10 19:20:22
$dictionary['Contact']['fields']['currency_id']['inline_edit']=1;

 

// created: 2019-05-03 20:41:23
$dictionary["Contact"]["fields"]["bw_monthly_calculation_contacts"] = array (
  'name' => 'bw_monthly_calculation_contacts',
  'type' => 'link',
  'relationship' => 'bw_monthly_calculation_contacts',
  'source' => 'non-db',
  'module' => 'BW_Monthly_Calculation',
  'bean_name' => false,
  'side' => 'right',
  'vname' => 'LBL_BW_MONTHLY_CALCULATION_CONTACTS_FROM_BW_MONTHLY_CALCULATION_TITLE',
);


 // created: 2019-06-20 19:22:29
$dictionary['Contact']['fields']['is_calculated_c']['inline_edit']='1';
$dictionary['Contact']['fields']['is_calculated_c']['labelValue']='is calculated';

 

// created: 2019-06-20 19:11:59
$dictionary["Contact"]["fields"]["contacts_contacts_1"] = array (
  'name' => 'contacts_contacts_1',
  'type' => 'link',
  'relationship' => 'contacts_contacts_1',
  'source' => 'non-db',
  'module' => 'Contacts',
  'bean_name' => 'Contact',
  'vname' => 'LBL_CONTACTS_CONTACTS_1_FROM_CONTACTS_L_TITLE',
  'id_name' => 'contacts_contacts_1contacts_ida',
);
$dictionary["Contact"]["fields"]["contacts_contacts_1_name"] = array (
  'name' => 'contacts_contacts_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CONTACTS_CONTACTS_1_FROM_CONTACTS_L_TITLE',
  'save' => true,
  'id_name' => 'contacts_contacts_1contacts_ida',
  'link' => 'contacts_contacts_1',
  'table' => 'contacts',
  'module' => 'Contacts',
  'rname' => 'name',
  'db_concat_fields' => 
  array (
    0 => 'first_name',
    1 => 'last_name',
  ),
);
$dictionary["Contact"]["fields"]["contacts_contacts_1contacts_ida"] = array (
  'name' => 'contacts_contacts_1contacts_ida',
  'type' => 'link',
  'relationship' => 'contacts_contacts_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_CONTACTS_CONTACTS_1_FROM_CONTACTS_R_TITLE',
);

?>