{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
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
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{block name='address_selector_blocks'}
    {foreach $addresses as $address}
        <article
                class="address-item col-12 col-md-6 mb-3{if $address.id == $selected} selected{/if}"
                id="{$name|classname}-address-{$address.id}"
        >
            <label for="r-{$name|classname}-address-{$address.id}"
                   class="card mb-0 border">
                <div class="card-header">
                    <div class="custom-control custom-radio">
                        <input
                                type="radio"
                                name="{$name}"
                                value="{$address.id}"
                                id="r-{$name|classname}-address-{$address.id}"
                                class="custom-control-input"
                                {if $address.id == $selected}checked{/if}
                        >
                        <span class="custom-control-label d-inline-block font-weight-bold">{$address.alias}</span>
                    </div>

                </div>
                <div class="card-body small border-bottom-0">
                    {$address.formatted nofilter}
                </div>
                {if $interactive}
                    <div class="card-footer small p-0 border-top-0">
                        <div class="d-table h-100 w-100 text-center">
                            <div class="d-table-cell align-middle p-3 border-right w-50">
                                <a
                                        class="edit-address primary-hover"
                                        data-link-action="edit-address"
                                        href="{url entity='order' params=['id_address' => $address.id, 'editAddress' => $type, 'token' => $token]}"
                                >
                                    <i class="material-icons edit">&#xE254;</i>{l s='Edit' d='Shop.Theme.Actions'}
                                </a>
                            </div>
                            <div class="d-table-cell align-middle p-3 w-50">

                                <a
                                        class="delete-address danger-hover"
                                        data-link-action="delete-address"
                                        href="{url entity='order' params=['id_address' => $address.id, 'deleteAddress' => true, 'token' => $token]}"
                                >
                                    <i class="material-icons delete">&#xE872;</i>{l s='Delete' d='Shop.Theme.Actions'}
                                </a>
                            </div>
                        </div>
                    </div>
                {/if}

            </label>
        </article>
    {/foreach}
    {if $interactive}
        <p>
            <button class="ps-hidden-by-js form-control-submit center-block"
                    type="submit">{l s='Save' d='Shop.Theme.Actions'}</button>
        </p>
    {/if}
{/block}
