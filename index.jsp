<%-- 
    Document   : index
    Created on : Apr 6, 2021, 12:17:46 PM
    Author     : omniahassan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="Header.jsp" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Ustora Demo</title>

        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/responsive.css">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>

      

        <div class="slider-area">
            <!-- Slider -->
            <div class="block-slider block-slider4">
                <ul class="" id="bxslider-home4">
                    <li>
                        <img src="img/h4-slide.png" alt="Slide">

                        <div class="caption-group">
                            <h2 class="caption title">
                                iPhone <span class="primary">6 <strong>Plus</strong></span>
                            </h2>
                            <h4 class="caption subtitle">Dual SIM</h4>
                            <a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
                        </div>
                    </li>
                    <li>
                        <!--                                            <img src="img/h4-slide2.png" alt="Slide">-->
                        <img src="https://www.pngitem.com/pimgs/m/194-1945689_transparent-laptops-png-laptop-banner-image-in-png.png" alt="Slide" style="width:500px;height:400px;">
                        <div class="caption-group">
                            <h2 class="caption title">
                                buy one, get one <span class="primary">50% <strong>off</strong></span>
                            </h2>
                            <h4 class="caption subtitle">laptops & tablets.</h4>
                            <a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
                        </div>
                    </li>
                    <li>
                        <!--                                            <img src="img/h4-slide3.png" alt="Slide">-->
<!--                        <img src="https://image.pngaaa.com/107/188107-middle.png" alt="Slide" style="width:500px;height:400px;">-->
                        <img src="data:image/jpeg;base64,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" alt="Slide" style="width:500px;height:400px;">
                        <div class="caption-group">
                            <h2 class="caption title">
                                Modern <span class="primary"> Mobile <strong> Phones</strong></span>
                            </h2>
                            <h4 class="caption subtitle">Huge variety</h4>
                            <a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
                        </div>
                    </li>
                    <li>
