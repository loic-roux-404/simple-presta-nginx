{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2019 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}



<div id="dp_{$field->name|escape:'htmlall':'UTF-8'}"
    data-type="{$field->type|intval}"
    data-id="{$field->id|intval}"
    class="form-inline dp_entry"
    data-name="{$field->name|escape:'htmlall':'UTF-8'}"
    data-label="{$field->label|escape:'htmlall':'UTF-8'}">

    {foreach from=$field->options item=radio_option}
        <div class="custom-control custom-radio mr-3">
            <input type="radio" class="custom-control-input"
                    id="{$field->name|escape:'htmlall':'UTF-8'}_{$radio_option->id|intval}"
                    name="{$field->name|escape:'htmlall':'UTF-8'}"
                    data-id="{$radio_option->id|intval}"
                    data-label="{$radio_option->label|escape:'htmlall':'UTF-8'}"
                    value="{$radio_option->value|escape:'htmlall':'UTF-8'}"
                    {if $radio_option->is_default}checked="checked"{/if}/>

            <label for="{$field->name|escape:'htmlall':'UTF-8'}_{$radio_option->id|intval}"
                class="custom-control-label">
                {$radio_option->label|escape:'htmlall':'UTF-8'}
            </label>
        </div>
    {/foreach} 

</div>
 {include file="../tooltip/tooltip.tpl"}




