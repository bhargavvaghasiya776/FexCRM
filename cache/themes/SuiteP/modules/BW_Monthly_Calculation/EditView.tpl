

<script>
    {literal}
    $(document).ready(function(){
	    $("ul.clickMenu").each(function(index, node){
	        $(node).sugarActionMenu();
	    });

        if($('.edit-view-pagination').children().length == 0) $('.saveAndContinue').remove();
    });
    {/literal}
</script>
<div class="clear"></div>
<form action="index.php" method="POST" name="{$form_name}" id="{$form_id}" {$enctype}>
<div class="edit-view-pagination-mobile-container">
<div class="edit-view-pagination edit-view-mobile-pagination">
{$PAGINATION}
</div>
</div>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="dcQuickEdit">
<tr>
<td class="buttons">
<input type="hidden" name="module" value="{$module}">
{if isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true"}
<input type="hidden" name="record" value="">
<input type="hidden" name="duplicateSave" value="true">
<input type="hidden" name="duplicateId" value="{$fields.id.value}">
{else}
<input type="hidden" name="record" value="{$fields.id.value}">
{/if}
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="{$smarty.request.return_module}">
<input type="hidden" name="return_action" value="{$smarty.request.return_action}">
<input type="hidden" name="return_id" value="{$smarty.request.return_id}">
<input type="hidden" name="module_tab"> 
<input type="hidden" name="contact_role">
{if (!empty($smarty.request.return_module) || !empty($smarty.request.relate_to)) && !(isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true")}
<input type="hidden" name="relate_to" value="{if $smarty.request.return_relationship}{$smarty.request.return_relationship}{elseif $smarty.request.relate_to && empty($smarty.request.from_dcmenu)}{$smarty.request.relate_to}{elseif empty($isDCForm) && empty($smarty.request.from_dcmenu)}{$smarty.request.return_module}{/if}">
<input type="hidden" name="relate_id" value="{$smarty.request.return_id}">
{/if}
<input type="hidden" name="offset" value="{$offset}">
{assign var='place' value="_HEADER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('EditView'); {if $isDuplicate}_form.return_id.value=''; {/if}_form.action.value='Save'; if(check_form('EditView'))SUGAR.ajaxUI.submitForm(_form);return false;" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" id="SAVE">{/if} 
{if !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($smarty.request.return_id))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" type="button" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($fields.id.value))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && empty($fields.id.value)) && empty($smarty.request.return_id)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=ListView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && !empty($smarty.request.return_module)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action={$smarty.request.return_action}&module={$smarty.request.return_module|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif empty($smarty.request.return_action) || empty($smarty.request.return_id) && !empty($fields.id.value)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module=BW_Monthly_Calculation'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {else}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {/if}
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=BW_Monthly_Calculation", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</td>
<td align='right' class="edit-view-pagination-desktop-container">
<div class="edit-view-pagination edit-view-pagination-desktop">
{$PAGINATION}
</div>
</td>
</tr>
</table>
{sugar_include include=$includes}
<div id="EditView_tabs">

<ul class="nav nav-tabs">
</ul>
<div class="clearfix"></div>
<div class="tab-content" style="padding: 0; border: 0;">

<div class="tab-pane panel-collapse">&nbsp;</div>
</div>

<div class="panel-content">
<div>&nbsp;</div>




<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse-edit" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='DEFAULT' module='BW_Monthly_Calculation'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="detailpanel_-1" data-id="DEFAULT">
<div class="tab-content">
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-12 edit-view-row-item">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_BW_MONTHLY_CALCULATION_CONTACTS_FROM_CONTACTS_TITLE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_BW_MONTHLY_CALCULATION_CONTACTS_FROM_CONTACTS_TITLE' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="bw_monthly_calculation_contacts_name" colspan='3' >
{counter name="panelFieldCount" print=false}

<input type="text" name="{$fields.bw_monthly_calculation_contacts_name.name}" class="sqsEnabled" tabindex="0" id="{$fields.bw_monthly_calculation_contacts_name.name}" size="" value="{$fields.bw_monthly_calculation_contacts_name.value}" title='' autocomplete="off"  	 >
<input type="hidden" name="{$fields.bw_monthly_calculation_contacts_name.id_name}" 
id="{$fields.bw_monthly_calculation_contacts_name.id_name}" 
value="{$fields.bw_monthly_calculation_contactscontacts_ida.value}">
<span class="id-ff multiple">
<button type="button" name="btn_{$fields.bw_monthly_calculation_contacts_name.name}" id="btn_{$fields.bw_monthly_calculation_contacts_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_SELECT_CONTACTS_TITLE"}" class="button firstChild" value="{sugar_translate label="LBL_ACCESSKEY_SELECT_CONTACTS_LABEL"}"
onclick='open_popup(
"{$fields.bw_monthly_calculation_contacts_name.module}", 
600, 
400, 
"", 
true, 
false, 
{literal}{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"bw_monthly_calculation_contactscontacts_ida","name":"bw_monthly_calculation_contacts_name"}}{/literal}, 
"single", 
true
);' ><span class="suitepicon suitepicon-action-select"></span></button><button type="button" name="btn_clr_{$fields.bw_monthly_calculation_contacts_name.name}" id="btn_clr_{$fields.bw_monthly_calculation_contacts_name.name}" tabindex="0" title="{sugar_translate label="LBL_ACCESSKEY_CLEAR_CONTACTS_TITLE"}"  class="button lastChild"
onclick="SUGAR.clearRelateField(this.form, '{$fields.bw_monthly_calculation_contacts_name.name}', '{$fields.bw_monthly_calculation_contacts_name.id_name}');"  value="{sugar_translate label="LBL_ACCESSKEY_CLEAR_CONTACTS_LABEL"}" ><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<script type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['{$form_name}_{$fields.bw_monthly_calculation_contacts_name.name}']) != 'undefined'",
		enableQS
);
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_PREVIOUS_AMOUNT">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_PREVIOUS_AMOUNT' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="previous_amount"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.previous_amount.value) <= 0}
{assign var="value" value=$fields.previous_amount.default_value }
{else}
{assign var="value" value=$fields.previous_amount.value }
{/if}  
<input type='text' name='{$fields.previous_amount.name}' 
id='{$fields.previous_amount.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_RECEIVED_AMOUNT">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_RECEIVED_AMOUNT' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="received_amount"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.received_amount.value) <= 0}
{assign var="value" value=$fields.received_amount.default_value }
{else}
{assign var="value" value=$fields.received_amount.value }
{/if}  
<input type='text' name='{$fields.received_amount.name}' 
id='{$fields.received_amount.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_RETURNED_AMOUNT">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_RETURNED_AMOUNT' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="returned_amount"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.returned_amount.value) <= 0}
{assign var="value" value=$fields.returned_amount.default_value }
{else}
{assign var="value" value=$fields.returned_amount.value }
{/if}  
<input type='text' name='{$fields.returned_amount.name}' 
id='{$fields.returned_amount.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_TOTAL_AMOUNT">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_TOTAL_AMOUNT' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="total_amount"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.total_amount.value) <= 0}
{assign var="value" value=$fields.total_amount.default_value }
{else}
{assign var="value" value=$fields.total_amount.value }
{/if}  
<input type='text' name='{$fields.total_amount.name}' 
id='{$fields.total_amount.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_OWNER_COMMISSION">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_OWNER_COMMISSION' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="owner_commission"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.owner_commission.value) <= 0}
{assign var="value" value=$fields.owner_commission.default_value }
{else}
{assign var="value" value=$fields.owner_commission.value }
{/if}  
<input type='text' name='{$fields.owner_commission.name}' 
id='{$fields.owner_commission.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_GROUP_COMMISSION">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_GROUP_COMMISSION' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="group_commission"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.group_commission.value) <= 0}
{assign var="value" value=$fields.group_commission.default_value }
{else}
{assign var="value" value=$fields.group_commission.value }
{/if}  
<input type='text' name='{$fields.group_commission.name}' 
id='{$fields.group_commission.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_TOTAL_COMMISSION">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_TOTAL_COMMISSION' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="total_commission"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.total_commission.value) <= 0}
{assign var="value" value=$fields.total_commission.default_value }
{else}
{assign var="value" value=$fields.total_commission.value }
{/if}  
<input type='text' name='{$fields.total_commission.name}' 
id='{$fields.total_commission.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_PENDING_COMMISSION">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_PENDING_COMMISSION' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="pending_commission"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.pending_commission.value) <= 0}
{assign var="value" value=$fields.pending_commission.default_value }
{else}
{assign var="value" value=$fields.pending_commission.value }
{/if}  
<input type='text' name='{$fields.pending_commission.name}' 
id='{$fields.pending_commission.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_PAYMENT_BY_CHEQUE">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_PAYMENT_BY_CHEQUE' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="payment_by_cheque"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.payment_by_cheque.value) <= 0}
{assign var="value" value=$fields.payment_by_cheque.default_value }
{else}
{assign var="value" value=$fields.payment_by_cheque.value }
{/if}  
<input type='text' name='{$fields.payment_by_cheque.name}' 
id='{$fields.payment_by_cheque.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_ALL_RTGS">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_ALL_RTGS' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="all_rtgs"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.all_rtgs.value) <= 0}
{assign var="value" value=$fields.all_rtgs.default_value }
{else}
{assign var="value" value=$fields.all_rtgs.value }
{/if}  
<input type='text' name='{$fields.all_rtgs.name}' 
id='{$fields.all_rtgs.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_CASH">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_CASH' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="cash"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.cash.value) <= 0}
{assign var="value" value=$fields.cash.default_value }
{else}
{assign var="value" value=$fields.cash.value }
{/if}  
<input type='text' name='{$fields.cash.name}' 
id='{$fields.cash.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_TOTAL_PAID_AMOUNT">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_TOTAL_PAID_AMOUNT' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="total_paid_amount"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.total_paid_amount.value) <= 0}
{assign var="value" value=$fields.total_paid_amount.default_value }
{else}
{assign var="value" value=$fields.total_paid_amount.value }
{/if}  
<input type='text' name='{$fields.total_paid_amount.name}' 
id='{$fields.total_paid_amount.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>



