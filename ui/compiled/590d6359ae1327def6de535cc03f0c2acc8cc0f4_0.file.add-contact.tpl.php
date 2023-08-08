<?php
/* Smarty version 3.1.33, created on 2023-07-25 20:09:39
  from 'C:\xampp\htdocs\ibilling\ui\theme\ibilling\add-contact.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_64bfecbb582552_44073794',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '590d6359ae1327def6de535cc03f0c2acc8cc0f4' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ibilling\\ui\\theme\\ibilling\\add-contact.tpl',
      1 => 1690299578,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_64bfecbb582552_44073794 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_177067813064bfecbb554345_29622778', "content");
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/admin.tpl");
}
/* {block "content"} */
class Block_177067813064bfecbb554345_29622778 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_177067813064bfecbb554345_29622778',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="wrapper wrapper-content">
        <div class="row">

            <div class="col-md-12">



                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add Contact'];?>
</h5>

                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
contacts/import_csv/" class="btn btn-xs btn-primary btn-rounded pull-right"><i class="fa fa-bars"></i> وارد کردن مخاطبین</a>

                    </div>
                    <div class="ibox-content" id="ibox_form">
                        <div class="alert alert-danger" id="emsg">
                            <span id="emsgbody"></span>
                        </div>

                        <form class="form-horizontal" id="rform">

                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group"><label class="col-md-4 control-label" for="account"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Full Name2'];?>
<small class="red">*</small> </label>

                                        <div class="col-lg-8"><input type="text" id="account" name="account" class="form-control" autofocus>

                                        </div>
                                    </div>

                                    
                                    
                                                                        




                                    <div class="form-group"><label class="col-md-4 control-label" for="email"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Email'];?>
</label>

                                        <div class="col-lg-8"><input type="text" id="email" name="email" class="form-control">

                                        </div>
                                    </div>
                                    <div class="form-group"><label class="col-md-4 control-label" for="phone"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Phone'];?>
</label>

                                        <div class="col-lg-8"><input type="text" id="phone" name="phone" class="form-control">

                                        </div>
                                    </div>
                                    <div class="form-group"><label class="col-md-4 control-label" for="address"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Address'];?>
</label>

                                        <div class="col-lg-8"><input type="text" id="address" name="address" class="form-control">

                                        </div>
                                    </div>


                                    <div class="form-group"><label class="col-md-4 control-label" for="city"><?php echo $_smarty_tpl->tpl_vars['_L']->value['City'];?>
</label>

                                        <div class="col-lg-8"><input type="text" id="city" name="city" class="form-control">

                                        </div>
                                    </div>


                                    <div class="form-group"><label class="col-md-4 control-label" for="zip"><?php echo $_smarty_tpl->tpl_vars['_L']->value['ZIP Postal Code'];?>
 </label>

                                        <div class="col-lg-8"><input type="text" id="zip" name="zip" class="form-control">

                                        </div>
                                    </div>




                                    
                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['fs']->value, 'f');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['f']->value) {
?>
                                        <div class="form-group"><label class="col-md-4 control-label" for="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['f']->value['fieldname'];?>
</label>
                                            <?php if (($_smarty_tpl->tpl_vars['f']->value['fieldtype']) == 'text') {?>


                                                <div class="col-lg-8">
                                                    <input type="text" id="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" class="form-control">
                                                    <?php if (($_smarty_tpl->tpl_vars['f']->value['description']) != '') {?>
                                                        <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['f']->value['description'];?>
</span>
                                                    <?php }?>

                                                </div>

                                            <?php } elseif (($_smarty_tpl->tpl_vars['f']->value['fieldtype']) == 'password') {?>

                                                <div class="col-lg-8">
                                                    <input type="password" id="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" class="form-control">
                                                    <?php if (($_smarty_tpl->tpl_vars['f']->value['description']) != '') {?>
                                                        <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['f']->value['description'];?>
</span>
                                                    <?php }?>
                                                </div>

                                            <?php } elseif (($_smarty_tpl->tpl_vars['f']->value['fieldtype']) == 'dropdown') {?>
                                                <div class="col-lg-8">
                                                    <select id="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" class="form-control">
                                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, explode(',',$_smarty_tpl->tpl_vars['f']->value['fieldoptions']), 'fo');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['fo']->value) {
?>
                                                            <option value="<?php echo $_smarty_tpl->tpl_vars['fo']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['fo']->value;?>
</option>
                                                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                                    </select>
                                                    <?php if (($_smarty_tpl->tpl_vars['f']->value['description']) != '') {?>
                                                        <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['f']->value['description'];?>
</span>
                                                    <?php }?>
                                                </div>


                                            <?php } elseif (($_smarty_tpl->tpl_vars['f']->value['fieldtype']) == 'textarea') {?>

                                                <div class="col-lg-8">
                                                    <textarea id="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['f']->value['id'];?>
" class="form-control" rows="3"></textarea>
                                                    <?php if (($_smarty_tpl->tpl_vars['f']->value['description']) != '') {?>
                                                        <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['f']->value['description'];?>
</span>
                                                    <?php }?>
                                                </div>

                                            <?php } else { ?>
                                            <?php }?>
                                        </div>
                                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>



                                </div>
                                <div class="col-md-6 col-sm-12">


                                    <div class="form-group" style="display: none"><label class="col-md-4 control-label" for="currency"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Currency'];?>
</label>

                                        <div class="col-lg-8">
                                            <select id="currency" name="currency" class="form-control">

                                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['currencies']->value, 'currency');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['currency']->value) {
?>
                                                    <option value="<?php echo $_smarty_tpl->tpl_vars['currency']->value['id'];?>
"
                                                            <?php if ($_smarty_tpl->tpl_vars['_c']->value['home_currency'] == ($_smarty_tpl->tpl_vars['currency']->value['cname'])) {?>selected="selected" <?php }?>><?php echo $_smarty_tpl->tpl_vars['currency']->value['cname'];?>
</option>
                                                    <?php
}
} else {
?>
                                                    <option value="0"><?php echo $_smarty_tpl->tpl_vars['_c']->value['home_currency'];?>
</option>
                                                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group"><label class="col-md-4 control-label" for="group"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Group'];?>
</label>

                                        <div class="col-lg-8">
                                            <select class="form-control" name="group" id="group">
                                                <option value="0"><?php echo $_smarty_tpl->tpl_vars['_L']->value['None'];?>
</option>
                                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['gs']->value, 'g');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['g']->value) {
?>
                                                    <option value="<?php echo $_smarty_tpl->tpl_vars['g']->value['id'];?>
" <?php if ($_smarty_tpl->tpl_vars['g_selected_id']->value == ($_smarty_tpl->tpl_vars['g']->value['id'])) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['g']->value['gname'];?>
</option>
                                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                            </select>
                                            <span class="help-block"><a href="#" id="add_new_group"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add New Group'];?>
</a> </span>
                                        </div>
                                    </div>


















                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="col-md-offset-2 col-lg-10">

                                            <button class="md-btn md-btn-primary waves-effect waves-light" type="submit" id="submit"><i class="fa fa-check"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button> | <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
contacts/list/"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Or Cancel'];?>
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

    <input type="hidden" name="_msg_add_new_group" id="_msg_add_new_group" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Add New Group'];?>
">
    <input type="hidden" name="_msg_group_name" id="_msg_group_name" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Group Name'];?>
">


<?php
}
}
/* {/block "content"} */
}
