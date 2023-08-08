<?php
/* Smarty version 3.1.33, created on 2023-07-11 20:09:04
  from 'C:\xampp\htdocs\ibilling\ui\theme\ibilling\orders_list.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_64ad77980db875_00132563',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c853699b6c88e4795647006bc849eef59f087ab0' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ibilling\\ui\\theme\\ibilling\\orders_list.tpl',
      1 => 1689089943,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_64ad77980db875_00132563 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_182481140864ad77980c5392_69195134', "content");
?>


<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/admin.tpl");
}
/* {block "content"} */
class Block_182481140864ad77980c5392_69195134 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_182481140864ad77980c5392_69195134',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>




    <div class="row">



        <div class="col-md-12">



            <div class="panel panel-default">
                <div class="panel-body">

                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
orders/add/" class="md-btn md-btn-primary"><i class="fa fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add New Order'];?>
</a>


                </div>
                <div class="panel-body">

                    <form class="form-horizontal" method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
customers/list/">
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <span class="fa fa-search"></span>
                                    </div>
                                    <input type="text" name="name" id="foo_filter" class="form-control" placeholder="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Search'];?>
..."/>

                                </div>
                            </div>

                        </div>
                    </form>

                    <table class="table table-bordered table-hover sys_table footable"  data-filter="#foo_filter" data-page-size="50">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Order'];?>
 #</th>
                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Date'];?>
</th>
                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Customer'];?>
</th>
                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total'];?>
</th>
                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Status'];?>
</th>
                            <th class="text-right" data-sort-ignore="true"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
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

                                <td><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
orders/view/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
/"><?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
</a> </td>
                                <td>

                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
orders/view/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
/"><?php echo $_smarty_tpl->tpl_vars['ds']->value['ordernum'];?>
</a>

                                </td>

                                <td>
                                    <?php ob_start();
echo $_smarty_tpl->tpl_vars['ds']->value['date_added'];
$_prefixVariable1 = ob_get_clean();
echo date($_smarty_tpl->tpl_vars['_c']->value['df'],strtotime($_prefixVariable1));?>

                                </td>
                                <td><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
contacts/view/<?php echo $_smarty_tpl->tpl_vars['ds']->value['cid'];?>
/"><?php echo $_smarty_tpl->tpl_vars['ds']->value['cname'];?>
</a> </td>

                                <td class="amount amount-class-for-delete-zero">
                                    <?php echo $_smarty_tpl->tpl_vars['ds']->value['amount'];?>

                                </td>
                                <td>
                                    <?php if ($_smarty_tpl->tpl_vars['ds']->value['status'] == 'Active') {?>
                                        <span class="label label-success">درجریان تولید</span>
                                    <?php } else { ?>
                                        <?php if ($_smarty_tpl->tpl_vars['ds']->value['status'] == 'Cancelled') {?>
                                            <span class="label label-green">اتمام پروژه</span>
                                        <?php } else { ?>
                                            <span class="label label-danger">پیش فاکتور</span>
                                        <?php }?>
                                    <?php }?>
                                </td>
                                <td class="text-right">
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
orders/view/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
/" class="btn btn-primary btn-xs"><i class="fa fa-search"></i> </a>

                                    <a href="#" class="btn btn-danger btn-xs cdelete" id="uid<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
"><i class="fa fa-trash"></i> </a>
                                </td>
                            </tr>

                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                        </tbody>

                        <tfoot>
                        <tr>
                            <td colspan="7">
                                <ul class="pagination">
                                </ul>
                            </td>
                        </tr>
                        </tfoot>

                    </table>

                </div>
            </div>
        </div>






    </div>

    <?php echo '<script'; ?>
>
        function onLoadEditNumber() {
            for (let amountToClassDeleteZero in document.getElementsByClassName("amount-class-for-delete-zero")) {
                console.log(amountToClassDeleteZero.valueOf())
                console.log(amountToClassDeleteZero.get(0).firstChild)
            }
            console.log(document.getElementsByClassName("amount-class-for-delete-zero"))
        }
        onLoadEditNumber()
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "content"} */
}
