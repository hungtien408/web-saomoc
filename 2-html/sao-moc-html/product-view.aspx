<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product-view.aspx.cs" Inherits="product_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link href="assets/styles/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="productView" class="view-wrap">
        <div class="close-view"><a class="closea" href="javascript:void(0);">X</a></div>
        <div class="view-in">
            <div class="product-price text-center">The PC Wire is made from high carbon steel drawn to size meeting the requirements for most pre-stressed concrete works. Surface type includes Chervon, Crimped, Indented and Plain</div>
            <div class="wrapper-slider">
                <div class="slider-in">
                    <div id="proSlider">
                        <div class="slide">
                            <div class="product-box">
                                <div class="product-img">
                                   <a class="product-imgs" href="product-detail.aspx"><img src="assets/images/hinh1.jpg" alt=""/></a>
                                </div>
                                <div class="product-content">
                                    <div class="product-name">
                                        <a href="product-detail.aspx">Oval Indented</a>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        <div class="slide">
                            <div class="product-box">
                                <div class="product-img">
                                   <a class="product-imgs" href="product-detail.aspx"><img src="assets/images/hinh2.jpg" alt=""/></a>
                                </div>
                                <div class="product-content">
                                    <div class="product-name">
                                        <a href="product-detail.aspx">Oval Indented</a>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        <div class="slide">
                            <div class="product-box">
                                <div class="product-img">
                                   <a class="product-imgs" href="product-detail.aspx"><img src="assets/images/hinh4.jpg" alt=""/></a>
                                </div>
                                <div class="product-content">
                                    <div class="product-name">
                                        <a href="product-detail.aspx">Oval Indented</a>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                       <div class="slide">
                            <div class="product-box">
                                <div class="product-img">
                                   <a class="product-imgs" href="product-detail.aspx"><img src="assets/images/hinh3.jpg" alt=""/></a>
                                </div>
                                <div class="product-content">
                                    <div class="product-name">
                                        <a href="product-detail.aspx">Oval Indented</a>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        <div class="slide">
                            <div class="product-box">
                                <div class="product-img">
                                   <a class="product-imgs" href="product-detail.aspx"><img src="assets/images/hinh4.jpg" alt=""/></a>
                                </div>
                                <div class="product-content">
                                    <div class="product-name">
                                        <a href="product-detail.aspx">Oval Indented</a>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div data-id="proSlider" class="control-slider"><a href="javascript:void(0);" class="prev fa fa-angle-left"></a><a href="javascript:void(0);" class="next fa fa-angle-right"></a></div>
        </div>
    </div>
    </form>
</body>
</html>