<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_TOTAL">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_TOTAL' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="currency" field="total"  >
{counter name="panelFieldCount" print=false}

{if strlen($fields.total.value) <= 0}
{assign var="value" value=$fields.total.default_value }
{else}
{assign var="value" value=$fields.total.value }
{/if}  
<input type='text' name='{$fields.total.name}' 
id='{$fields.total.name}' size='30' maxlength='26' value='{sugar_number_format var=$value}' title='' tabindex='0'
>
</div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_LAST_SYNC">

{minify}
{capture name="label" assign="label"}{sugar_translate label='LBL_LAST_SYNC' module='BW_Monthly_Calculation'}{/capture}
{$label|strip_semicolon}:

{/minify}
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="datetimecombo" field="last_sync_c"  >
{counter name="panelFieldCount" print=false}

<table border="0" cellpadding="0" cellspacing="0" class="dateTime">
<tr valign="middle">
<td nowrap class="dateTimeComboColumn">
<input autocomplete="off" type="text" id="{$fields.last_sync_c.name}_date" class="datetimecombo_date" value="{$fields[$fields.last_sync_c.name].value}" size="11" maxlength="10" title='' tabindex="0" onblur="combo_{$fields.last_sync_c.name}.update();" onchange="combo_{$fields.last_sync_c.name}.update(); "    >
<button type="button" id="{$fields.last_sync_c.name}_trigger" class="btn btn-danger" onclick="return false;"><span class="suitepicon suitepicon-module-calendar"  alt="{$APP.LBL_ENTER_DATE}"></span></button>
</td>
<td nowrap class="dateTimeComboColumn">
<div id="{$fields.last_sync_c.name}_time_section" class="datetimecombo_time_section"></div>
</td>
</tr>
</table>
<input type="hidden" class="DateTimeCombo" id="{$fields.last_sync_c.name}" name="{$fields.last_sync_c.name}" value="{$fields[$fields.last_sync_c.name].value}">
<script type="text/javascript" src="{sugar_getjspath file="include/SugarFields/Fields/Datetimecombo/Datetimecombo.js"}"></script>
<script type="text/javascript">
var combo_{$fields.last_sync_c.name} = new Datetimecombo("{$fields[$fields.last_sync_c.name].value}", "{$fields.last_sync_c.name}", "{$TIME_FORMAT}", "0", '', false, true);
//Render the remaining widget fields
text = combo_{$fields.last_sync_c.name}.html('');
document.getElementById('{$fields.last_sync_c.name}_time_section').innerHTML = text;

