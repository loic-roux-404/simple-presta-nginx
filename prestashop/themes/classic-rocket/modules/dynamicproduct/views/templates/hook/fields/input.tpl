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

<input id="dp_{$field->name|escape:'htmlall':'UTF-8'}"
       data-id="{$field->id|intval}"
       data-type="{$field->type|intval}"
       class="dp_entry dp_input form-control"
       type="text"
       data-name="{$field->name|escape:'htmlall':'UTF-8'}"
       data-label="{$field->label|escape:'htmlall':'UTF-8'}"
       data-min="{$field->settings->min|floatval}"
       data-max="{$field->settings->max|floatval}"
       data-step="{$field->settings->step|floatval}"
       value="{$field->init|floatval}"> {if $field->id_unit}<span class="dp_unit" title="{$field->getUnitName()|escape:'htmlall':'UTF-8'}">{$field->getUnitSymbol()|escape:'htmlall':'UTF-8'}</span>{else}<span class="dp_unit">{$field->getUnitName()|escape:'htmlall':'UTF-8'}</span>{/if} {include file="../tooltip/tooltip.tpl"}