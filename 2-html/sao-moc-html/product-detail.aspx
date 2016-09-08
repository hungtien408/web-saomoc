<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="product-detail.aspx.cs" Inherits="product_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-bg bor-top">
        <div class="container">
             <div id="site" class="corner">
                <div class="container">
                    <a id="A1" href="~/" runat="server"><span>Trang chủ</span></a>/<a href="product.aspx">Product</a>/<span>PC BAR</span>
                </div>
            </div>
            <div class="product-main">
                <div class="product-left">
                    <div id="sliderDetails" class="detail-images">
                        <div class="wrap-images">
                            <div class="detailimg-desktop">
                                <div class="zoom-box">
                                    <a id="zoom1" href="#" class="cloud-zoom" rel="showTitle: false, adjustY:0, adjustX:5">
                                             <img class="img-responsive" src="assets/images/details-img-2.jpg" alt=""/>
                                     </a>
                                </div>
                            </div>
                        </div>
                        <div class="wrapper-in">
                            <div class="wrapper-7">
                                <div class="slider-nav">
                                    <div class="slide">
                                        <a href='assets/images/details-big-1.jpg' data-img='assets/images/details-img-1.jpg' class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-1.jpg'">
                                            <span><img src="assets/images/details-small-1.jpg" alt=""/></span>
                                        </a>
                                    </div>
                                    <div class="slide">
                                        <a href='assets/images/details-big-2.jpg' data-img='assets/images/details-img-2.jpg' class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-2.jpg'">
                                            <span><img src="assets/images/details-small-2.jpg" alt=""/></span>
                                        </a>
                                    </div>
                                    <div class="slide">
                                        <a href='assets/images/details-big-3.jpg' data-img='assets/images/details-img-3.jpg' class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-3.jpg'">
                                            <span><img src="assets/images/details-small-3.jpg" alt=""/></span>
                                        </a>
                                    </div>
                                    <div class="slide">
                                        <a href='assets/images/details-big-4.jpg' data-img='assets/images/details-img-4.jpg' class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-4.jpg'">
                                            <span><img src="assets/images/details-small-4.jpg" alt=""/></span>
                                        </a>
                                    </div>
                                    <div class="slide">
                                        <a href='assets/images/details-big-1.jpg' data-img='assets/images/details-img-1.jpg' class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/details-img-1.jpg'">
                                            <span><img src="assets/images/details-small-1.jpg" alt=""/></span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-right">
                    <div class="pruduct-content">
                        <h1>PC BAR</h1>
                        <p>Our PC bar is made from medium carbon and low alloy steel, 30MnSi  are mainly used as the reinforcing wires of pre-stressed high-strength concrete (PHC) pile</p>
                    </div>
                    <div id="tabs" class="tab-product">
                      <ul>
                        <li><a href="#tabs-1">Nunc tincidunt</a></li>
                        <li><a href="#tabs-2">Proin dolor</a></li>
                        <li><a href="#tabs-3">Aenean lacinia</a></li>
                      </ul>
                      <div id="tabs-1">
                        <div class="tab-box">
                            <p>Material and character</p>
                            <p>Grade: 30MnSi</p>
                            <p>Size:  7.1, 9.0, 10.7, 12.6mm（or according to your instruction）</p>
                            <p>Chemical composition of pc steel bar</p>
                        </div>
                      </div>
                      <div id="tabs-2">
                         <div class="tab-box">
                            <p>Material and character</p>
                            <p>Grade: 30MnSi</p>
                            <p>Size:  7.1, 9.0, 10.7, 12.6mm（or according to your instruction）</p>
                            <p>Chemical composition of pc steel bar</p>
                             <p>Material and character</p>
                            <p>Grade: 30MnSi</p>
                            <p>Size:  7.1, 9.0, 10.7, 12.6mm（or according to your instruction）</p>
                            <p>Chemical composition of pc steel bar</p>
                        </div>
                      </div>
                      <div id="tabs-3">
                         <div class="tab-box">
                            <p>Material and character</p>
                            <p>Grade: 30MnSi</p>
                            <p>Size:  7.1, 9.0, 10.7, 12.6mm（or according to your instruction）</p>
                            <p>Chemical composition of pc steel bar</p>
                            <p>Material and character</p>
                        </div>
                      </div>
                    </div>
                </div>
            </div>
             <div class="title-box">
                 <div class="main-title">
                    <h3><span>Projects</span></h3>
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
                                <a href="#" class="product-img"><img src="assets/images/img17.jpg" alt=""/></a>
                                <h4 class="product-name"><a href="#">Vinhomes Central</a></h4>
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
        </div>
    </div>
</asp:Content>

