<?php
/* Smarty version 3.1.33, created on 2023-07-11 15:45:34
  from 'C:\xampp\htdocs\ibilling\ui\theme\ibilling\automation.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_64ad39d6956a07_88513037',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '15887afa1b39d21fdb86d87b0c4d0767ec9e51e3' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ibilling\\ui\\theme\\ibilling\\automation.tpl',
      1 => 1558778544,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_64ad39d6956a07_88513037 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_213241343064ad39d69467b9_30571338', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/admin.tpl");
}
/* {block "content"} */
class Block_213241343064ad39d69467b9_30571338 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_213241343064ad39d69467b9_30571338',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['Automation'];?>
</h5>

                </div>
                <div class="ibox-content">

                    <form class="form-horizontal" method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/consolekey_regen/">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Security Token'];?>
</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="ckey" value="<?php echo $_smarty_tpl->tpl_vars['_c']->value['ckey'];?>
" disabled>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary"><i class="fa fa-refresh"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Re Generate Key'];?>
</button>
                            </div>
                        </div>
                    </form>

                    <p><?php echo $_smarty_tpl->tpl_vars['_L']->value['to_enable_automation'];?>
</p>
                    <br>
                    <p class="text-primary text-center"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Create the following Cron Job using GET'];?>
</p>
                    <input type="text" class="form-control" value="GET <?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
console/<?php echo $_smarty_tpl->tpl_vars['_c']->value['ckey'];?>
/">
                    <h3 class="text-primary text-center"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Or'];?>
</h3>
                    <p class="text-primary text-center"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Create the following Cron Job using PHP'];?>
</p>
                    <input type="text" class="form-control" value="php-cgi -f <?php echo getcwd();?>
/index.php a=CLI ng=console/<?php echo $_smarty_tpl->tpl_vars['_c']->value['ckey'];?>
/">
                    <h3 class="text-primary text-center"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Or'];?>
</h3>
                    <p class="text-primary text-center"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Create the following Cron Job using WGET'];?>
</p>
                    <input type="text" class="form-control" value="WGET '<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
console/<?php echo $_smarty_tpl->tpl_vars['_c']->value['ckey'];?>
/'">
                    <hr>
                    <h3><?php echo $_smarty_tpl->tpl_vars['_L']->value['Settings'];?>
</h3>
                    <hr>
                    <form method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/automation-post/">

                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="sys_csw" name="accounting_snapshot" value="on" <?php if (($_smarty_tpl->tpl_vars['arcs']->value['accounting_snapshot']) == 'Active') {?>checked<?php }?>> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Generate Daily Accounting Snapshot'];?>

                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="sys_csw" name="recurring_invoice" value="on" <?php if (($_smarty_tpl->tpl_vars['arcs']->value['recurring_invoice']) == 'Active') {?>checked<?php }?>> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Generate Recurring Invoices'];?>

                            </label>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="sys_csw" name="notify" value="on" <?php if (($_smarty_tpl->tpl_vars['arcs']->value['notify']) == 'Active') {?>checked<?php }?>> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Enable Email Notifications'];?>

                            </label>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Send Notifications To'];?>
: </label>
                            <input type="email" class="form-control" id="notifyemail" name="notifyemail" value="<?php echo $_smarty_tpl->tpl_vars['arcs']->value['notifyemail'];?>
">
                        </div>
                        <hr>
                        <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Save Changes'];?>
</button>
                    </form>
                </div>
            </div>



        </div>



    </div>


<?php
}
}
/* {/block "content"} */
}
