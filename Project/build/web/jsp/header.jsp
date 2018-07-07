<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<header class="header-container">
    <div class="header-top">
        <div class="container">
            <div class="row"> 
                <!-- Header Language -->
                <div class="col-xs-6">
                    <div class="welcome-msg hidden-xs"> Chào chào mừng bạn tới Polo store </div>
                </div>
                <div class="col-xs-6"> 
                    <!-- Header Top Links -->
                    <div class="toplinks">
                        <div class="links">
                            <div class="register"><a title="Register" href="/account/register"><span  class="hidden-xs">Đăng kí</span></a></div>
                            <div class="login"><a title="Login" href="/account/login"><span  class="hidden-xs">Đăng nhập</span></a></div>
                        </div>
                    </div>
                    <!-- End Header Top Links --> 
                </div>
            </div>
        </div>
    </div>
    <div class="header container">
        <div class="row">
            <div class="col-lg-2 col-sm-3 col-md-2"> 
                <!-- Header Logo --> 
                <a class="logo" href="index.htm">
                    <img alt="polo-theme" src="../jsp/images/logo.png" />
                </a>
                <!-- End Header Logo --> 
            </div>
            <div class="col-lg-8 col-sm-6 col-md-8"> 
                <!-- Search-col -->
                <div class="search-box">
                    <form action="/search" method="get" id="search_mini_form">
                        <input type="text" placeholder="Tìm kiếm" value="" maxlength="70" class="" name="query" id="search">
                        <button type="submit" id="submit-button" class="search-btn-bg"><span style="white-space: nowrap;">Tìm kiếm</span></button>
                    </form>
                </div>
                <!-- End Search-col --> 
            </div>
            <!-- Top Cart -->
            <div class="col-lg-2 col-sm-3 col-md-2">
                <div class="top-cart-contain">
                    <div class="mini-cart" id="open_shopping_cart">
                        <div data-hover="dropdown" class="basket dropdown-toggle"> <a href="/cart"> <i class="glyphicon glyphicon-shopping-cart"></i>
                                <div class="cart-box"><span class="title">Giỏ hàng</span><span id="cart-total">(2) </span></div>
                            </a>
                        </div>
                        <div>
                            <div class="top-cart-content arrow_box">
                                <ul id="cart-sidebar" class="mini-products-list shopping_cart">
                                    <div class="block-subtitle">Không có sản phẩm nào trong giỏ hàng.</div>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div id="ajaxconfig_info"> <a href="#/"></a>
                        <input value="" type="hidden">
                        <input id="enable_module" value="1" type="hidden">
                        <input class="effect_to_cart" value="1" type="hidden">
                        <input class="title_shopping_cart" value="Giỏ hàng" type="hidden">
                    </div>
                </div>
            </div>
            <!-- End Top Cart --> 
        </div>
    </div>
</header>