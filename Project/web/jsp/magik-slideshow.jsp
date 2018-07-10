<%-- 
    Document   : magik-slideshow
    Created on : Jul 6, 2018, 10:48:24 AM
    Author     : ScorPius 31
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="magik-slideshow" class="magik-slideshow">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-sm-12 col-md-8">
                <div id="coverage-slider">
                    <c:forEach items="${listSlide}" var="pro">
                        <div class="item">
                            <a href="#"><img src="${pro.slideImage}" alt="#"/></a>
                        </div>
                    </c:forEach>                                     
                </div>
            </div>
            <aside class="col-xs-12 col-sm-12 col-md-4 visible-lg large_image visible-md">
                <div class="RHS-banner">
                    <div class="add">
                        <a href="1">
                            <img alt="#" height="463" src="../jsp/images/Qc-1.jpg" alt="polo-theme">
                        </a>
                    </div>
                </div>
            </aside>
        </div>
    </div>
</div>
