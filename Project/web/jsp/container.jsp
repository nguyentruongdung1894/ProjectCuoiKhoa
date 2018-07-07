<%-- 
    Document   : container
    Created on : Jul 6, 2018, 10:50:35 AM
    Author     : ScorPius 31
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<section class="main-container col1-layout home-content-container">
    <div class="container">
        <div class="std">
            <div class="best-seller-pro">
                <div class="slider-items-products">
                    <div class="new_title center">
                        <h2>Sản phẩm nổi bật</h2>
                    </div>
                    <div id="best-seller-slider" class="product-flexslider hidden-buttons hidden_btn_cart">
                        <div class="slider-items slider-width-col4">
                            <c:forEach items="${listProductHot}" var="pro">
                                <div class="item">
                                    <div class="col-item">
                                        <div class="product-image-area"> 
                                            <a class="product-image" title="${pro.productName}" href="/tinh-yeu-ngot-ngao"> 
                                                <img src="${pro.productImage}" class="img-responsive" alt="${pro.productName}" /> 
                                            </a>
                                            <form action="" method="post" class="variants " id="product-actions-830911" enctype="multipart/form-data">
                                                <div class="hover_fly">
                                                    <a class="exclusive ajax_add_to_cart_button btn-cart add_to_cart" href="#" title="Cho vào giỏ hàng">
                                                        <div><i class="icon-shopping-cart"></i><span>Cho vào giỏ hàng</span></div>
                                                    </a>
                                                    <input type="hidden" name="variantId" value="1273195" />
                                                </div>
                                            </form>
                                        </div>
                                        <div class="info">
                                            <div class="info-inner">
                                                <div class="item-title"> <h3><a title="${pro.productName}" href="">${pro.productName}</a></h3></div>
                                                <!--item-title-->
                                                <div class="item-content">
                                                    <div class="price-box">
                                                        <p class="special-price"> <span class="price">${pro.price} </span> </p>
                                                    </div>
                                                </div>
                                                <!--item-content--> 
                                            </div>
                                            <!--info-inner-->
                                            <form action="" method="post" class="variants " id="product-actions-830911" enctype="multipart/form-data">
                                                <div class="actions">
                                                    <input type="hidden" name="variantId" value="1273195" />
                                                    <button class="button btn-cart btn-cart add_to_cart" title="Cho vào giỏ hàng" type="button"><span>Cho vào giỏ hàng</span></button>
                                                </div>
                                            </form>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>                         
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
