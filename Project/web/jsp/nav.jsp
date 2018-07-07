<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<nav>
    <div class="container">
        <div class="nav-inner">
            <div class="logo-small"> 
                <a class="logo" href="index.htm">
                    <img alt="polo-theme" src="../jsp/images/logo.png" />
                </a>
            </div>
            <!-- mobile-menu -->
            <div class="hidden-desktop" id="mobile-menu">
                <ul class="navmenu">
                    <li>
                        <div class="menutop">
                            <div class="toggle"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></div>
                            <h2>Menu</h2>
                        </div>
                        <ul class="submenu">
                            <li>
                                <ul class="topnav">
                                    <li class="level0 nacvv-8 level-top parent"><a class="level-top" href="index.htm"> <span>Trang chủ</span> </a></li>
                                    <li class="level0 nacvv-8 level-top parent"><a class="level-top" href="about.htm"> <span>Giới thiệu</span> </a></li>
                                    <li class="level0 nav-8 level-top parent"><a class="level-top" href="product.htm"> <span>Sản phẩm</span> </a>
                                        <ul class="level0">
                                            <c:forEach items="${listProductParent}" var="pro">
                                                <li class="level1 first parent"><a href="${pro.link}"><span>${pro.parentName}</span></a></li>
                                                        </c:forEach> 
                                        </ul>
                                    </li>
                                    <li class="level0 nacvv-8 level-top parent"> <a class="level-top" href="new.htm"> <span>Tin tức</span> </a></li>
                                    <li class="level0 nacvv-8 level-top parent"> <a class="level-top" href="contact.htm"> <span>Liên hệ</span> </a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!--navmenu--> 
            </div>		
            <!--End mobile-menu -->
            <ul id="nav" class="hidden-xs">
                <li class="level0 parent drop-menu"><a href="index.htm"><span>Trang chủ</span></a></li>
                <li class="level0 parent drop-menu"><a href="about.htm"><span>Giới thiệu</span></a></li>
                <li class="level0 parent drop-menu"><a href="product.htm"><span>Sản phẩm</span></a>
                    <ul class="level1">
                        <c:forEach items="${listProductParent}" var="pro">
                            <li class="level1 first parent"><a href="${pro.link}"><span>${pro.parentName}</span></a></li>
                                    </c:forEach>                      
                    </ul>
                </li>
                <li class="level0 parent drop-menu"><a href="new.htm"><span>Tin tức</span></a></li>
                <li class="level0 parent drop-menu"><a href="contact.htm"><span>Liên hệ</span></a></li>
            </ul>
        </div>
    </div>
</nav>