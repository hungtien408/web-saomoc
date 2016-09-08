<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <title>SM</title>
    <meta name="description" content="SM" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="banner" class="slider-wrapper theme-default">
        <div id="sliderBanner"  class="nivoSlider">
            <div class="slide">
                <img src="assets/images/slider2.jpg" alt="" title="#htmlcaption1"/>
            </div>
            <div class="slide">
                <img src="assets/images/slider3.jpg" alt="" title="#htmlcaption2"/>
            </div>
            <%--<div class="slide"><img src="assets/images/slider2.jpg" alt=""/>
                <div class="banner-text">
                    <p><strong>Your Value </strong></p>
                     <p><span>Is Our Inspiration</span></p>
                </div>
            </div>
            <div class="slide"><img src="assets/images/slider3.jpg" alt=""/>
                <div class="banner-text">
                    <p><strong>Your Value </strong></p>
                     <p><span>Is Our Inspiration</span></p>
                </div>
            </div>--%>
        </div>
           <div id="htmlcaption1" class="nivo-html-caption">
             <div class="banner-text">
                <p><strong>Your Value </strong></p>
                 <p><span>Is Our Inspiration</span></p>
            </div>
        </div>
          <div id="htmlcaption2" class="nivo-html-caption">
             <div class="banner-text">
                <p><strong>Your Value </strong></p>
                <p><span>Is Our Inspiration</span></p>
            </div>
        </div>
    </div>
    <div class="container-bg">
        <div class="container">
            <div class="title-product">
                <h3>Our Products</h3>
            </div>
            <div class="wrapper-product">
                <div class="row">
                    <div class="col-md-6">
                        <div class="pro-box">
                            <img src="assets/images/img1.jpg" />
                            <div class="pro-content">
                                <div class="pro-text">
                                    <h2>PC STRAND</h2>
                                    <p>Jupiter Trading Service Company Limited is based
                                      in Ho Chi Minh City, Viet Nam. We provide innovati
                                      ve alternatives to obtaining as</p>
                                </div>
                                <div class="view-details">
                                    <a href="#"><span class="fa fa-angle-right"></span></a>
                                </div>
                                <a href="#">View more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="pro-box">
                            <img src="assets/images/img2.jpg" />
                             <div class="pro-content">
                                <div class="pro-text">
                                    <h2>PC WIRE</h2>
                                    <p>Jupiter Trading Service Company Limited is based
                                      in Ho Chi Minh City, Viet Nam. We provide innovati
                                      ve alternatives to obtaining as</p>
                                </div>
                                <div class="view-details">
                                    <a href="#"><span class="fa fa-angle-right"></span></a>
                                </div>
                                  <a href="#">View more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="pro-box">
                            <img src="assets/images/img3.jpg" />
                             <div class="pro-content">
                                <div class="pro-text">
                                    <h2>PC BAR</h2>
                                    <p>Jupiter Trading Service Company Limited is based
                                      in Ho Chi Minh City, Viet Nam. We provide innovati
                                      ve alternatives to obtaining as</p>
                                </div>
                                <div class="view-details">
                                    <a href="#"><span class="fa fa-angle-right"></span></a>
                                </div>
                                  <a href="#">View more</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="pro-box">
                            <img src="assets/images/img4.jpg" />
                             <div class="pro-content">
                                <div class="pro-text">
                                    <h2>OTHER PRODUCTS                                         & ACCESSORIES</h2>
                                    <p>Jupiter Trading Service Company Limited is based
                                      in Ho Chi Minh City, Viet Nam. We provide innovati
                                      ve alternatives to obtaining as</p>
                                </div>
                                <div class="view-details">
                                    <a href="#"><span class="fa fa-angle-right"></span></a>
                                </div>
                                  <a href="#">View more</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="title-box">
                 <div class="main-title">
                    <h3><span>Our Projects</span></h3>
                 </div>
               <%-- <div data-id="silderProduct" class="control-slider">
                    <a href="javascript:void(0);" class="prev"><span class="fa fa-angle-left"></span></a>
                    <a href="javascript:void(0);" class="next"><span class="fa fa-angle-right"></span></a>
                </div>--%>
            </div>
            <div class="wrap-content">
                <div class="pro-row">
                    <div id="silderProjects" class="list-pro owl-carousel">
                        <div class="item">
                            <div class="product-box">
                                <a href="project-detail.aspx" class="product-img"><img src="assets/images/img15.jpg" alt=""/></a>
                                <h4 class="product-name"><a href="project-detail.aspx">Vincom Rach Gia</a></h4>
                            </div>
                        </div>
                        <div class="item">
                            <div class="product-box">
                                <a href="project-detail.aspx" class="product-img"><img src="assets/images/img16.jpg" alt=""/></a>
                                <h4 class="product-name"><a href="project-detail.aspx">Căn hộ Estella Heights</a></h4>
                            </div>
                        </div>
                        <div class="item">
                            <div class="product-box">
                                <a href="project-detail.aspx" class="product-img"><img src="assets/images/img17.jpg" alt=""/></a>
                                <h4 class="product-name"><a href="project-detail.aspx">Vinhomes Central</a></h4>
                            </div>
                        </div>
                        <div class="item">
                            <div class="product-box">
                                <a href="#" class="product-img"><img src="assets/images/img18.jpg" alt=""/></a>
                                <h4 class="product-name"><a href="#">Thong Nhat railway</a></h4>
                            </div>
                        </div>
                        <div class="item">
                            <div class="product-box">
                                <a href="#" class="product-img"><img src="assets/images/img17.jpg" alt=""/></a>
                                <h4 class="product-name"><a href="#">Vinhomes Central</a></h4>
                            </div>
                        </div>
                        <div class="item">
                            <div class="product-box">
                                <a href="#" class="product-img"><img src="assets/images/img15.jpg" alt=""/></a>
                                <h4 class="product-name"><a href="#">Vincom Rach Gia</a></h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             <div class="title-box">
                 <div class="main-title">
                    <h3><span>News</span></h3>
                 </div>
                 <div class="view-more">
                    <a href="#">Xem thêm</a>
                 </div>
            </div>
            <div class="wrapper-news">
                <div class="row">
                    <div class="col-md-6">
                        <div class="news-box">
                            <div class="news-img">
                                <a href="news-detail.aspx"><img src="assets/images/hinh1.jpg" /></a>
                            </div>
                            <div class="news-content">
                                <h4><a href="news-detail.aspx">Technological support the introduction</a></h4>
                                <div class="description">Our company remained consistent and disciplined in pursuing the targeted expansion of its market position.</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="news-box">
                            <div class="news-img">
                                <a href="news-detail.aspx"><img src="assets/images/hinh1.jpg" /></a>
                            </div>
                            <div class="news-content">
                                <h4><a href="news-detail.aspx">Technological support the introduction</a></h4>
                                <div class="description">Our company remained consistent and disciplined in pursuing the targeted expansion of its market position.</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

