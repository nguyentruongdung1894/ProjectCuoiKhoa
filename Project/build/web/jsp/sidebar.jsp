<%-- 
    Document   : sidebar
    Created on : Jul 6, 2018, 10:16:37 PM
    Author     : ScorPius 31
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
    <div class="side-nav-categories">
        <div class="block-title"> Danh mục sản phẩm </div>
        <!--block-title--> 
        <!-- BEGIN BOX-CATEGORY -->
        <div class="box-content box-category">
            <ul>
                <c:forEach items="${listProductParent}" var="pro">
                    <li> <a  href="${pro.link}">${pro.parentName}</a> </li>          
                </c:forEach>                 
            </ul>
        </div>
        <!--box-content box-category--> 
    </div>
    <div class="block block-layered-nav hide_scroll">
        <div class="block-title"><span>Lọc sản phẩm theo :</span></div>
        <div class="block-content">
            <dl id="narrow-by-list">
                <dt class="even">Thương hiệu</dt>
                <dd class="even">
                    <ol>
                        <c:forEach items="${listTrademark}" var="pro">
                            <li><a href='${pro.link}' title='${pro.supplierName}'>${pro.supplierName}</a></li>
                        </c:forEach>                                             
                    </ol>
                </dd>
            </dl>
        </div>
    </div>
    <div class="block block-cart hide_scroll open_button" id="open_shopping_cart">
        <div class="block-title"><span>Giỏ hàng của bạn</span></div>
        <div class="block-content">
            <div class="summary">
                <p class="amount">Đang có <span id="cart-total" >2</span> sản phẩm trong giỏ hàng của bạn.</p>
                <p class="subtotal"> <span class="label">Tổng tiền:</span> <span class="price total_price">2.050.000₫</span> </p>
            </div>
            <div class="ajax-checkout">
                <button onclick="window.location = '/checkout'" type="submit" title="Submit" class="button button-checkout"><span>Thanh toán</span></button>
            </div>
            <ul class="shopping_cart style_cart_col">
            </ul>
        </div>
    </div>
<!--    <div class="block block-tags">
        <div class="block-title"><span>Tags sản phẩm</span></div>
        <div class="block-content">
            <ul class="tags-list">
                <li><a href='/collections/all/hoa-tuoi' title='hoa-tuoi'>Hoa tươi</a></li>
                <li><a href='/collections/all/qua-tang' title='qua-tang'>Quà tặng</a></li>
                <li><a href='/collections/all/socola' title='socola'>Socola</a></li>
            </ul>
        </div>
    </div>-->
    <div class="block block-banner"><a href="#"><img src="../jsp/images/blog-banner.jpg" alt="block-banner"></a></div>
</aside>