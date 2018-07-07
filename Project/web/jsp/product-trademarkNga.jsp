<%-- 
    Document   : product
    Created on : Jul 6, 2018, 4:31:47 PM
    Author     : ScorPius 31
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="no-js" lang="vi">
    <jsp:include flush="true" page="head.jsp"/>
    <body  class="" >  
        <div class="page"> 
            <!-- Header --> 
            <jsp:include flush="true" page="header.jsp"/>
            <!-- end header --> 

            <!-- Navbar -->
            <jsp:include flush="true" page="nav.jsp"/>
            <!-- end nav -->

            <div class="breadcrumbs">
                <div class="container">
                    <div class="row">
                        <ul>				
                            <li class="home"> <a href="/" title="Trang chủ">Trang chủ</a><span>—›</span></li>				
                            <li ><strong>Tất cả sản phẩm</strong></li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Two columns content -->
            <div class="main-container col2-left-layout">
                <div class="main container">
                    <div class="row">
                        <section class="col-main col-sm-9 col-sm-push-3">
                            <div class="category-description std">
                                <div class="slider-items-products">
                                    <div id="category-desc-slider" class="product-flexslider hidden-buttons">
                                        <div class="slider-items slider-width-col1"> 
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="category-title">
                                <h1>Tất cả sản phẩm</h1>
                            </div>
                            <div class="category-products">

                                <div class="toolbar">
                                    <div class="sorter">
                                        <div class="view-mode"> 
                                            <span title="Grid" class="button button-active button-grid"></span>
                                            <a href="?view=list" title="List" class="button button-list"></a> 
                                        </div>
                                    </div>
                                    <div id="sort-by">
                                        <label class="left">Lọc theo: </label>
                                        <select name="sortBy" id="sortBy" class="selectBox" style="padding: 0px 10px; height: 30px;">
                                            <option selected value="default">Mặc định</option>
                                            <option value="alpha-asc">A &rarr; Z</option>
                                            <option value="alpha-desc">Z &rarr; A</option>
                                            <option value="price-asc" >Giá tăng dần</option>
                                            <option value="price-desc">Giá giảm dần</option>
                                            <option value="created-desc">Hàng mới nhất</option>
                                            <option value="created-asc">Hàng cũ nhất</option>
                                        </select>
                                        <script>
                                            Bizweb.queryParams = {};
                                            if (location.search.length) {
                                                for (var aKeyValue, i = 0, aCouples = location.search.substr(1).split('&'); i < aCouples.length; i++) {
                                                    aKeyValue = aCouples[i].split('=');
                                                    if (aKeyValue.length > 1) {
                                                        Bizweb.queryParams[decodeURIComponent(aKeyValue[0])] = decodeURIComponent(aKeyValue[1]);
                                                    }
                                                }
                                            }

                                            $(function () {
                                                $('#sortBy')
                                                        // select the current sort order
                                                        .val('default')
                                                        .bind('change', function () {
                                                            Bizweb.queryParams.sortby = jQuery(this).val();
                                                            location.search = jQuery.param(Bizweb.queryParams).replace(/\+/g, '%20');
                                                        });
                                            });
                                        </script>
                                        <a class="button-asc left" href="#" title="Set Descending Direction"><span class="glyphicon glyphicon-arrow-up"></span></a> 
                                    </div>
                                </div>
                                <ul class="products-grid hidden_btn_cart">
                                    <c:forEach items="${listtrademarkNga}" var="pro">
                                        <li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
                                            <div class="col-item">
                                                <div class="product-image-area"> 
                                                    <a class="product-image" title="${pro.productName}" href=""> 
                                                        <img src="${pro.productImage}" class="img-responsive" alt="${pro.productName}" /> 
                                                    </a>
                                                    <form action="" method="post" class="variants " id="product-actions-893897" enctype="multipart/form-data">
                                                        <div class="hover_fly">
                                                            <a class="exclusive ajax_add_to_cart_button btn-cart add_to_cart" href="#" title="Cho vào giỏ hàng">
                                                                <div><i class="icon-shopping-cart"></i><span>Cho vào giỏ hàng</span></div>
                                                            </a>
                                                            <input type="hidden" name="variantId" value="1360784" />
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="info">
                                                    <div class="info-inner">
                                                        <div class="item-title"> <h3><a title="${pro.productName}" href="">${pro.productName}</a></h3></div>
                                                        <!--item-title-->
                                                        <div class="item-content">
                                                            <div class="price-box">
                                                                <p class="special-price"> <span class="price">${pro.price}</span> </p>
                                                            </div>
                                                        </div>
                                                        <!--item-content--> 
                                                    </div>
                                                    <!--info-inner-->
                                                    <form action="" method="post" class="variants " id="product-actions-893897" enctype="multipart/form-data">
                                                        <div class="actions">
                                                            <input type="hidden" name="variantId" value="1360784" />
                                                            <button class="button btn-cart btn-cart add_to_cart" title="Cho vào giỏ hàng" type="button"><span>Cho vào giỏ hàng</span></button>
                                                        </div>
                                                    </form>
                                                    <div class="clearfix"> </div>
                                                </div>
                                            </div>
                                        </li>
                                    </c:forEach>                          
                                </ul>
                                <div class="toolbar">
                                    <div class="pager">
                                        <div class="pages">
                                            <label>Trang:</label>
                                            <ul class="pagination">
                                                <li class="active"><a href="#" style="pointer-events:none">1</a></li>
                                                <li><a href="/collections/all?page=2">2</a></li>
                                                <li><a href="/collections/all?page=3">3</a></li>
                                                <li><a href="/collections/all?page=2" title="2">&raquo;</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <jsp:include flush="true" page="sidebar.jsp"/>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <jsp:include flush="true" page="footer.jsp"/>
            <!-- End Footer -->
        </div>
        <script type="text/javascript">
            Bizweb.updateCartFromForm = function (cart, cart_summary_id, cart_count_id) {

                if ((typeof cart_summary_id) === 'string') {
                    var cart_summary = jQuery(cart_summary_id);
                    if (cart_summary.length) {
                        // Start from scratch.
                        cart_summary.empty();
                        // Pull it all out.        
                        jQuery.each(cart, function (key, value) {
                            if (key === 'items') {

                                var table = jQuery(cart_summary_id);
                                if (value.length) {

                                    jQuery('<div class="block-subtitle">Sản phẩm đã cho vào giỏ hàng</div>').appendTo(table)
                                    jQuery.each(value, function (i, item) {


                                        if (item.image != null) {
                                            var src = Bizweb.resizeImage(item.image, 'small');
                                        } else {
                                            var src = 'http://bizweb.dktcdn.net/thumb/medium/assets/themes_support/noimage.gif';
                                        }

                                        jQuery('<li class="item even"> <a class="product-image" href="' + item.url + '"><img src="' + src + '" width="80"></a><div class="detail-item"><div class="product-details"> <a href="javascript:void(0);" onclick="Bizweb.removeItem(' + item.variant_id + ')" title="xóa sản phẩm" onClick="" class="glyphicon glyphicon-remove">&nbsp;</a><p class="product-name"> <a href="' + item.url + '" title="' + item.name + '">' + item.name + '</a> </p></div><div class="product-details-bottom"> <span class="price">' + Bizweb.formatMoney(item.price, "{{amount_no_decimals_with_comma_separator}}₫") + '</span> <span class="title-desc">Số lượng:</span> <strong>' + item.quantity + '</strong> </div></div></li>').appendTo(table);
                                    });
                                    jQuery('<div class="top-subtotal">Tổng tiền: <span class="price total_price">2.050.000₫</span></div><div class="actions"><a class="btn-checkout" href="/checkout\"><span>Thanh toán</span></a><a class="view-cart" href="/cart\"><span>giỏ hàng</span></a></div>').appendTo(table);
                                } else {
                                    jQuery('<div class="block-subtitle">Không có sản phẩm nào trong giỏ hàng.</div>').appendTo(table);
                                }
                            }
                        });
                    }
                }
                updateCartDesc(cart);
            }
            function updateCartDesc(data) {
                var $cartLinkText = $('#open_shopping_cart'),
                        $cartCount = $('#cart-total'),
                        $cartPrice = Bizweb.formatMoney(data.total_price, "{{amount_no_decimals_with_comma_separator}}₫");
                switch (data.item_count) {
                    case 0:
                        $cartLinkText.attr('data-amount', '0');
                        $cartCount.text('0');
                        break;
                    case 1:
                        $cartLinkText.attr('data-amount', '1');
                        $cartCount.text('1');
                        break;
                    default:
                        $cartLinkText.attr('data-amount', data.item_count);
                        $cartCount.text(data.item_count);
                        break;
                }
                $('.total_price').html($cartPrice);
            }
            Bizweb.onCartUpdate = function (cart) {
                Bizweb.updateCartFromForm(cart, '.shopping_cart', 'shopping-cart');
            };
            $(window).load(function () {
                // Let's get the cart and show what's in it in the cart box.  
                Bizweb.getCart(function (cart) {
                    Bizweb.updateCartFromForm(cart, '.shopping_cart');
                });
            });
        </script>
    </body>
</html>