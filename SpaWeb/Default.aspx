<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SpaWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="top1">
        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="https://viectotnhat.com/bi-quyet-nghe-nghiep/wp-content/uploads/2017/07/gap-go-ceo-trung-tam-spa-cho-tre-so-sinh-dau-tien-o-viet-nam-hinh-anh-1.jpg" width="100%" style="height:500px">
                        <div class="carousel-caption">
                            <h3>Nâng niu và chăm sóc làn da</h3>
                           
                        </div>
                    </div>
                    <!-- End Item -->
                    <div class="item">
                        <img src="https://maihanspa.com/ino_upload/source/Tin%20t%E1%BB%A9c/Beauty%20Spa/3.png" width="100%" style="height:500px">
                        <div class="carousel-caption">
                            <h3>Thăm khám và soi da hoàn toàn miễn phí</h3>
                            
                        </div>
                    </div>
                    <!-- End Item -->
                    <div class="item">
                        <img src="http://thietbithammythanhvan.com/wp-content/uploads/2019/09/tu-van-mo-spa-cham-soc-da.jpg" width="100%" style="height:500px">
                        <div class="carousel-caption">
                            <h3>Đội ngũ kỹ thuật viên giàu kinh nghiệm</h3>
                            <p>
                                Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                        tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                        ipsum dolor sit amet, consetetur sadipscing elitr.
                            </p>
                        </div>
                    </div>
                    <!-- End Item -->
                    <div class="item">
                        <img src="https://image.thanhnien.vn/660/uploaded/quochung.qc/2019_04_20/mh6/1_lbsw.png" width="100%" style="height:500px">
                        <div class="carousel-caption">
                            <h3>Trang thiết bị hiện đại</h3>
                            
                        </div>
                    </div>
                    <!-- End Item -->
                </div>
                <!-- End Carousel Inner -->
                <ul class="nav nav-pills nav-justified">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#">Nâng niu và chăm sóc làn da</a></li>
                    <li data-target="#myCarousel" data-slide-to="1"><a href="#">Điều trị chuyên sâu
               </a></li>
                    <li data-target="#myCarousel" data-slide-to="2"><a href="#">Sản phẩm độc quyền thương hiệu Gà Spa
               </a></li>
                    <li data-target="#myCarousel" data-slide-to="3"><a href="#">Thăm khám và soi da hoàn toàn miễn phí
              </a></li>
                </ul>
            </div>
            <!-- End Carousel -->
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $('#myCarousel').carousel({
                interval: 3000
            });

            var clickEvent = false;
            $('#myCarousel').on('click', '.nav a', function () {
                clickEvent = true;
                $('.nav li').removeClass('active');
                $(this).parent().addClass('active');
            }).on('slid.bs.carousel', function (e) {
                if (!clickEvent) {
                    var count = $('.nav').children().length - 1;
                    var current = $('.nav li.active');
                    current.removeClass('active').next().addClass('active');
                    var id = parseInt(current.data('slide-to'));
                    if (count == id) {
                        $('.nav li').first().addClass('active');
                    }
                }
                clickEvent = false;
            });
        });
    </script>
    <%-- //endtop1--%>

    <!-- Tabs -->
    <h1>Chuyên Mục Dịch Vụ Cung Cấp</h1>
    <div class="tab_container">
       <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                 <input id="tab<%# Container.ItemIndex +1 %>" type="radio" name="tabs" checked>
                    <label for="tab<%# Container.ItemIndex +1 %>"><i class="fa fa-code"></i><span> <%# Eval("TEN_LOAI")%></span></label>                  
            </ItemTemplate>
           
        </asp:Repeater>
        <asp:Repeater ID="Repeater3" runat="server" OnItemDataBound="Repeater3_ItemDataBound">
            <ItemTemplate>
                <section id="content<%#Container.ItemIndex +1 %>" class="tab-content">
            <div class="row">
                <asp:Repeater ID="Repeater4" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4">
                             <div class="card bg-light" style="padding-left:30px" >
                                <img class="card-img-top" style="width:300px;height:300px" src="Resource/image/<%# Eval("IMAGE")%>" alt="Card image cap">
                                <div class="card-body" style="padding:15px">

                                    <div class="row">
                                         <h3> <%# Eval("TEN_DICH_VU")%></h3>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <p>Giá Sử dụng:</p>
                                        </div>
                                        <div class="col-lg-8">
                                            <%# Eval("GIA")%>
                                        </div>
                                       
                                    </div>
                                   <div class="row">
                                        <div class="col-lg-4">
                                            <p>Sản Phẩm được đánh giá:</p>
                                        </div>
                                        <div class="col-lg-8">
                                            <%# Eval("DANH_GIA")%>/5
                                        </div>
                                       
                                    </div>
                                   <a href="ChiTietDichVu.aspx?MaDV=<%#Eval("MA_DV") %>" class="btn btn-sm btn-info float-right">Xem Thêm</a>
                                </div>
                             </div>
                          </div>
                       
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <hr>
        </section>
            </ItemTemplate>
        </asp:Repeater>
        

    </div>
    <!-- ./Tabs -->
   
    <%--   //tab--%>
    <div class="container">
        <div class="row" style="text-align:center">
             <h2>Trước và sau khi điều trị tại Gà Spa</h2>
        <h3>Tùy Vào Cơ Địa Của Mỗi Người Kết Quả Sẽ Có Đôi Chút Khác Biệtr slide.</h3>
        </div>
       
        <div class="row">
            <div class="col-md-12">
                <div class="carousel slide multi-item-carousel" id="theCarousel">
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://gaspa.vn/wp-content/uploads/2019/05/kq-dieu-tri-14.jpg" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://gaspa.vn/wp-content/uploads/2019/05/kq-dieu-tri-11.jpg" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://gaspa.vn/wp-content/uploads/2019/05/kq-dieu-tri-12.jpg" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://gaspa.vn/wp-content/uploads/2019/05/kq-dieu-tri-11.jpg" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://gaspa.vn/wp-content/uploads/2019/05/kq-dieu-tri-11.jpg" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://gaspa.vn/wp-content/uploads/2019/05/kq-dieu-tri-11.jpg" class="img-responsive"></a>
                            </div>
                        </div>
                        <!-- add  more items here -->
                        <!-- Example item start:  -->

                        <div class="item">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://gaspa.vn/wp-content/uploads/2019/05/kq-dieu-tri-07.jpg" class="img-responsive"></a>
                            </div>
                        </div>

                        <!--  Example item end -->
                    </div>
                    <a class="left carousel-control" href="#theCarousel" data-slide="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
                    <a class="right carousel-control" href="#theCarousel" data-slide="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
                </div>
            </div>
        </div>
    </div>
    <script>
        $('.multi-item-carousel').carousel({
            interval: false
        });

        // for every slide in carousel, copy the next slide's item in the slide.
        // Do the same for the next, next item.
        $('.multi-item-carousel .item').each(function () {
            var next = $(this).next();
            if (!next.length) {
                next = $(this).siblings(':first');
            }
            next.children(':first-child').clone().appendTo($(this));

            if (next.next().length > 0) {
                next.next().children(':first-child').clone().appendTo($(this));
            } else {
                $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
            }
        });
    </script>
    <%-- //end carosel--%>
    <div class="container">
        <div class="row">
            <div id="sp-component" class="col-sm-12 col-md-12">
                <div class="sp-column ">
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <div class="documentation-index">
                            <a href="/documentation/sp-page-builder/sp-page-builder-2-x">
                                <img src="https://gaspa.vn/wp-content/uploads/2019/05/member-2.jpg" alt="SP Page Builder">
                            </a>
                            <h2>Member</h2>
                            <div class="documentation-shortdesc">
                               Tích lũy điểm thành viên khi sử dụng dịch vụ tại Gà.
                                Được nâng cấp lên thành Gold Member khi đủ điểm tích lũy
                            </div>
                            <a class="btn btn-doc-outline" href="#">Xem thêm</a>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="documentation-index">
                            <a href="/documentation/joomla-templates/rhino">
                                <img src="https://gaspa.vn/wp-content/uploads/2019/05/gold-1.jpg" alt="Joomla Templates">
                            </a>
                            <h2>Gold Member</h2>
                            <div class="documentation-shortdesc">
                               Giảm 5% khi sử dụng dịch vụ tại Gà Spa (Áp dụng cho tất cả dịch vụ).
                                Tích lũy đủ 10.000.000 khi sử dụng dịch vụ tại Gà Spa.
                                Được nâng cấp lên thành Diamond Member khi đủ điểm tích lũy.
                            </div>
                            <a class="btn btn-doc-outline"  href="#">Xem thêm</a>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="documentation-index">
                            <a href="/documentation/joomla-extensions/sp-easyimagegallery">
                                <img src="https://gaspa.vn/wp-content/uploads/2019/05/diamond-1.jpg" alt="Joomla Extensions">
                            </a>
                            <h2>Diamond Member</h2>
                            <div class="documentation-shortdesc">
                                Giảm 10% khi sử dụng dịch vụ. Gà Spa (Áp dụng cho tất cả dịch vụ).
                                Tích lũy đủ 20.000.000 khi sử dụng dịch vụ tại Gà Spa.
                                Được nâng cấp lên thành Platinum Member khi đủ điểm tích lũy
                            </div>
                            <a class="btn btn-doc-outline"  href="#">Xem thêm</a>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="documentation-index">
                            <a href="/documentation/joomla-extensions/sp-easyimagegallery">
                                <img src="https://gaspa.vn/wp-content/uploads/2019/05/diamond-1.jpg" alt="Joomla Extensions">
                            </a>
                            <h2>Diamond Member</h2>
                            <div class="documentation-shortdesc">
                                Giảm 10% khi sử dụng dịch vụ. Gà Spa (Áp dụng cho tất cả dịch vụ).
                                Tích lũy đủ 20.000.000 khi sử dụng dịch vụ tại Gà Spa.
                                Được nâng cấp lên thành Platinum Member khi đủ điểm tích lũy
                            </div>
                            <a class="btn btn-doc-outline"  href="#">Xem thêm</a>
                        </div>
                    </div>



                </div>
            </div>
        </div>
    </div>


</asp:Content>
