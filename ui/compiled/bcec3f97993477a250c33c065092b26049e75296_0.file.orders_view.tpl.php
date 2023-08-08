<?php
/* Smarty version 3.1.33, created on 2023-07-11 19:10:43
  from 'C:\xampp\htdocs\ibilling\ui\theme\ibilling\orders_view.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_64ad69eb1ede50_17020603',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bcec3f97993477a250c33c065092b26049e75296' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ibilling\\ui\\theme\\ibilling\\orders_view.tpl',
      1 => 1689086225,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_64ad69eb1ede50_17020603 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_171336144164ad69eb1e0aa1_10617852', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/admin.tpl");
}
/* {block "content"} */
class Block_171336144164ad69eb1e0aa1_10617852 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_171336144164ad69eb1e0aa1_10617852',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">

                <div class="panel-body">

                    <h3 style="color: #2f96f3;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Order'];?>
 # <?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
</h3>
                    <hr>

                    <?php if (has_access($_smarty_tpl->tpl_vars['user']->value->roleid,'orders','edit')) {?>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
orders/set/<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
/Active/" class="md-btn  md-btn-primary waves-effect waves-light"><i class="fa fa-check"></i>  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Accept2'];?>
 </a>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
orders/set/<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
/Pending/" class="md-btn md-btn-warning waves-effect waves-light"><i class="fa fa-clock-o"></i>  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Pending'];?>
 </a>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
orders/set/<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
/Cancelled/" class="md-btn md-btn-success waves-effect waves-light"><i class="fa fa-check-circle-o"></i>  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Cancel2'];?>
 </a>
                    <?php }?>

                    <?php if (has_access($_smarty_tpl->tpl_vars['user']->value->roleid,'orders','delete')) {?>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
delete/order/<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
/" class="md-btn md-btn-danger waves-effect waves-light"><i class="fa fa-trash"></i>  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
 </a>
                    <?php }?>






                    <hr>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="well">
                                <h4><?php echo $_smarty_tpl->tpl_vars['_L']->value['Order Number'];?>
 - <?php echo $_smarty_tpl->tpl_vars['order']->value->ordernum;?>
</h4>
                                <p><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Customer'];?>
: </strong> <?php echo $_smarty_tpl->tpl_vars['order']->value->cname;?>
</p>
                                <p><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Product_Service'];?>
: </strong> <?php echo $_smarty_tpl->tpl_vars['order']->value->stitle;?>
</p>
                                <p><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Amount'];?>
: </strong> <span class="amount"><?php echo $_smarty_tpl->tpl_vars['order']->value->amount;?>
</span> </p>
                                <p><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Date'];?>
: </strong><?php echo date($_smarty_tpl->tpl_vars['_c']->value['df'],strtotime($_smarty_tpl->tpl_vars['order']->value->date_added));?>
</p>
                                <p><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Status'];?>
: </strong>


                                    <?php if ($_smarty_tpl->tpl_vars['order']->value->status == 'Active') {?>
                                        <span class="label label-success">درجریان تولید</span>
                                    <?php } else { ?>
                                        <?php if ($_smarty_tpl->tpl_vars['order']->value->status == 'Cancelled') {?>
                                            <span class="label label-green">اتمام پروژه</span>
                                        <?php } else { ?>
                                            <span class="label label-danger">پیش فاکتور</span>
                                        <?php }?>
                                    <?php }?>
                                </p>
                                <?php if ($_smarty_tpl->tpl_vars['order']->value->iid != '0') {?>
                                    <p><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice'];?>
: </strong> <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/view/<?php echo $_smarty_tpl->tpl_vars['order']->value->iid;?>
/"><?php echo $_smarty_tpl->tpl_vars['order']->value->iid;?>
</a> </p>
                                <?php }?>



                            </div>
                        </div>






                    </div>



                </div>
            </div>
        </div>



    </div>

<?php
}
}
/* {/block "content"} */
}
