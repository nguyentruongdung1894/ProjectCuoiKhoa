<%@page import="bkap.Entity.Item"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <%
                Item item=new Item();
            %>
            <div class="col-lg-2 col-sm-3 col-md-2">
                <div class="top-cart-contain">
                    <div class="mini-cart" id="open_shopping_cart">
                        <div data-hover="dropdown" class="basket dropdown-toggle"> 
                            <a href="<%=request.getContextPath()%>/carController/getAllItem.htm"> 
                                <i class="glyphicon glyphicon-shopping-cart"></i>
                                <div class="cart-box">
                                    <span class="title">Giỏ hàng</span>
                                    <span id="cart-total"><%=item.getQuantity()%></span>
                                </div>
                            </a>
                        </div>

                        <div class="top-cart-content arrow_box" style="display: none;">
                            
                                <ul id="cart-sidebar" class="mini-products-list shopping_cart">
                                    <div class="block-subtitle" style="color: red;">Sản phẩm đã cho vào giỏ hàng</div>
                                    <c:forEach items="<%=request.getSession().getAttribute("listItem")%>" var="cart">
                                    <li class="item even"> 
                                        <a class="product-image" href="">
                                            <img src="${cart.product.productImage}" width="80">
                                        </a>
                                        <div class="detail-item">
                                            <div class="product-details"> 
                                                <a href="javascript:void(0);" onclick="Bizweb.removeItem(1360784)" title="xóa sản phẩm" class="glyphicon glyphicon-remove">&nbsp;</a>
                                                <p class="product-name"> 
                                                    <a href="" title="${cart.product.productName}">${cart.product.productName}</a> 
                                                </p>
                                            </div>
                                            <div class="product-details-bottom"> 
                                                <span class="price">${cart.product.price}</span> 
                                                <span class="title-desc">Số lượng:</span> 
                                                <strong>${cart.quantity}</strong> 
                                            </div>
                                        </div>
                                    </li> 
                                    </c:forEach>
                                    <div class="top-subtotal">Tổng tiền: 
                                        <span class="price total_price"><%=request.getSession().getAttribute("total")%></span>
                                    </div>
                                    <div class="actions">
                                        <a class="btn-checkout" href="<%=request.getContextPath()%>/home/checkout.htm"><span>Thanh toán</span></a>
                                        <a class="view-cart" href="<%=request.getContextPath()%>/carController/getAllItem.htm"><span>Giỏ hàng</span></a>
                                    </div>
                                </ul>
                            
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