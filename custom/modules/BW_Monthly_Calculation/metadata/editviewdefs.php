<?php
$module_name = 'BW_Monthly_Calculation';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => false,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'bw_monthly_calculation_contacts_name',
            'label' => 'LBL_BW_MONTHLY_CALCULATION_CONTACTS_FROM_CONTACTS_TITLE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'previous_amount',
            'label' => 'LBL_PREVIOUS_AMOUNT',
          ),
          1 => 
          array (
            'name' => 'received_amount',
            'label' => 'LBL_RECEIVED_AMOUNT',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'returned_amount',
            'label' => 'LBL_RETURNED_AMOUNT',
          ),
          1 => 
          array (
            'name' => 'total_amount',
            'label' => 'LBL_TOTAL_AMOUNT',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'owner_commission',
            'label' => 'LBL_OWNER_COMMISSION',
          ),
          1 => 
          array (
            'name' => 'group_commission',
            'label' => 'LBL_GROUP_COMMISSION',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'total_commission',
            'label' => 'LBL_TOTAL_COMMISSION',
          ),
          1 => 
          array (
            'name' => 'pending_commission',
            'label' => 'LBL_PENDING_COMMISSION',
          ),
        ),
        5 => 
        array (
          0 => 
          array (
            'name' => 'payment_by_cheque',
            'label' => 'LBL_PAYMENT_BY_CHEQUE',
          ),
          1 => 
          array (
            'name' => 'all_rtgs',
            'label' => 'LBL_ALL_RTGS',
          ),
        ),
        6 => 
        array (
          0 => 
          array (
            'name' => 'cash',
            'label' => 'LBL_CASH',
          ),
          1 => 
          array (
            'name' => 'total_paid_amount',
            'label' => 'LBL_TOTAL_PAID_AMOUNT',
          ),
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'total',
            'label' => 'LBL_TOTAL',
          ),
          1 => 
          array (
            'name' => 'last_sync_c',
            'label' => 'LBL_LAST_SYNC',
          ),
        ),
      ),
    ),
  ),
);
;
?>