<!--                        <img src="img/h4-slide4.png" alt="Slide">-->
<img src="https://www.pngitem.com/pimgs/m/140-1405222_mobile-phone-brand-mobile-phone-brand-logo-hd.png" alt="Slide" style="width:500px;height:400px;">
<div class="caption-group">
                            <h2 class="caption title">
                                All <span class="primary">Brands <strong>Available</strong></span>
                            </h2>
                            <h4 class="caption subtitle">& More</h4>
                            <a class="caption button-radius" href="#"><span class="icon"></span>Shop now</a>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- ./Slider -->
        </div> <!-- End slider area -->

        <div class="promo-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo1">
                            <i class="fa fa-refresh"></i>
                            <p>30 Days return</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo2">
                            <i class="fa fa-truck"></i>
                            <p>Free shipping</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo3">
                            <i class="fa fa-lock"></i>
                            <p>Secure payments</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo4">
                            <i class="fa fa-gift"></i>
                            <p>New products</p>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End promo area -->

        <div class="maincontent-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="latest-product">
                            <h2 class="section-title">Latest Products</h2>
                            <div class="product-carousel">
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-1.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="single-product.html" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="single-product.html">Samsung Galaxy s5- 2015</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$700.00</ins> <del>$100.00</del>
                                    </div> 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-2.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="single-product.html" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2>Nokia Lumia 1320</h2>
                                    <div class="product-carousel-price">
                                        <ins>$899.00</ins> <del>$999.00</del>
                                    </div> 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-3.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="single-product.html" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2>LG Leon 2015</h2>

                                    <div class="product-carousel-price">
                                        <ins>$400.00</ins> <del>$425.00</del>
                                    </div>                                 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-4.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="single-product.html" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="single-product.html">Sony microsoft</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$200.00</ins> <del>$225.00</del>
                                    </div>                            
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-5.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="single-product.html" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2>iPhone 6</h2>

                                    <div class="product-carousel-price">
                                        <ins>$1200.00</ins> <del>$1355.00</del>
                                    </div>                                 
                                </div>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <img src="img/product-6.jpg" alt="">
                                        <div class="product-hover">
                                            <a href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="single-product.html" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2><a href="single-product.html">Samsung gallaxy note 4</a></h2>

                                    <div class="product-carousel-price">
                                        <ins>$400.00</ins>
                                    </div>                            
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End main content area -->

        <div class="brands-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="brand-wrapper">
                            <div class="brand-list">
                                <img src="img/brand1.png" alt="">
                                <img src="img/brand2.png" alt="">
                                <img src="img/brand3.png" alt="">
                                <img src="img/brand4.png" alt="">
                                <img src="img/brand5.png" alt="">
                                <img src="img/brand6.png" alt="">
                                <img src="img/brand1.png" alt="">
                                <img src="img/brand2.png" alt="">                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End brands area -->

        <div class="product-widget-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="single-product-widget">
                            <h2 class="product-wid-title">Top Sellers</h2>
                            <!--                        <a href="" class="wid-view-more">View All</a>-->
                            <div class="single-wid-product">
                                <a href="single-product.html"><img src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.html">Sony Smart TV - 2015</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                            <div class="single-wid-product">
                                <a href="single-product.html"><img src="img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.html">Apple new mac book 2015</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                            <div class="single-wid-product">
                                <a href="single-product.html"><img src="img/product-thumb-3.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.html">Apple new i phone 6</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-product-widget">
                            <h2 class="product-wid-title">Recently Viewed</h2>
                            <!--                        <a href="#" class="wid-view-more">View All</a>-->
                            <div class="single-wid-product">
                                <a href="single-product.html"><img src="img/product-thumb-4.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.html">Sony playstation microsoft</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                            <div class="single-wid-product">
                                <a href="single-product.html"><img src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.html">Sony Smart Air Condtion</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                            <div class="single-wid-product">
                                <a href="single-product.html"><img src="img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.html">Samsung gallaxy note 4</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-product-widget">
                            <h2 class="product-wid-title">Top New</h2>
                            <!--                        <a href="#" class="wid-view-more">View All</a>-->
                            <div class="single-wid-product">
                                <a href="single-product.html"><img src="img/product-thumb-3.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.html">Apple new i phone 6</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                            <div class="single-wid-product">
                                <a href="single-product.html"><img src="img/product-thumb-4.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.html">Samsung gallaxy note 4</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                            <div class="single-wid-product">
                                <a href="single-product.html"><img src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
                                <h2><a href="single-product.html">Sony playstation microsoft</a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$400.00</ins> <del>$425.00</del>
                                </div>                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End product widget area -->

        <div class="footer-top-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-about-us">
                            <h2>u<span>Stora</span></h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit, debitis, quisquam. Laborum commodi veritatis magni at?</p>
                            <div class="footer-social">
                                <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                                <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                                <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                                <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div class="footer-menu">
                            <h2 class="footer-wid-title">User Navigation </h2>
                            <ul>
                                <li><a href="#">My account</a></li>
                                <li><a href="#">Order history</a></li>
                                <li><a href="#">Wishlist</a></li>
                                <li><a href="#">Vendor contact</a></li>
                                <li><a href="#">Front page</a></li>
                            </ul>                        
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div class="footer-menu">
                            <h2 class="footer-wid-title">Categories</h2>
                            <ul>
                                <li><a href="#">Mobile Phone</a></li>
                                <li><a href="#">Home accesseries</a></li>
                                <li><a href="#">LED TV</a></li>
                                <li><a href="#">Computer</a></li>
                                <li><a href="#">Gadets</a></li>
                            </ul>                        
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div class="footer-newsletter">
                            <h2 class="footer-wid-title">Newsletter</h2>
                            <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                            <div class="newsletter-form">
                                <form action="#">
                                    <input type="email" placeholder="Type your email">
                                    <input type="submit" value="Subscribe">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End footer top area -->

        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="copyright">
                            <p>&copy; 2015 uCommerce. All Rights Reserved. <a href="http://www.freshdesignweb.com" target="_blank">freshDesignweb.com</a></p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="footer-card-icon">
                            <i class="fa fa-cc-discover"></i>
                            <i class="fa fa-cc-mastercard"></i>
                            <i class="fa fa-cc-paypal"></i>
                            <i class="fa fa-cc-visa"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End footer bottom area -->

        <!-- Latest jQuery form server -->
        <script src="https://code.jquery.com/jquery.min.js"></script>

        <!-- Bootstrap JS form CDN -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

        <!-- jQuery sticky menu -->
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.sticky.js"></script>

        <!-- jQuery easing -->
        <script src="js/jquery.easing.1.3.min.js"></script>

        <!-- Main Script -->
        <script src="js/main.js"></script>

        <!-- Slider -->
        <script type="text/javascript" src="js/bxslider.min.js"></script>
        <script type="text/javascript" src="js/script.slider.js"></script>
    </body>
</html>