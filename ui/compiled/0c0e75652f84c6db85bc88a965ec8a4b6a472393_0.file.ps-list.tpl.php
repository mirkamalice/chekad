<?php
/* Smarty version 3.1.33, created on 2023-07-11 15:21:42
  from 'C:\xampp\htdocs\ibilling\ui\theme\ibilling\ps-list.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_64ad343eb806a5_57834607',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0c0e75652f84c6db85bc88a965ec8a4b6a472393' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ibilling\\ui\\theme\\ibilling\\ps-list.tpl',
      1 => 1689072701,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_64ad343eb806a5_57834607 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_200225221964ad343eb7a536_82313993', "content");
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/admin.tpl");
}
/* {block "content"} */
class Block_200225221964ad343eb7a536_82313993 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_200225221964ad343eb7a536_82313993',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-12">
            <div class="ibox">
                <div class="ibox-title">
                    <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['List'];?>
 <?php if ($_smarty_tpl->tpl_vars['type']->value == 'Product') {?> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Products'];?>
 <?php } else { ?> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Services'];?>
 <?php }?></h5>
                    <div class="ibox-tools">
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
ps/p-new" class="btn btn-primary btn-xs"><i class="fa fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add Product'];?>
</a>
                    </div>
                </div>
                <div class="ibox-content" id="ibox_form">
                    <div class="input-group"><input type="text" placeholder="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Search'];?>
" id="txtsearch" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" id="search" class="btn btn-sm btn-primary"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Search'];?>
</button> </span></div>
                    <input type="hidden" id="stype" value="<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
">

                    <div class="project-list mt-md">
                        <div id="progressbar">
                        </div>

                        <div id="application_ajaxrender">


                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>

    <input type="hidden" id="_lan_are_you_sure" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['are_you_sure'];?>
">

<?php
}
}
/* {/block "content"} */
}
