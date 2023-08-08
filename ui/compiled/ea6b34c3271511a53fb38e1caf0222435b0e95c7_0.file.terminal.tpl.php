<?php
/* Smarty version 3.1.33, created on 2023-07-08 13:51:58
  from 'C:\xampp\htdocs\ibilling\ui\theme\ibilling\terminal.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_64a92ab636bf87_04889143',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ea6b34c3271511a53fb38e1caf0222435b0e95c7' => 
    array (
      0 => 'C:\\xampp\\htdocs\\ibilling\\ui\\theme\\ibilling\\terminal.tpl',
      1 => 1558778544,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_64a92ab636bf87_04889143 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_167410261664a92ab6369202_41460873', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/admin.tpl");
}
/* {block "content"} */
class Block_167410261664a92ab6369202_41460873 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_167410261664a92ab6369202_41460873',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-12">

            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5><?php echo $_smarty_tpl->tpl_vars['_L']->value['Terminal'];?>
</h5>

                </div>
                <div class="ibox-content">

                    <div id="terminal">

                        <div id="output"></div>

                        <div id="command">
                            <div id="prompt">&gt;</div>
                            <input type="text" autocapitalize="off">
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
