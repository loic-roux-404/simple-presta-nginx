{**
* 2010-2019 Tuni-Soft
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
*  @author
*  @copyright 2014-2015
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}

<form method="post" class="dp_ajax_form">
	<input type="hidden" name="id_field" value="{$field->id|intval}">
	<input type="hidden" name="action" value="save_html_settings">
	<div>
		{foreach from=$dp_languages item=lang}
		<div class="dp_html_area">
			<label><img alt="({$lang.iso_code|escape:'htmlall':'UTF-8'})" class="dp_flag" title="{$lang.name|escape:'htmlall':'UTF-8'}" src="{$ps_base_url|escape:'htmlall':'UTF-8'}img/l/{$lang.id_lang|intval}.jpg"/> {$lang.name}</label>
			<textarea class="rte" name="options[description][{$lang.id_lang|intval}]">{include file="string:{$field->description[{$lang.id_lang|intval}]}" inline}</textarea>
		</div>
		{/foreach}
	</div>
	<div class="panel-footer">
		<button type="submit" name="save_options" class="btn btn-default pull-right">
			<i class="material-icons">save</i> {l s='Save' mod='dynamicproduct'}
		</button>
	</div>
</form>