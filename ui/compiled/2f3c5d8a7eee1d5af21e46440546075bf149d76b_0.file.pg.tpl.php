<?php
/* Smarty version 3.1.33, created on 2023-07-05 00:13:42
  from 'C:\xampp\htdocs\ibilling\ui\theme\ibilling\pg.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_64a4766e1d2796_66075671',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2f3c5d8a7eee1d5af21e46440546075bf149d76b' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ibilling\\ui\\theme\\ibilling\\pg.tpl',
      1 => 1558778544,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_64a4766e1d2796_66075671 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_72405403664a4766e1c36f0_98899725', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/admin.tpl");
}
/* {block "content"} */
class Block_72405403664a4766e1c36f0_98899725 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_72405403664a4766e1c36f0_98899725',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <div class="col-md-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['Payment Gateways'];?>
</h5>

                </div>
                <div class="ibox-content">
                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
reorder/pg/" class="btn btn-primary mb-md"><i class="fa fa-arrows"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Reorder Payment Gateways'];?>
</a>
                    <br>
                    <table class="table table-bordered table-hover sys_table">
                        <thead>
                        <tr>

                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Logo'];?>
</th>
                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Gateway Name'];?>
</th>
                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Setting Name'];?>
</th>
                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Value'];?>
</th>
                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Status'];?>
</th>
                            <th class="text-right"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
                        </tr>
                        </thead>
                        <tbody>

                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['d']->value, 'ds');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ds']->value) {
?>
                            <tr>

                                <td>
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/pg-conf/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
/">
                                        <?php if ($_smarty_tpl->tpl_vars['ds']->value['logo'] != '') {?>
                                            <img src="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;
echo $_smarty_tpl->tpl_vars['ds']->value['logo'];?>
">
                                        <?php } else { ?>
                                            <img src="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;?>
ui/lib/imgs/pg/<?php echo $_smarty_tpl->tpl_vars['ds']->value['processor'];?>
.png">
                                        <?php }?>

                                    </a>
                                </td>
                                <td><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/pg-conf/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
/"><?php echo $_smarty_tpl->tpl_vars['ds']->value['name'];?>
</a> </td>
                                <td><?php echo $_smarty_tpl->tpl_vars['ds']->value['settings'];?>
</td>
                                <td><?php echo $_smarty_tpl->tpl_vars['ds']->value['value'];?>
</td>

                                <td>
                                    <?php if ($_smarty_tpl->tpl_vars['ds']->value['status'] == 'Inactive') {?>
                                        <span class="label label-danger"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Inactive'];?>
</span>
                                    <?php } else { ?>
                                        <span class="label label-success"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Active'];?>
</span>
                                    <?php }?>

                                </td>

                                <td class="text-right">

                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/pg-conf/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
/" class="btn btn-info btn-sm"><i class="fa fa-pencil-square-o"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</a>

                                </td>
                            </tr>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                        </tbody>
                    </table>

                </div>
            </div>



        </div>



    </div>
<?php
}
}
/* {/block "content"} */
}