//Call eval on the update function to handle updates to calendar picker object
eval(combo_{$fields.last_sync_c.name}.jsscript(''));

addToValidateBinaryDependency('{$form_name}',"{$fields.last_sync_c.name}_hours", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_HOURS}" ,"{$fields.last_sync_c.name}_date");
addToValidateBinaryDependency('{$form_name}', "{$fields.last_sync_c.name}_minutes", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_MINUTES}" ,"{$fields.last_sync_c.name}_date");
addToValidateBinaryDependency('{$form_name}', "{$fields.last_sync_c.name}_meridiem", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_MERIDIEM}","{$fields.last_sync_c.name}_date");

YAHOO.util.Event.onDOMReady(function()
{ldelim}

	Calendar.setup ({ldelim}
	onClose : update_{$fields.last_sync_c.name},
	inputField : "{$fields.last_sync_c.name}_date",
    form : "EditView",
	ifFormat : "{$CALENDAR_FORMAT}",
	daFormat : "{$CALENDAR_FORMAT}",
	button : "{$fields.last_sync_c.name}_trigger",
	singleClick : true,
	step : 1,
	weekNumbers: false,
        startWeekday: {$CALENDAR_FDOW|default:'0'},
	comboObject: combo_{$fields.last_sync_c.name}
	{rdelim});

	//Call update for first time to round hours and minute values
	combo_{$fields.last_sync_c.name}.update(false);

{rdelim}); 
</script>
</div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>
</div>                    </div>
</div>
</div>
</div>
</div>

