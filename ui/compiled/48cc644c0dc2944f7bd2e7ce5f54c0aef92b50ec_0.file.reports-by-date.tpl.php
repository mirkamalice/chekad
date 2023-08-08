<?php
/* Smarty version 3.1.33, created on 2023-07-04 23:29:45
  from 'C:\xampp\htdocs\ibilling\ui\theme\ibilling\reports-by-date.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_64a46c219fe583_99284360',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '48cc644c0dc2944f7bd2e7ce5f54c0aef92b50ec' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ibilling\\ui\\theme\\ibilling\\reports-by-date.tpl',
      1 => 1558778544,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_64a46c219fe583_99284360 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_8734085964a46c219e7908_91275409', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/admin.tpl");
}
/* {block "content"} */
class Block_8734085964a46c219e7908_91275409 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_8734085964a46c219e7908_91275409',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">


        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['Reports by Date'];?>
 </h5>

                </div>
                <div class="ibox-content">

                    <div id="dpx"></div>

                    <div id="result">
                        <h4><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total Income'];?>
: <?php echo $_smarty_tpl->tpl_vars['_c']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['cr']->value,2,$_smarty_tpl->tpl_vars['_c']->value['dec_point'],$_smarty_tpl->tpl_vars['_c']->value['thousands_sep']);?>
</h4>
                        <h4><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total Expense'];?>
: <?php echo $_smarty_tpl->tpl_vars['_c']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['dr']->value,2,$_smarty_tpl->tpl_vars['_c']->value['dec_point'],$_smarty_tpl->tpl_vars['_c']->value['thousands_sep']);?>
</h4>

                        <hr>
                        <h4><?php echo $_smarty_tpl->tpl_vars['_L']->value['All Transactions at Date'];?>
: <span id="tdate"><?php echo date($_smarty_tpl->tpl_vars['_c']->value['df'],strtotime($_smarty_tpl->tpl_vars['mdate']->value));?>
</span> </h4>
                        <hr>
                        <table class="table table-striped table-bordered table-responsive">

                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Account'];?>
</th>
                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</th>
                            <th class="hidden-xs hidden-sm"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Category'];?>
</th>
                            <th class="text-right"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Amount'];?>
</th>
                            <th class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Payer'];?>
</th>
                            <th class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Payee'];?>
</th>
                            <th class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Method'];?>
</th>
                            <th class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Ref'];?>
</th>
                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Description'];?>
</th>
                            <th class="text-right"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Dr'];?>
</th>
                            <th class="text-right"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Cr'];?>
</th>
                            <th class="text-right"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Balance'];?>
</th>

                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['d']->value, 'ds');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['ds']->value) {
?>
                                <tr>

                                    <td><?php echo $_smarty_tpl->tpl_vars['ds']->value['account'];?>
</td>
                                                                        <td><?php echo ib_lan_get_line($_smarty_tpl->tpl_vars['ds']->value['type']);?>
</td>
                                    <td><?php if ($_smarty_tpl->tpl_vars['ds']->value['category'] == 'Uncategorized') {
echo $_smarty_tpl->tpl_vars['_L']->value['Uncategorized'];?>
 <?php } else { ?> <?php echo $_smarty_tpl->tpl_vars['ds']->value['category'];?>
 <?php }?></td>
                                    <td class="text-right"><?php echo $_smarty_tpl->tpl_vars['_c']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['ds']->value['amount'],2,$_smarty_tpl->tpl_vars['_c']->value['dec_point'],$_smarty_tpl->tpl_vars['_c']->value['thousands_sep']);?>
</td>
                                    <td class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['ds']->value['payer'];?>
</td>
                                    <td class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['ds']->value['payee'];?>
</td>
                                    <td class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['ds']->value['method'];?>
</td>
                                    <td class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['ds']->value['ref'];?>
</td>
                                    <td><?php echo $_smarty_tpl->tpl_vars['ds']->value['description'];?>
</td>
                                    <td class="text-right"><?php echo $_smarty_tpl->tpl_vars['_c']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['ds']->value['dr'],2,$_smarty_tpl->tpl_vars['_c']->value['dec_point'],$_smarty_tpl->tpl_vars['_c']->value['thousands_sep']);?>
</td>
                                    <td class="text-right"><?php echo $_smarty_tpl->tpl_vars['_c']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['ds']->value['cr'],2,$_smarty_tpl->tpl_vars['_c']->value['dec_point'],$_smarty_tpl->tpl_vars['_c']->value['thousands_sep']);?>
</td>
                                    <td class="text-right"><span <?php if ($_smarty_tpl->tpl_vars['ds']->value['bal'] < 0) {?>class="text-red"<?php }?>><?php echo $_smarty_tpl->tpl_vars['_c']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['ds']->value['bal'],2,$_smarty_tpl->tpl_vars['_c']->value['dec_point'],$_smarty_tpl->tpl_vars['_c']->value['thousands_sep']);?>
</span></td>

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



        <!-- Widget-2 end-->
    </div>


    <input type="hidden" id="_lan_i18n" value="<?php echo Ib_I18n::get_code($_smarty_tpl->tpl_vars['_c']->value['language']);?>
">
<?php
}
}
/* {/block "content"} */
}
