<?php
// created: 2019-05-03 20:41:23
$dictionary["bw_monthly_calculation_contacts"] = array (
  'true_relationship_type' => 'one-to-many',
  'relationships' => 
  array (
    'bw_monthly_calculation_contacts' => 
    array (
      'lhs_module' => 'Contacts',
      'lhs_table' => 'contacts',
      'lhs_key' => 'id',
      'rhs_module' => 'BW_Monthly_Calculation',
      'rhs_table' => 'bw_monthly_calculation',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'bw_monthly_calculation_contacts_c',
      'join_key_lhs' => 'bw_monthly_calculation_contactscontacts_ida',
      'join_key_rhs' => 'bw_monthly_calculation_contactsbw_monthly_calculation_idb',
    ),
  ),
  'table' => 'bw_monthly_calculation_contacts_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'bw_monthly_calculation_contactscontacts_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'bw_monthly_calculation_contactsbw_monthly_calculation_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'bw_monthly_calculation_contactsspk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'bw_monthly_calculation_contacts_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'bw_monthly_calculation_contactscontacts_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'bw_monthly_calculation_contacts_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'bw_monthly_calculation_contactsbw_monthly_calculation_idb',
      ),
    ),
  ),
);