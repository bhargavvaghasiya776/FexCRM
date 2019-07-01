<?php
 // created: 2019-05-03 20:41:23
$layout_defs["Contacts"]["subpanel_setup"]['bw_monthly_calculation_contacts'] = array (
  'order' => 100,
  'module' => 'BW_Monthly_Calculation',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_BW_MONTHLY_CALCULATION_CONTACTS_FROM_BW_MONTHLY_CALCULATION_TITLE',
  'get_subpanel_data' => 'bw_monthly_calculation_contacts',
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
