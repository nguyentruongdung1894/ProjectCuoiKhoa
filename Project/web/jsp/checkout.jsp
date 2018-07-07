<%-- 
    Document   : checkout
    Created on : Jul 6, 2018, 5:01:41 PM
    Author     : ScorPius 31
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="anyflexbox boxshadow display-table">
<head>
	<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="polo-theme - Thanh toán đơn hàng" />

    <title>polo-theme - Thanh toán đơn hàng</title>

    
    	<link rel="shortcut icon" href="//bizweb.dktcdn.net/assets/favicon.ico" type="image/x-icon" />
    
    <script src='js/jquery-2.1.3.min.js' type='text/javascript'></script>
    <link href='css/bootstrap.min.css' rel='stylesheet' type='text/css' />
<link href='css/nprogress.css' rel='stylesheet' type='text/css' />
<link href='css/font-awesome.min.css' rel='stylesheet' type='text/css' />
<link href='css/checkout_new.css' rel='stylesheet' type='text/css' />

</head>

<body class="body--custom-background-color ">
    <div class="banner" data-header="">
        <div class="wrap">
            <div class="shop logo logo--left ">
    
        <h1 class="shop__name">
            <a href="/">
                polo-theme
            </a>
        </h1>
    
</div>
        </div>
    </div>
    <button class="order-summary-toggle" bind-event-click="Bizweb.Checkout.toggleOrderSummary(this)">
        <div class="wrap">
            <h2>
                <label class="control-label">Đơn hàng</label>
                <label class="control-label hidden-small-device">
                    (5 sản phẩm)
                </label>
                <label class="control-label visible-small-device inline">
                    (5)
                </label>
            </h2>
            <a class="underline-none expandable pull-right" href="javascript:void(0)">
                Xem chi tiết
            </a>
        </div>
    </button>
	<form method="post" action="" data-toggle="validator" class="content stateful-form formCheckout">
        <div class="wrap" context="checkout" define='{checkout: new Bizweb.Checkout(this,{ existCode: false, totalOrderItemPrice: 4180000.0000, discount: 0, shippingFee: 0, freeShipping: false, requiresShipping: true, code: "", settingLanguage: "vi", moneyFormat: "{{amount_no_decimals_with_comma_separator}}₫", discountLabel: "Miễn phí", districtPolicy: "optional", district: "", province:"" })}'>
            <div class='sidebar '>
                <div class="sidebar_header">
                    <h2>
                        <label class="control-label">Đơn hàng</label>
                        <label class="control-label">(5 sản phẩm)</label>
                    </h2>
                    <hr class="full_width"/>
                </div>
                <div class="sidebar__content">
                    <div class="order-summary order-summary--product-list order-summary--is-collapsed">
                        <div class="summary-body summary-section summary-product" >
                            <div class="summary-product-list">
                                <table class="product-table">
                                    <tbody>
                                        
                                            <tr class="product product-has-image clearfix">
                                                <td>
                                                    <div class="product-thumbnail">
                                                        <div class="product-thumbnail__wrapper">
                                                            
                                                                <img src='//bizweb.dktcdn.net/thumb/thumb/100/037/483/products/0808539tinh_yeu_ngot_ngao_1[1].jpg?v=1448877839617' alt='Tình yêu ngọt ngào' class='product-thumbnail__image' />
                                                            
                                                        </div>
                                                        <span class="product-thumbnail__quantity" aria-hidden="true">2</span>
                                                    </div>
                                                </td>
                                                <td class="product-info">
                                                    <span class="product-info-name">
                                                        
                                                        Tình yêu ngọt ngào
                                                    </span>
                                                    
                                                    
                                                </td>
                                                <td class="product-price text-right">
                                                    2.400.000₫
                                                </td>
                                            </tr>
                                        
                                            <tr class="product product-has-image clearfix">
                                                <td>
                                                    <div class="product-thumbnail">
                                                        <div class="product-thumbnail__wrapper">
                                                            
                                                                <img src='//bizweb.dktcdn.net/thumb/thumb/100/037/483/products/2432507party_1[1].jpg?v=1448877839617' alt='Bữa tiệc hoa hồng' class='product-thumbnail__image' />
                                                            
                                                        </div>
                                                        <span class="product-thumbnail__quantity" aria-hidden="true">1</span>
                                                    </div>
                                                </td>
                                                <td class="product-info">
                                                    <span class="product-info-name">
                                                        
                                                        Bữa tiệc hoa hồng
                                                    </span>
                                                    
                                                    
                                                </td>
                                                <td class="product-price text-right">
                                                    850.000₫
                                                </td>
                                            </tr>
                                        
                                            <tr class="product product-has-image clearfix">
                                                <td>
                                                    <div class="product-thumbnail">
                                                        <div class="product-thumbnail__wrapper">
                                                            
                                                                <img src='//bizweb.dktcdn.net/thumb/thumb/100/037/483/products/2556022gold_love_1[1].jpg?v=1448877839537' alt='Tình khúc vàng' class='product-thumbnail__image' />
                                                            
                                                        </div>
                                                        <span class="product-thumbnail__quantity" aria-hidden="true">1</span>
                                                    </div>
                                                </td>
                                                <td class="product-info">
                                                    <span class="product-info-name">
                                                        
                                                        Tình khúc vàng
                                                    </span>
                                                    
                                                    
                                                </td>
                                                <td class="product-price text-right">
                                                    450.000₫
                                                </td>
                                            </tr>
                                        
                                            <tr class="product product-has-image clearfix">
                                                <td>
                                                    <div class="product-thumbnail">
                                                        <div class="product-thumbnail__wrapper">
                                                            
                                                                <img src='//bizweb.dktcdn.net/thumb/thumb/100/037/483/products/1902376bay_to_1[1].jpg?v=1448877839560' alt='Bày tỏ' class='product-thumbnail__image' />
                                                            
                                                        </div>
                                                        <span class="product-thumbnail__quantity" aria-hidden="true">1</span>
                                                    </div>
                                                </td>
                                                <td class="product-info">
                                                    <span class="product-info-name">
                                                        
                                                        Bày tỏ
                                                    </span>
                                                    
                                                    
                                                </td>
                                                <td class="product-price text-right">
                                                    480.000₫
                                                </td>
                                            </tr>
                                        
                                    </tbody>
                                </table>
                                <div class="order-summary__scroll-indicator">
                                    Cuộn chuột để xem thêm
                                    <i class="fa fa-long-arrow-down" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                        <hr class="m0"/>
                    </div>
                    <div class="order-summary order-summary--discount">
                        <div class="summary-section">
                            <div class="form-group m0" bind-show="!existCode ||code == null || !code.length">
                                <div class="field__input-btn-wrapper">
                                    <div class="field__input-wrapper">
                                        <input bind="code" name="code" type="text" class="form-control discount_code" placeholder="Nhập mã giảm giá" />
                                    </div>
                                    <button bind-event-click="caculateShippingFee('')" class="btn btn-primary event-voucher-apply" type="button">Áp dụng</button>
                                </div>
                            </div>
                            <div bind-class="{'warning' : existCode && !freeShipping && discount == 0,'success' : existCode && ( freeShipping || discount >0 )}" class="clearfix hide" bind-show="code!= null && code.length && existCode">
                                <div class="pull-left">
                                    <i class="fa fa-check applied-discount-status-success" aria-hidden="true"></i>
									<i class="fa fa-exclamation-triangle applied-discount-status-warning" aria-hidden="true"></i>
                                </div>
                                <div bind="code" class="pull-left applied-discount-code">
                                    
                                </div>
                                <div bind="(discountShipping && freeShipping) ? 'Miễn phí' : money(discount,'{{amount_no_decimals_with_comma_separator}}₫')" class="pull-right">
                                    
                                        0
                                    
                                </div>
                                <input bind-event-click="removeCode('')" class="btn btn-delete" type="button" value="×" name="commit">
                            </div>
                            <div class="error mt10 hide" bind-show="inValidCode">
                                Mã khuyến mãi không hợp lệ
                            </div>
                        </div>
                        <hr class="m0"/>
                    </div>
                    <div class="order-summary order-summary--total-lines">
                        <div class="summary-section border-top-none--mobile">
                            <div class="total-line total-line-subtotal clearfix">
                                <span class="total-line-name pull-left">
                                    Tạm tính
                                </span>
                                <span bind="money(totalOrderItemPrice - discount,'{{amount_no_decimals_with_comma_separator}}₫')" class="total-line-subprice pull-right">
                                    0
                                </span>
                            </div>
                            <div class="total-line total-line-shipping clearfix" bind-show="requiresShipping">
                                <span class="total-line-name pull-left">
                                    Phí vận chuyển
                                </span>
                                <span bind="shippingFee >  0 ? money(shippingFee,'{{amount_no_decimals_with_comma_separator}}₫') : ((requiresShipping && shippingMethods.length == 0) ? 'Khu vực này không hỗ trợ vận chuyển': 'Miễn phí')" class="total-line-shipping pull-right"  bind-show="ShippingProvinceId || BillingProvinceId && !otherAddress || (requiresShipping && shippingMethods.length > 0)" >
                                    
                                        Miễn phí
                                    
                                </span>
                            </div>
                            <div class="total-line total-line-total clearfix">
                                <span class="total-line-name pull-left">
                                    Tổng cộng
                                </span>
                                <span bind="money(totalOrderItemPrice + (isNaN(shippingFee) ? 0 : shippingFee) - discount,'{{amount_no_decimals_with_comma_separator}}₫')" class="total-line-price pull-right">
                                    4.180.000₫
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group clearfix hidden-sm hidden-xs">
                        <div class="field__input-btn-wrapper mt10">
                            <a class="previous-link" href="/cart">
                                <i class="fa fa-angle-left fa-lg" aria-hidden="true"></i>
                                <span>Quay về giỏ hàng</span>
                            </a>
                            <input class="btn btn-primary btn-checkout" type="button" bind-event-click="paymentCheckout('AIzaSyDWReBlPxFt-i145Gsd502wOqRS0KXFHW4;AIzaSyAbtwApDToQWn7snVio3Y9PWFbcpdnOWdk;AIzaSyA5rJOu8wci0li24bnZ1WogMEH93p-DGlM')" value="ĐẶT HÀNG" />
                        </div>
                    </div>
                    <div class="form-group has-error">
                        <div class="help-block ">
                            <ul class="list-unstyled">
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main" role="main">
                <div class="main_header">
                    <div class="shop logo logo--left ">
    
        <h1 class="shop__name">
            <a href="/">
                polo-theme
            </a>
        </h1>
    
