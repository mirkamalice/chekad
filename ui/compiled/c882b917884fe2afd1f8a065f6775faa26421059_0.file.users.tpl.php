<?php
/* Smarty version 3.1.33, created on 2023-07-05 00:13:24
  from 'C:\xampp\htdocs\ibilling\ui\theme\ibilling\users.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_64a4765cba3e07_03303185',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c882b917884fe2afd1f8a065f6775faa26421059' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ibilling\\ui\\theme\\ibilling\\users.tpl',
      1 => 1558778544,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_64a4765cba3e07_03303185 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_55680246964a4765cb92412_99529948', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/admin.tpl");
}
/* {block "content"} */
class Block_55680246964a4765cb92412_99529948 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_55680246964a4765cb92412_99529948',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage_Users'];?>
</h5>

                </div>
                <div class="ibox-content">
                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/users-add" class="btn btn-primary"><i class="fa fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add_New_User'];?>
</a>
                    <br>
                    <br>
                    <table class="table table-striped table-bordered table-responsive">
                        <th style="width: 60px;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Avatar'];?>
</th>
                        <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Username'];?>
</th>
                        <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Full_Name'];?>
</th>
                        <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</th>
                        <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['d']->value, 'ds');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ds']->value) {
?>
                            <tr>
                                <td><?php if ($_smarty_tpl->tpl_vars['ds']->value['img'] == 'gravatar') {?>
                                        <img src="http://www.gravatar.com/avatar/<?php echo md5(($_smarty_tpl->tpl_vars['ds']->value['username']));?>
?s=60" class="img-circle" alt="<?php echo $_smarty_tpl->tpl_vars['user']->value['fullname'];?>
">
                                    <?php } elseif ($_smarty_tpl->tpl_vars['ds']->value['img'] == '') {?>
                                        <img src="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;?>
ui/lib/imgs/default-user-avatar.png" style="max-height: 60px;" alt="">
                                    <?php } else { ?>
                                        <img src="<?php echo $_smarty_tpl->tpl_vars['ds']->value['img'];?>
" class="img-circle" style="max-height: 60px;" alt="<?php echo $_smarty_tpl->tpl_vars['ds']->value['fullname'];?>
">
                                    <?php }?></td>
                                <td><?php echo $_smarty_tpl->tpl_vars['ds']->value['username'];?>
</td>
                                <td><?php echo $_smarty_tpl->tpl_vars['ds']->value['fullname'];?>
</td>
                                <td><?php echo ib_lan_get_line($_smarty_tpl->tpl_vars['ds']->value['user_type']);?>
</td>
                                <td>
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/users-edit/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" class="btn btn-inverse"><i class="fa fa-pencil"></i> </a>
                                    <?php if (($_smarty_tpl->tpl_vars['_user']->value['username']) != ($_smarty_tpl->tpl_vars['ds']->value['username'])) {?>
                                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/users-delete/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
" class="btn btn-danger cdelete"><i class="fa fa-trash"></i> </a>
                                    <?php }?>
                                </td>
                            </tr>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>


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
