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
{extends file=$layout}

{block name='content'}
    <section id="main">
        <div class="cart-grid row">

            <!-- Left Block: cart product informations & shpping -->
            <div class="cart-grid-body col-12 col-lg-8">

                <!-- cart products detailed -->
                <div class="card cart-container shadow mb-spacer">
                    <div class="card-header">
                        <h1 class="display-1 pl-3">{l s='Shopping Cart' d='Shop.Theme.Checkout'}</h1>
                    </div>
                    <div class="card-body cart__card-body js-cart__card-body">

                        {block name='cart_overview'}
                            {include file='checkout/_partials/cart-detailed.tpl' cart=$cart}
                        {/block}

                        <div class="cart__card-loader d-none">
                            <div class="spinner-border" role="status"><span
                                        class="sr-only">{l s='Loading...' d='Shop.Theme.Global'}</span>
                            </div>
                        </div>
                    </div>
                </div>

                {block name='continue_shopping'}
                    <a class="label btn btn-outline-primary li-d li-d-reverse"
                       href="{$urls.pages.index}">
                        {l s='Continue shopping' d='Shop.Theme.Actions'}
                    </a>
                {/block}

                <!-- shipping informations -->
                {block name='hook_shopping_cart_footer'}
                    {hook h='displayShoppingCartFooter'}
                {/block}
            </div>

            <!-- Right Block: cart subtotal & cart total -->
            <div class="cart-grid-right col-12 col-lg-4 mt-3 mt-lg-0">

                {block name='cart_summary'}
                    <div class="card cart-summary shadow">
                        <div class="card-body">
                            {block name='hook_shopping_cart'}
                                {hook h='displayShoppingCart'}
                            {/block}

                            {block name='cart_totals'}
                                {include file='checkout/_partials/cart-detailed-totals.tpl' cart=$cart}
                            {/block}
                        </div>
                        <div class="card-footer">
                            {block name='cart_actions'}
                                {include file='checkout/_partials/cart-detailed-actions.tpl' cart=$cart}
                            {/block}
                        </div>

                    </div>
                {/block}

                {block name='hook_reassurance'}
                    {hook h='displayReassurance'}
                {/block}

            </div>

        </div>
    </section>
{/block}
