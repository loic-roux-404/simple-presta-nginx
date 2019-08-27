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

<div class="dp_image_forms">
    {if is_array($dp_image_fields)}
        {foreach from=$dp_image_fields item=field}
            {if !$field->active}{continue}{/if}
            <form action="{$dp_uploader|escape:'htmlall':'UTF-8'}"
                  data-id_field="{$field->id|intval}"
                  method="post"
                  class="input-group dp_uploader_{$field->id|intval}"
                  enctype="multipart/form-data"
                  target="dp_iframe_{$field->id|intval}">
                <input type="hidden" name="max" value="{$field->settings->max_size|floatval}">
                <input type="hidden" name="min_width" value="{$field->settings->min_width|intval}">
                <input type="hidden" name="min_height" value="{$field->settings->min_height|intval}">
                <input type="hidden" name="ajax" value="1">
                <input type="hidden" name="action" value="upload_image">
                <input type="hidden" name="id_field" value="{$field->id|intval}">
                <div class="custom-file" data-id_field="{$field->id|intval}">
                    <input type="file" name="dp_file" class="custom-file-input dp_file_input_{$field->id|intval}" style="opacity: 0">
                </div>
                <div class="input-group-append">
                    <span class="input-group-text" id="">{l s="Upload" mod='dynamicproduct'}</span>
                </div>
                <input type="submit" name="btn btn-light dp_image_upload" value="upload">
            </form>
            <iframe id="dp_iframe_{$field->id|intval}" name="dp_iframe_{$field->id|intval}"></iframe>
        {/foreach}
    {/if}
</div>