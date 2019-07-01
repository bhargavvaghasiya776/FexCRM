<?php
 $hook_version = 1; 
 $hook_array = Array(); 
 $hook_array['before_save'] = Array(); 
 $hook_array['before_save'][] = Array(1, 'calculate total Amount', 'custom/modules/BW_Transaction/Logic_hook/transaction_logic_hook.php','transactioncls', 'monthly_calculation'); 