<script language="javascript">
    var _form_id = '{$form_id}';
    {literal}
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == '') ? 'EditView' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    {/literal}
</script>
{assign var='place' value="_FOOTER"} <!-- to be used for id for buttons with custom code in def files-->
<div class="buttons">
{if $bean->aclAccess("save")}<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="button primary" onclick="var _form = document.getElementById('EditView'); {if $isDuplicate}_form.return_id.value=''; {/if}_form.action.value='Save'; if(check_form('EditView'))SUGAR.ajaxUI.submitForm(_form);return false;" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" id="SAVE">{/if} 
{if !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($smarty.request.return_id))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" type="button" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && !empty($fields.id.value))}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && ($smarty.request.return_action == "DetailView" && empty($fields.id.value)) && empty($smarty.request.return_id)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=ListView&module={$smarty.request.return_module|escape:"url"}&record={$fields.id.value}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif !empty($smarty.request.return_action) && !empty($smarty.request.return_module)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action={$smarty.request.return_action}&module={$smarty.request.return_module|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {elseif empty($smarty.request.return_action) || empty($smarty.request.return_id) && !empty($fields.id.value)}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module=BW_Monthly_Calculation'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {else}<input title="{$APP.LBL_CANCEL_BUTTON_TITLE}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module={$smarty.request.return_module|escape:"url"}&record={$smarty.request.return_id|escape:"url"}'); return false;" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" id="CANCEL"> {/if}
{if $showVCRControl}
<button type="button" id="save_and_continue" class="button saveAndContinue" title="{$app_strings.LBL_SAVE_AND_CONTINUE}" onClick="SUGAR.saveAndContinue(this);">
{$APP.LBL_SAVE_AND_CONTINUE}
</button>
{/if}
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=BW_Monthly_Calculation", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
</form>
{$set_focus_block}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>
<script type="text/javascript">
YAHOO.util.Event.onContentReady("EditView",
    function () {ldelim} initEditView(document.forms.EditView) {rdelim});
