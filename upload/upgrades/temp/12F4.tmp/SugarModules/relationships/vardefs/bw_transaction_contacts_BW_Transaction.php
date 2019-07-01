<?php
// created: 2019-05-03 20:47:46
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
