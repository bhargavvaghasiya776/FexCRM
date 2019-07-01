<?php /* Smarty version 2.6.31, created on 2019-07-01 15:22:43
         compiled from cache/modules/AOW_WorkFlow/ContactsDetailViewfirst_name.tpl */ ?>

<?php if (strlen ( $this->_tpl_vars['fields']['first_name']['value'] ) <= 0): ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['first_name']['default_value']); ?>
<?php else: ?>
<?php $this->assign('value', $this->_tpl_vars['fields']['first_name']['value']); ?>
<?php endif; ?> 
<span class="sugar_field" id="<?php echo $this->_tpl_vars['fields']['first_name']['name']; ?>
"><?php echo $this->_tpl_vars['fields']['first_name']['value']; ?>
</span>