{extends file="layouts/admin.tpl"}

{block name="content"}

    <div class="wrapper wrapper-content">
        <div class="row">

            <div class="col-md-8">



                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>{$_L['Add New Order']}</h5>



                    </div>
                    <div class="ibox-content" id="ibox_form">


                        <form class="form-horizontal" id="ib_form">

                            <div class="row">
                                <div class="col-md-12 col-sm-12">

                                    <div class="form-group"><label class="col-md-4 control-label" for="pid">{$_L['Product_Service']}</label>

                                        <div class="col-lg-8">

                                            <select id="pid" name="pid" class="form-control">
                                                <option value="">{$_L['Select']}...</option>
                                                {foreach $p as $ps}
                                                    <option value="{$ps['id']}">{$ps['name']}</option>
                                                {/foreach}

                                            </select>

                                        </div>
                                    </div>

                                    <div class="form-group"><label class="col-md-4 control-label" for="cid">{$_L['Customer']} </label>

                                        <div class="col-lg-8">

                                            <select id="cid" name="cid" class="form-control">
                                                <option value="">{$_L['Select']}...</option>
                                                {foreach $c as $cs}
                                                    <option value="{$cs['id']}"
                                                            {if $p_cid eq ($cs['id'])}selected="selected" {/if}>{$cs['account']} {if $cs['email'] neq ''}- {$cs['email']}{/if}</option>
                                                {/foreach}

                                            </select>

                                        </div>
                                    </div>



                                    <div class="form-group"><label class="col-md-4 control-label" for="status">{$_L['Status']}</label>

                                        <div class="col-lg-8">

                                            <select id="status" name="status" class="form-control">

                                                <option value="Pending">{$_L['Pending']}</option>
                                                <option value="Active">{$_L['Active2']}</option>


                                            </select>

                                        </div>
                                    </div>


                                    <div class="form-group"><label class="col-md-4 control-label" for="cost">{$_L['Price']}</label>

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
                                    <script>
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

                                    </script>
                                    {*                                    <div class="form-group"><label class="col-md-4 control-label" for="payterm">{$_L['Billing Cycle']}</label>*}

                                    {*                                        <div class="col-lg-8">*}

                                    {*                                            <select id="billing_cycle" name="billing_cycle" class="form-control">*}

                                    {*                                                <option value="Free Account">{$_L['Free']}</option>*}
                                    {*                                                <option value="One Time" selected>{$_L['One Time']}</option>*}
                                    {*                                                <option value="week1">{$_L['Week']}</option>*}
                                    {*                                                <option value="weeks2">{$_L['Weeks_2']}</option>*}
                                    {*                                                <option value="Monthly">{$_L['Monthly']}</option>*}
                                    {*                                                <option value="Quarterly">{$_L['Quarterly']}</option>*}
                                    {*                                                <option value="Semi-Annually">{$_L['Semi-Annually']}</option>*}
                                    {*                                                <option value="Annually">{$_L['Annually']}</option>*}
                                    {*                                                <option value="Biennially">{$_L['Biennially']}</option>*}
                                    {*                                                <option value="Triennially">{$_L['Triennially']}</option>*}

                                    {*                                            </select>*}

                                    {*                                        </div>*}
                                    {*                                    </div>*}




                                    {*                                    <div class="form-group"><label class="col-md-4 control-label" for="generate_invoice">{$_L['Generate Invoice']}</label>*}

                                    {*                                        <div class="col-lg-8">*}


                                    {*                                            <input type="checkbox" checked data-toggle="toggle" data-size="small" data-on="{$_L['Yes']}" data-off="{$_L['No']}" id="generate_invoice" name="generate_invoice" value="Yes">*}
                                    <input hidden name="generate_invoice" id="generate_invoice" value="no">

                                    {*                                        </div>*}
                                    {*                                    </div>*}

                                    {*                                    <div class="form-group"><label class="col-md-4 control-label" for="send_email">{$_L['Send Email']}</label>*}

                                    {*                                        <div class="col-lg-8">*}


                                    {*                                            <input type="checkbox" checked data-toggle="toggle" data-size="small" data-on="{$_L['Yes']}" data-off="{$_L['No']}" id="send_email" name="send_email" value="Yes">*}
                                    <input hidden name="send_email" id="send_email" value="no">


                                    {*                                        </div>*}
                                    {*                                    </div>*}


                                </div>

                            </div>


                            <div class="row">
                                <div class="col-md-12">
                                    <hr>
                                    <div class="form-group">
                                        <div class="col-md-offset-4 col-lg-8">

                                            <button class="md-btn md-btn-primary waves-effect waves-light" type="submit" id="submit"><i class="fa fa-check"></i> {$_L['Submit']}</button> | <a href="{$_url}orders/list/">{$_L['Or Cancel']}</a>


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

    <input type="hidden" id="_lan_btn_save" value="{$_L['Save']}">

    <input type="hidden" id="_lan_no_results_found" value="{$_L['No results found']}">

    <script>
        // const change_select = () =>{
        //     let cost = document.getElementById("price");
        //     cost.value = 0
        // }
    </script>

{/block}