//window.setTimeout(, 100);
window.onbeforeunload = function () {ldelim} return onUnloadEditView(); {rdelim};
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {ldelim}
$(document).ready(function() {ldelim}
    $(".collapseLink,.expandLink").click(function (e) {ldelim} e.preventDefault(); {rdelim});
  {rdelim});
{rdelim}
</script>
{literal}
<script type="text/javascript">

    var selectTab = function(tab) {
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').hide();
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').eq(tab).show().addClass('active').addClass('in');
        $('#EditView_tabs div.panel-content div.panel').hide();
        $('#EditView_tabs div.panel-content div.panel.tab-panel-' + tab).show()
    };

    var selectTabOnError = function(tab) {
        selectTab(tab);
        $('#EditView_tabs ul.nav.nav-tabs li').removeClass('active');
        $('#EditView_tabs ul.nav.nav-tabs li a').css('color', '');

        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).find('a').first().css('color', 'red');
        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).addClass('active');

    };

    var selectTabOnErrorInputHandle = function(inputHandle) {
        var tab = $(inputHandle).closest('.tab-pane-NOBOOTSTRAPTOGGLER').attr('id').match(/^detailpanel_(.*)$/)[1];
        selectTabOnError(tab);
    };


    $(function(){
        $('#EditView_tabs ul.nav.nav-tabs li > a[data-toggle="tab"]').click(function(e){
            if(typeof $(this).parent().find('a').first().attr('id') != 'undefined') {
                var tab = parseInt($(this).parent().find('a').first().attr('id').match(/^tab(.)*$/)[1]);
                selectTab(tab);
            }
        });

        $('a[data-toggle="collapse-edit"]').click(function(e){
            if($(this).hasClass('collapsed')) {
              // Expand panel
                // Change style of .panel-header
                $(this).removeClass('collapsed');
                // Expand .panel-body
                $(this).parents('.panel').find('.panel-body').removeClass('in').addClass('in');
            } else {
              // Collapse panel
                // Change style of .panel-header
                $(this).addClass('collapsed');
                // Collapse .panel-body
                $(this).parents('.panel').find('.panel-body').removeClass('in').removeClass('in');
            }
        });
    });

    </script>
{/literal}{literal}
<script type="text/javascript">
addForm('EditView');addToValidate('EditView', 'name', 'name', true,'{/literal}{sugar_translate label='LBL_NAME' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'date_entered_date', 'date', false,'Date Created' );
addToValidate('EditView', 'date_modified_date', 'date', false,'Date Modified' );
addToValidate('EditView', 'modified_user_id', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_MODIFIED' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'modified_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_MODIFIED_NAME' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'created_by', 'assigned_user_name', false,'{/literal}{sugar_translate label='LBL_CREATED' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'created_by_name', 'relate', false,'{/literal}{sugar_translate label='LBL_CREATED' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'description', 'text', false,'{/literal}{sugar_translate label='LBL_DESCRIPTION' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'deleted', 'bool', false,'{/literal}{sugar_translate label='LBL_DELETED' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'assigned_user_id', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_ID' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'assigned_user_name', 'relate', false,'{/literal}{sugar_translate label='LBL_ASSIGNED_TO_NAME' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'previous_amount', 'currency', false,'{/literal}{sugar_translate label='LBL_PREVIOUS_AMOUNT' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'received_amount', 'currency', false,'{/literal}{sugar_translate label='LBL_RECEIVED_AMOUNT' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'returned_amount', 'currency', false,'{/literal}{sugar_translate label='LBL_RETURNED_AMOUNT' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'total_amount', 'currency', false,'{/literal}{sugar_translate label='LBL_TOTAL_AMOUNT' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'owner_commission', 'currency', false,'{/literal}{sugar_translate label='LBL_OWNER_COMMISSION' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'group_commission', 'currency', false,'{/literal}{sugar_translate label='LBL_GROUP_COMMISSION' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'total_commission', 'currency', false,'{/literal}{sugar_translate label='LBL_TOTAL_COMMISSION' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'pending_commission', 'currency', false,'{/literal}{sugar_translate label='LBL_PENDING_COMMISSION' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'payment_by_cheque', 'currency', false,'{/literal}{sugar_translate label='LBL_PAYMENT_BY_CHEQUE' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'all_rtgs', 'currency', false,'{/literal}{sugar_translate label='LBL_ALL_RTGS' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'cash', 'currency', false,'{/literal}{sugar_translate label='LBL_CASH' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'total_paid_amount', 'currency', false,'{/literal}{sugar_translate label='LBL_TOTAL_PAID_AMOUNT' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'total', 'currency', false,'{/literal}{sugar_translate label='LBL_TOTAL' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'bw_monthly_calculation_contacts_name', 'relate', false,'{/literal}{sugar_translate label='LBL_BW_MONTHLY_CALCULATION_CONTACTS_FROM_CONTACTS_TITLE' module='BW_Monthly_Calculation' for_js=true}{literal}' );
addToValidate('EditView', 'last_sync_c_date', 'date', false,'Last Sync' );
addToValidateBinaryDependency('EditView', 'assigned_user_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='BW_Monthly_Calculation' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_ASSIGNED_TO' module='BW_Monthly_Calculation' for_js=true}{literal}', 'assigned_user_id' );
addToValidateBinaryDependency('EditView', 'bw_monthly_calculation_contacts_name', 'alpha', false,'{/literal}{sugar_translate label='ERR_SQS_NO_MATCH_FIELD' module='BW_Monthly_Calculation' for_js=true}{literal}: {/literal}{sugar_translate label='LBL_BW_MONTHLY_CALCULATION_CONTACTS_FROM_CONTACTS_TITLE' module='BW_Monthly_Calculation' for_js=true}{literal}', 'bw_monthly_calculation_contactscontacts_ida' );
</script><script language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['EditView_bw_monthly_calculation_contacts_name']={"form":"EditView","method":"get_contact_array","modules":["Contacts"],"field_list":["salutation","first_name","last_name","id"],"populate_list":["bw_monthly_calculation_contacts_name","bw_monthly_calculation_contactscontacts_ida","bw_monthly_calculation_contactscontacts_ida","bw_monthly_calculation_contactscontacts_ida"],"required_list":["bw_monthly_calculation_contactscontacts_ida"],"group":"or","conditions":[{"name":"first_name","op":"like_custom","end":"%","value":""},{"name":"last_name","op":"like_custom","end":"%","value":""}],"order":"last_name","limit":"30","no_match_text":"No Match"};</script>{/literal}
