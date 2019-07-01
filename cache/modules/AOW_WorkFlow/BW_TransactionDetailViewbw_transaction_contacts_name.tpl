
 
{if !empty($fields.bw_transaction_contactscontacts_ida.value)}
{capture assign="detail_url"}index.php?module=Contacts&action=DetailView&record={$fields.bw_transaction_contactscontacts_ida.value}{/capture}
<a href="{sugar_ajax_url url=$detail_url}">{/if}
<span id="bw_transaction_contactscontacts_ida" class="sugar_field" data-id-value="{$fields.bw_transaction_contactscontacts_ida.value}">{$fields.bw_transaction_contacts_name.value}</span>
{if !empty($fields.bw_transaction_contactscontacts_ida.value)}</a>{/if}