</div>
                </div>
                <div class="main_content">
                    <div class="row">
                        <div class="col-md-6 col-lg-6">
                            <div class="section" define="{billing_address: {}}">
                                <div class="section__header">
                                    <div class="layout-flex layout-flex--wrap">
                                        <h2 class="section__title layout-flex__item layout-flex__item--stretch">
                                            <i class="fa fa-id-card-o fa-lg section__title--icon hidden-md hidden-lg" aria-hidden="true"></i>
                                            <label class="control-label">Thông tin mua hàng</label>
                                        </h2>
                                        
                                                <a class="layout-flex__item section__title--link" href="/account/login?returnUrl=/checkout">
                                                    <i class="fa fa-user-circle-o fa-lg" aria-hidden="true"></i>
                                                    Đăng nhập 
                                                </a>
                                        
                                    </div>
                                </div>
                                <div class="section__content">
                                    
                                    
                                        <div class="form-group" bind-class="{'has-error' : invalidEmail}">
                                            <div>
                                                <label class="field__input-wrapper" bind-class="{ 'js-is-filled': email }">
                                                    <span class="field__label" bind-event-click="handleClick(this)">
                                                        Email
                                                    </span>
                                                    <input name="Email" type="email" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_email" data-error="Vui lòng nhập email đúng định dạng"  required  name="Email"  value=""  pattern="^([a-zA-Z0-9_\-\.\+]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" bind="email" />
                                                </label>
                                            </div>
                                            <div class="help-block with-errors">
                                            </div>
                                        </div>
                                    
                                    <div class="billing">
                                        <div>
                                            <div class="form-group">
                                                <div class="field__input-wrapper" bind-class="{ 'js-is-filled': billing_address.full_name }">
                                                    <span class="field__label" bind-event-click="handleClick(this)">
                                                        Họ và tên
                                                    </span>
                                                    <input name="BillingAddress.LastName" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_billing_address_last_name" data-error="Vui lòng nhập họ tên" required bind="billing_address.full_name" />
                                                </div>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                            
                                                <div class="form-group">
                                                    <div class="field__input-wrapper" bind-class="{ 'js-is-filled': billing_address.phone }">
                                                        <span class="field__label" bind-event-click="handleClick(this)">
                                                            Số điện thoại
                                                        </span>
                                                        <input name="BillingAddress.Phone" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_billing_address_phone"  bind="billing_address.phone" />
                                                    </div>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            
                                            
                                                <div class="form-group">
                                                    <div class="field__input-wrapper" bind-class="{ 'js-is-filled': billing_address.address1 }">
                                                        <span class="field__label" bind-event-click="handleClick(this)">
                                                            Địa chỉ
                                                        </span>
                                                        <input name="BillingAddress.Address1" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_billing_address_address1"  bind="billing_address.address1" />
                                                    </div>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            
                                            
                                                
                                                <div class="form-group">
                                                    <div class="field__input-wrapper field__input-wrapper--select">
                                                        <label class="field__label" for="BillingProvinceId">
                                                            Tỉnh thành
                                                        </label>
                                                       
                                                           
                                                    </div>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                                
                                                    <div bind-show="!otherAddress" class="form-group">
                                                        <div class="field__input-wrapper field__input-wrapper--select">
                                                            <label class="field__label" for="BillingDistrictId">
                                                                Quận huyện
                                                            </label>
                                                          
                                                        </div>
                                                        <div class="help-block with-errors"></div>
                                                    </div>
                                                
                                            
                                            <div bind-show="!otherAddress" class="form-group">
                                                <div class="error hide" bind-show="requiresShipping && loadedShippingMethods && shippingMethods.length == 0  && BillingProvinceId  ">
                                                    <label>Khu vực này không hỗ trợ vận chuyển</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="section pt10">
                                <div class="section__content">
                                    <div class="form-group" bind-show="requiresShipping">
                                        <div class="checkbox-wrapper">
                                            <div class="checkbox__input">
                                                <input class="input-checkbox" type="checkbox"  value="false"  name="otherAddress" id="other_address" bind="otherAddress" bind-event-change="changeOtherAddress(this)">
                                            </div>
                                            <label class="checkbox__label" for="other_address">
                                                Giao hàng đến địa chỉ khác
                                            </label>          
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="section pt10" bind-show="otherAddress">
                                <div class="section__header">
                                    <h2 class="section__title">
                                        <i class="fa fa-id-card-o fa-lg section__title--icon hidden-md hidden-lg" aria-hidden="true"></i>
                                        <label class="control-label">
                                            Thông tin nhận hàng
                                        </label>
                                    </h2>
                                </div>
                                <div class="section__content">
                                    <div bind-show="otherAddress" define="{shipping_address: {}, shipping_expand:true,show_district:  true ,show_country:  false }" class="shipping  hide ">
                                        <div bind-show="shipping_expand || !otherAddress">
                                            <div class="form-group">
                                                <div class="field__input-wrapper" bind-class="{ 'js-is-filled': shipping_address.full_name }">
                                                    <span class="field__label" bind-event-click="handleClick(this)">
                                                        Họ và tên
                                                    </span>
                                                    <input name="ShippingAddress.LastName" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_shipping_address_last_name" data-error="Vui lòng nhập họ tên" required bind="shipping_address.full_name" />
                                                </div>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                            
                                                <div class="form-group">
                                                    <div class="field__input-wrapper" bind-class="{ 'js-is-filled': shipping_address.phone }">
                                                        <span class="field__label" bind-event-click="handleClick(this)">
                                                            Số điện thoại
                                                        </span>
                                                        <input name="ShippingAddress.Phone" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_shipping_address_phone"  bind="shipping_address.phone" />
                                                    </div>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            
                                            
                                                <div class="form-group">
                                                    <div class="field__input-wrapper" bind-class="{ 'js-is-filled': shipping_address.address1 }">
                                                        <span class="field__label" bind-event-click="handleClick(this)">
                                                            Địa chỉ
                                                        </span>
                                                        <input name="ShippingAddress.Address1" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" class="field__input form-control" id="_shipping_address_address1"  bind="shipping_address.address1" />
                                                    </div>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                            
                                            
                                                
                                                <div class="form-group">
                                                    <div class="field__input-wrapper field__input-wrapper--select">
                                                        <label class="field__label" for="BillingProvinceId">
                                                            Tỉnh thành
                                                        </label>
                                                        <select class="field__input field__input--select form-control" name="ShippingProvinceId" id="shippingProvince" required data-error="Bạn chưa chọn tỉnh thành" bind-event-change="shippingProviceChange('')" bind="ShippingProvinceId">
                                                           
                                                    </div>
                                                    <div class="help-block with-errors"></div>
                                                </div>
                                                
                                                    <div class="form-group">
                                                        <div class="field__input-wrapper field__input-wrapper--select">
                                                            <label class="field__label" for="BillingDistrictId">
                                                                Quận huyện
                                                            </label>
                                                            <select class="field__input field__input--select form-control" name="ShippingDistrictId" id="shippingDistrict"  bind-event-change="shippingDistrictChange('')" bind="ShippingDistrictId">
                                                                <option value="">--- Chọn quận huyện ---</option>
                                                            </select>
                                                        </div>
                                                        <div class="help-block with-errors"></div>
                                                    </div>
                                                
                                            
                                            <div class="form-group">
                                                <div class="error hide" bind-show="requiresShipping && shippingMethods.length == 0 && ShippingProvinceId ">
                                                    <label>Khu vực này không hỗ trợ vận chuyển</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="section" bind-class="{ 'pt0': otherAddress, 'pt10': !otherAddress}">
                                <div class="section__content">
                                    <div class="form-group m0">
                                        <textarea name="note" value="" class="field__input form-control m0" placeholder="Ghi chú"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-6">
                            <div class="section shipping-method hide" bind-show="shippingMethods.length > 0">
                                <div class="section__header">
                                    <h2 class="section__title">
                                        <i class="fa fa-truck fa-lg section__title--icon hidden-md hidden-lg" aria-hidden="true"></i>
                                        <label class="control-label">Vận chuyển</label>
                                    </h2>
                                </div>
                                <div class="section__content">
                                    <div class="content-box">
                                    </div>
                                </div>
                            </div>
                            <div class="section payment-methods" bind-class="{'p0--desktop': shippingMethods.length == 0}">
                                <div class="section__header">
                                    <h2 class="section__title">
                                        <i class="fa fa-credit-card fa-lg section__title--icon hidden-md hidden-lg" aria-hidden="true"></i>
                                        <label class="control-label">Thanh toán</label>
                                    </h2>
                                </div>
                                <div class="section__content">
                                    <div class="content-box">
                                        
    <div class="content-box__row">
        <div class="radio-wrapper">
            <div class="radio__input">
                <input class="input-radio" type="radio" value="39810" name="PaymentMethodId" id="payment_method_39810" data-check-id="4" bind="payment_method_id" checked>
            </div>
            <label class="radio__label" for="payment_method_39810">
                <span class="radio__label__primary">Thanh toán khi giao hàng (COD)</span>
                <span class="radio__label__accessory">
                    <ul>
                        <li class="payment-icon-v2 payment-icon--4">
							
								<i class="fa fa-money payment-icon-fa" aria-hidden="true"></i>
							
                        </li>
                    </ul>
                </span>
            </label> 
        </div> <!-- /radio-wrapper--> 
    </div>
    
        <div class="radio-wrapper content-box__row content-box__row--secondary hide" id="payment-gateway-subfields-39810" bind-show="payment_method_id == 39810">
            <div class="blank-slate">
                <p>cod</p>

                
            </div>
        </div>
    

<a href="javascript:void(0)" data-toggle="modal" data-target="#moca-modal" data-backdrop="static" data-keyboard="false" class="trigger-moca-modal" style="display: none;" title="Thanh toán qua Moca">
</a>
<a href="javascript:void(0)" data-toggle="modal" data-target="#moca-error-modal" class="trigger-moca-error-modal" style="display: none;" title="Lỗi thanh toán qua Moca">
</a>
<div class="modal fade moca-modal" id="moca-modal" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div>
                <iframe style="border: 0px; width: 100%; height: 100%;" src=""></iframe>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="moca-error-modal" data-width="" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <div>
                    <p>Giao dịch của bạn chưa đủ hạn mức thanh toán</p>
                    <p>Hạn mức tối thiểu để thanh toán được là 1đ</p>
                    <p>Vui lòng chọn hình thức thanh toán khác</p>
                </div>
            </div>
        </div>
    </div>
</div>
                                    </div>
                                </div>
                            </div>
                            <div class="section hidden-md hidden-lg">
                                <div class="form-group clearfix m0">
                                    <input class="btn btn-primary btn-checkout" type="button" bind-event-click="paymentCheckout('AIzaSyDWReBlPxFt-i145Gsd502wOqRS0KXFHW4;AIzaSyAbtwApDToQWn7snVio3Y9PWFbcpdnOWdk;AIzaSyA5rJOu8wci0li24bnZ1WogMEH93p-DGlM')" value="ĐẶT HÀNG" />
                                </div>
                                <div class="text-center mt20">
                                    <a class="previous-link" href="/cart">
                                        <i class="fa fa-angle-left fa-lg" aria-hidden="true"></i>
                                        <span>Quay về giỏ hàng</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                
                <div class="main_footer footer unprint">
    
    
    
    <div class="mt10"></div>
</div>
<div class="modal fade" id="refund-policy" data-width="" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title">Chính sách hoàn trả</h4>
            </div>
            <div class="modal-body">
                <pre></pre>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="privacy-policy" data-width="" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title">Chính sách bảo mật</h4>
            </div>
            <div class="modal-body">
                <pre></pre>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="terms-of-service" data-width="" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 class="modal-title">Điều khoản sử dụng</h4>
            </div>
            <div class="modal-body">
                <pre></pre>
            </div>
        </div>
    </div>
</div>
            </div>
        </div>
	</form>

	<script src='//bizweb.dktcdn.net/assets/themes_support/jquery-2.1.3.min.js?4' type='text/javascript'></script>
<script src='//bizweb.dktcdn.net/assets/themes_support/bootstrap.min.js?4' type='text/javascript'></script>
<script src='//bizweb.dktcdn.net/assets/themes_support/twine.min.js?2' type='text/javascript'></script>
<script src='//bizweb.dktcdn.net/assets/themes_support/validator.min.js?4' type='text/javascript'></script>
<script src='//bizweb.dktcdn.net/assets/themes_support/nprogress.js?4' type='text/javascript'></script>
<script src='//bizweb.dktcdn.net/assets/themes_support/money-helper.js?4' type='text/javascript'></script>
<script src='//bizweb.dktcdn.net/assets/themes_support/checkout_new_v2.js?26' type='text/javascript'></script>

<script type="text/javascript">
    $(document).ajaxStart(function () {
        NProgress.start();
    });
    $(document).ajaxComplete(function () {
        NProgress.done();
    });

    context = {}

    $(function () {
        Twine.reset(context).bind().refresh();
    });
    
    $(document).ready(function () {
        
        $("#customer-address").trigger("change");
        
        $("select[name='BillingProvinceId']").trigger("change");
        $("select[name='ShippingProvinceId']").trigger("change");
        Twine.context(document.body).checkout.caculateShippingFee('');
    });
</script>
	
</body>
</html>