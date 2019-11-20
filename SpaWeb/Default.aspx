<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SpaWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <div class="top1">
        <div class="container">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="http://placehold.it/1200x400/16a085/ffffff&text=About Us">
                        <div class="carousel-caption">
                            <h3>Headline</h3>
                            <p>
                                Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                        tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                        ipsum dolor sit amet, consetetur sadipscing elitr.
                            </p>
                        </div>
                    </div>
                    <!-- End Item -->
                    <div class="item">
                        <img src="http://placehold.it/1200x400/e67e22/ffffff&text=Projects">
                        <div class="carousel-caption">
                            <h3>Headline</h3>
                            <p>
                                Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                        tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                        ipsum dolor sit amet, consetetur sadipscing elitr.
                            </p>
                        </div>
                    </div>
                    <!-- End Item -->
                    <div class="item">
                        <img src="http://placehold.it/1200x400/2980b9/ffffff&text=Portfolio">
                        <div class="carousel-caption">
                            <h3>Headline</h3>
                            <p>
                                Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                        tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                        ipsum dolor sit amet, consetetur sadipscing elitr.
                            </p>
                        </div>
                    </div>
                    <!-- End Item -->
                    <div class="item">
                        <img src="http://placehold.it/1200x400/8e44ad/ffffff&text=Services">
                        <div class="carousel-caption">
                            <h3>Headline</h3>
                            <p>
                                Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                        tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                        ipsum dolor sit amet, consetetur sadipscing elitr.
                            </p>
                        </div>
                    </div>
                    <!-- End Item -->
                </div>
                <!-- End Carousel Inner -->
                <ul class="nav nav-pills nav-justified">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#">About<small>Lorem
                ipsum dolor sit</small></a></li>
                    <li data-target="#myCarousel" data-slide-to="1"><a href="#">Projects<small>Lorem ipsum
                dolor sit</small></a></li>
                    <li data-target="#myCarousel" data-slide-to="2"><a href="#">Portfolio<small>Lorem ipsum
                dolor sit</small></a></li>
                    <li data-target="#myCarousel" data-slide-to="3"><a href="#">Services<small>Lorem ipsum
                dolor sit</small></a></li>
                </ul>
            </div>
            <!-- End Carousel -->
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $('#myCarousel').carousel({
                interval: 1000
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
    <h1>Responsive CSS Tabs</h1>
    <div class="tab_container">
        <input id="tab1" type="radio" name="tabs" checked>
        <label for="tab1"><i class="fa fa-code"></i><span>Code</span></label>

        <input id="tab2" type="radio" name="tabs">
        <label for="tab2"><i class="fa fa-pencil-square-o"></i><span>About</span></label>

        <input id="tab3" type="radio" name="tabs">
        <label for="tab3"><i class="fa fa-bar-chart-o"></i><span>Services</span></label>



        <section id="content1" class="tab-content">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="//placeimg.com/280/180/tech" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title border-bottom pb-3">Card title <a href="#" class="float-right d-inline-flex share"><i class="fas fa-share-alt text-primary"></i></a></h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="float-right">Read more <i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="//placeimg.com/280/180/tech" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title border-bottom pb-3">Card title <a href="#" class="float-right btn btn-sm btn-info d-inline-flex share"><i class="fas fa-share-alt"></i></a></h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-sm btn-info float-right">Read more <i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card bg-light">
                        <img class="card-img-top" src="//placeimg.com/280/180/tech" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title border-bottom pb-3">Card title <a href="#" class="float-right btn btn-sm btn-info d-inline-flex share"><i class="fas fa-share-alt"></i></a></h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-sm btn-info float-right">Read more <i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
        </section>

        <section id="content2" class="tab-content">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="//placeimg.com/280/180/tech" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title border-bottom pb-3">Card title <a href="#" class="float-right d-inline-flex share"><i class="fas fa-share-alt text-primary"></i></a></h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="float-right">Read more <i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="//placeimg.com/280/180/tech" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title border-bottom pb-3">Card title <a href="#" class="float-right btn btn-sm btn-info d-inline-flex share"><i class="fas fa-share-alt"></i></a></h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-sm btn-info float-right">Read more <i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card bg-light">
                        <img class="card-img-top" src="//placeimg.com/280/180/tech" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title border-bottom pb-3">Card title <a href="#" class="float-right btn btn-sm btn-info d-inline-flex share"><i class="fas fa-share-alt"></i></a></h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-sm btn-info float-right">Read more <i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
        </section>

        <section id="content3" class="tab-content">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="//placeimg.com/280/180/tech" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title border-bottom pb-3">Card title <a href="#" class="float-right d-inline-flex share"><i class="fas fa-share-alt text-primary"></i></a></h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="float-right">Read more <i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img class="card-img-top" src="//placeimg.com/280/180/tech" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title border-bottom pb-3">Card title <a href="#" class="float-right btn btn-sm btn-info d-inline-flex share"><i class="fas fa-share-alt"></i></a></h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-sm btn-info float-right">Read more <i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card bg-light">
                        <img class="card-img-top" src="//placeimg.com/280/180/tech" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title border-bottom pb-3">Card title <a href="#" class="float-right btn btn-sm btn-info d-inline-flex share"><i class="fas fa-share-alt"></i></a></h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-sm btn-info float-right">Read more <i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
        </section>


    </div>
    <!-- ./Tabs -->
    <div class="row" style="height: 500px; background-color: aqua; width: 100%; margin: 0px; padding-top: 100px">
        <div class="row" style="height: 300px; margin-top: 100px; width: 100%; margin: 0px">
            <div class="col-md-4" style="height: 300px; background-color: azure">
                <asp:Repeater ID="Repeater1" runat="server">

                </asp:Repeater>
            </div>
            <div class="col-md-8" style="height: 300px; background-color: chocolate">
            </div>

        </div>

    </div>
    <%--   //tab--%>
    <div class="container">
        <h1>Use Bootstrap 3's carousel to show multiple items per slide.</h1>
        <div class="row">
            <div class="col-md-12">
                <div class="carousel slide multi-item-carousel" id="theCarousel">
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://source.unsplash.com/300x300/?perth,australia" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://source.unsplash.com/300x300/?fremantle,australia" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://source.unsplash.com/300x300/?west-australia" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://source.unsplash.com/300x300/?perth" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://source.unsplash.com/300x300/?quokka,perth" class="img-responsive"></a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://source.unsplash.com/300x300/?margaretriver,australia" class="img-responsive"></a>
                            </div>
                        </div>
                        <!-- add  more items here -->
                        <!-- Example item start:  -->

                        <div class="item">
                            <div class="col-xs-4">
                                <a href="#1">
                                    <img src="https://source.unsplash.com/300x300/?perth,australia&r=7" class="img-responsive"></a>
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
                    <div class="col-sm-4">
                        <div class="documentation-index">
                            <a href="/documentation/sp-page-builder/sp-page-builder-2-x">
                                <img src="//www.joomshaper.com/images/2017/01/27/page-builder.png" alt="SP Page Builder">
                            </a>
                            <h2>SP Page Builder</h2>
                            <div class="documentation-shortdesc">
                                The complete knowledge base and best crafted guide to SP Page Builder you will ever need.
                            </div>
                            <a class="btn btn-doc-outline" href="/documentation/sp-page-builder/sp-page-builder-2-x">View Documentation</a>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="documentation-index">
                            <a href="/documentation/joomla-templates/rhino">
                                <img src="//www.joomshaper.com/images/2017/01/27/template.png" alt="Joomla Templates">
                            </a>
                            <h2>Joomla Templates</h2>
                            <div class="documentation-shortdesc">
                                Explore our extensive resources to get an in-depth understanding on our Joomla templates.
                            </div>
                            <a class="btn btn-doc-outline" href="/documentation/joomla-templates/rhino">View Documentation</a>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="documentation-index">
                            <a href="/documentation/joomla-extensions/sp-easyimagegallery">
                                <img src="//www.joomshaper.com/images/2017/01/27/extensions.png" alt="Joomla Extensions">
                            </a>
                            <h2>Joomla Extensions</h2>
                            <div class="documentation-shortdesc">
                                Learn ins and outs of our powerful, innovative and world wide used extensions for Joomla.
                            </div>
                            <a class="btn btn-doc-outline" href="/documentation/joomla-extensions/sp-easyimagegallery">View Documentation</a>
                        </div>
                    </div>



                </div>
            </div>
        </div>
    </div>


</asp:Content>
