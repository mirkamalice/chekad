<?php
/* Smarty version 3.1.33, created on 2023-07-26 10:21:02
  from 'C:\xampp\htdocs\ibilling\ui\theme\ibilling\orders_add.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_64c0b4464686f8_68225193',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '82db091c89ee616ddab76a7fc3d580fe0d70f4f7' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ibilling\\ui\\theme\\ibilling\\orders_add.tpl',
      1 => 1690350659,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_64c0b4464686f8_68225193 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_138847080564c0b44645ad32_98521932', "content");
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/admin.tpl");
}
/* {block "content"} */
class Block_138847080564c0b44645ad32_98521932 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_138847080564c0b44645ad32_98521932',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="wrapper wrapper-content">
        <div class="row">

            <div class="col-md-8">



                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add New Order'];?>
</h5>



                    </div>
                    <div class="ibox-content" id="ibox_form">


                        <form class="form-horizontal" id="ib_form">

                            <div class="row">
                                <div class="col-md-12 col-sm-12">

                                    <div class="form-group"><label class="col-md-4 control-label" for="pid"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Product_Service'];?>
</label>

                                        <div class="col-lg-8">

                                            <select id="pid" name="pid" class="form-control">
                                                <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['Select'];?>
...</option>
                                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['p']->value, 'ps');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ps']->value) {
?>
                                                    <option value="<?php echo $_smarty_tpl->tpl_vars['ps']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['ps']->value['name'];?>
</option>
                                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                            </select>

                                        </div>
                                    </div>

                                    <div class="form-group"><label class="col-md-4 control-label" for="cid"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Customer'];?>
 </label>

                                        <div class="col-lg-8">

                                            <select id="cid" name="cid" class="form-control">
                                                <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['Select'];?>
...</option>
                                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['c']->value, 'cs');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['cs']->value) {
?>
                                                    <option value="<?php echo $_smarty_tpl->tpl_vars['cs']->value['id'];?>
"
                                                            <?php if ($_smarty_tpl->tpl_vars['p_cid']->value == ($_smarty_tpl->tpl_vars['cs']->value['id'])) {?>selected="selected" <?php }?>><?php echo $_smarty_tpl->tpl_vars['cs']->value['account'];?>
 <?php if ($_smarty_tpl->tpl_vars['cs']->value['email'] != '') {?>- <?php echo $_smarty_tpl->tpl_vars['cs']->value['email'];
}?></option>
                                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                            </select>

                                        </div>
                                    </div>



                                    <div class="form-group"><label class="col-md-4 control-label" for="status"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Status'];?>
</label>

                                        <div class="col-lg-8">

                                            <select id="status" name="status" class="form-control">

                                                <option value="Pending"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Pending'];?>
</option>
                                                <option value="Active"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Active2'];?>
</option>


                                            </select>

                                        </div>
                                    </div>


                                    <div class="form-group"><label class="col-md-4 control-label" for="cost"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Price'];?>
</label>

                                        <div class="col-lg-4 col-md-4 col-sm-8"><input type="text" id="cost" name="cost" class="form-control amount" onkeyup="change_total_cost()">

                                        </div>
                                    </div>

                                    <div class="form-group"><label class="col-md-4 control-label" for="quantity">تعداد</label>

                                        <div class="col-lg-4 col-md-4 col-sm-8"><input type="number" id="quantity" name="quantity" class="form-control" onkeyup="change_total_cost()">

                                        </div>
                                    </div>

                                    <div class="form-group"><label class="col-md-4 control-label" for="price">قیمت کل</label>

                                        <div class="col-lg-4 col-md-4 col-sm-8"><input type="text" id="price" name="price" class="form-control amount" hidden>

                                        </div>
                                    </div>
                                    <?php echo '<script'; ?>
>
                                        const change_total_cost = () =>{
                                        let cost = document.getElementById("cost");
                                        let quantity = Number(document.getElementById("quantity").value);
                                        let total_price = document.getElementById("price");
                                        cost = cost.value.match(/\d+/g);
                                        console.log(cost)
                                        console.log(cost.length)
                                            var temp = ""
                                            for (let i = 0; i < cost.length; i++) {
                                                temp += cost[i];
                                            }
                                            total_price.value = temp * quantity;
                                            // total_price.value = cost[0] * quantity;
                                        }

                                    <?php echo '</script'; ?>
>
                                    
                                    
                                    
                                                                                                                                                                                                                                                                                                                                                                        
                                    
                                                                        



                                    
                                    

                                                                        <input hidden name="generate_invoice" id="generate_invoice" value="no">

                                                                        
                                    
                                    

                                                                        <input hidden name="send_email" id="send_email" value="no">


                                                                        

                                </div>

                            </div>


                            <div class="row">
                                <div class="col-md-12">
                                    <hr>
                                    <div class="form-group">
                                        <div class="col-md-offset-4 col-lg-8">

                                            <button class="md-btn md-btn-primary waves-effect waves-light" type="submit" id="submit"><i class="fa fa-check"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Submit'];?>
</button> | <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
orders/list/"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Or Cancel'];?>
</a>


                                        </div>
                                    </div>
                                </div>
                            </div>


                        </form>
                    </div>
                </div>
            </div>
        </div>


    </div>

    <input type="hidden" id="_lan_btn_save" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
">

    <input type="hidden" id="_lan_no_results_found" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['No results found'];?>
">

    <?php echo '<script'; ?>
>
        // const change_select = () =>{
        //     let cost = document.getElementById("price");
        //     cost.value = 0
        // }
    <?php echo '</script'; ?>
>

<?php
}
}
/* {/block "content"} */
}
