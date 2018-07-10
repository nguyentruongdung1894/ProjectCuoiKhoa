<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
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

            <h1 style="display:none;">polo-theme</h1>
            
            <!-- Slider -->
            <jsp:include flush="true" page="magik-slideshow.jsp"/>
            <!-- end Slider --> 

            <!-- header service -->
            <jsp:include flush="true" page="service.jsp"/>        
            <!-- end header service --> 

            <!-- main container -->
            <jsp:include flush="true" page="container.jsp"/>
            <!-- End main container --> 

            <!-- offer banner section -->
            <div class="offer-banner-section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-xs-12 col-sm-4"><a href="#"><img alt="#" src="../jsp/images/banner_line1.jpg"></a>
                        </div>
                        <div class="col-lg-8 col-xs-12 col-sm-8"><a href="#"><img alt="#" src="../jsp/images/banner_line2.jpg"></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end offer banner section --> 

            <!-- Featured Slider -->
            <jsp:include flush="true" page="featured-pro.jsp"/>         
            <!-- End Featured Slider --> 
            
            <!-- middle slider -->
            <jsp:include flush="true" page="middle-slider.jsp"/>
            <!-- End middle slider --> 

            <!-- Latest Blog -->
            <section class="latest-blog container">
                <div class="blog-title">
                    <h2><span>Tin tức</span></h2>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="blog-img"> <a href="/tang-qua-gi-de-nguoi-nhan-thich"><img src="../jsp/images/quasinhnhat1.jpg" alt="Tặng quà gì để người nhận thích?"/></a>
                    </div>
                    <h3><a href="/tang-qua-gi-de-nguoi-nhan-thich">Tặng quà gì để người nhận thích?</a></h3>
                    <div class="post-date"><i class="icon-calendar"></i>08/12/2015</div>
                    <p><p style="text-align: justify;">Tặng quà không có nghĩa là đem nó cho người nhận mà không hề quan tâm đến sở thích của người ấy, nó là cả một nghệ thuật mà bạn cần dành thời gian để suy nghĩ, lựa chọn, tìm hiểu về tính cách và hoàn cảnh sống của người nhận.</p></p>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="blog-img"> <a href="/10-loai-socola-ngon-nhat-the-gioi"><img src="../jsp/images/2.jpg" alt="10 loại socola ngon nhất thế giới"/></a>
                    </div>
                    <h3><a href="/10-loai-socola-ngon-nhat-the-gioi">10 loại socola ngon nhất thế giới</a></h3>
                    <div class="post-date"><i class="icon-calendar"></i>08/12/2015</div>
                    <p><p style="text-align: justify;">Từ những thanh chocolate đen nguyên chất, cho tới kẹo chocolate có nhân rượu màu, hay những thỏi chocolate đắng, tất cả đều ngon đến ngỡ ngàng. Bạn sẽ chẳng bao giờ hối tiếc khi lỡ đam mê các loại bánh kẹo của những hãng này.</p></p>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <div class="blog-img"> <a href="/goi-y-chon-hoa-lam-qua-tang"><img src="../jsp/images/hoa-hong-giay-don-gian.jpg" alt="Gợi ý chọn hoa làm quà tặng"/></a>
                    </div>
                    <h3><a href="/goi-y-chon-hoa-lam-qua-tang">Gợi ý chọn hoa làm quà tặng</a></h3>
                    <div class="post-date"><i class="icon-calendar"></i>08/12/2015</div>
                    <p><p style="text-align: justify;">Tặng hoa là gửi đi một thông điệp ý nghĩa thường mang lại cảm xúc của tình yêu và hạnh phúc bằng hương thơm và vẻ đẹp tuyệt đối của những bông hoa. Kèm theo hoa những tấm thiệp chân thành tự làm, sôcôla và các quà tặng thủ công khác.</p></p>
                </div>
            </section>
            <!-- End Latest Blog -->

            <!-- Footer -->
            <jsp:include flush="true" page="footer.jsp"/>
            <!-- End Footer -->
        </div>
    </body>
</html>