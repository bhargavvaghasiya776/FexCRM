<?php
 // created: 2019-06-05 18:34:49
$layout_defs["Contacts"]["subpanel_setup"]['bw_transaction_contacts'] = array (
  'order' => 100,
  'module' => 'BW_Transaction',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_BW_TRANSACTION_CONTACTS_FROM_BW_TRANSACTION_TITLE',
  'get_subpanel_data' => 'bw_transaction_contacts',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
