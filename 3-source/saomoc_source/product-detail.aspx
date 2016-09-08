<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="product-detail.aspx.cs" Inherits="product_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-bg bor-top">
        <div class="container">
            <div id="site" class="corner">
                <div class="container">
                    <a id="A1" href="~/" runat="server"><span>Home</span></a>/<a href="product.aspx">Product</a>/<span><asp:Label
                        ID="lblTitle" runat="server" Text=""></asp:Label></span>
                </div>
            </div>
            <div class="product-main">
                <div class="product-left">
                    <asp:ListView ID="lstProductDetailImage" runat="server" DataSourceID="odsProductDetailImage"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="slide">
                                <a href='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/" + Eval("ImageName") : "assets/images/details-big-1.jpg" %>'
                                    data-img='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/thumbs/" + Eval("ImageName") : "assets/images/details-img-1.jpg" %>'
                                    class='cloud-zoom-gallery small-img' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: '<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "res/product/album/thumbs/" + Eval("ImageName") : "assets/images/details-img-1.jpg" %>'">
                                    <span>
                                        <img id="Img2" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/thumbs/" + Eval("ImageName") : "~/assets/images/details-small-1.jpg" %>'
                                            runat="server" /></span> </a>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div id="sliderDetails" class="detail-images">
                                <div class="wrap-images">
                                    <div class="detailimg-desktop">
                                        <div class="zoom-box">
                                            <%--<a id="zoom1" href='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/details-big-1.jpg" %>'
                                                class="cloud-zoom" rel="showTitle: false, adjustY:0, adjustX:5">
                                                <img id="Img1" class="img-responsive" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/thumbs/" + Eval("ImageName") : "~/assets/images/details-img-2.jpg" %>'
                                                    runat="server" />
                                            </a>--%>
                                            <a id="zoom1" href="assets/images/fanreel-loader.gif" class="cloud-zoom" rel="showTitle: false, zoomWidth: '350', adjustY:0, adjustX:5">
                                                <img class="img-responsive" src="assets/images/fanreel-loader.gif" alt="" />
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrapper-in">
                                    <div class="wrapper-7">
                                        <div class="slider-nav">
                                            <span runat="server" id="itemPlaceholder" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsProductDetailImage" runat="server" SelectMethod="ProductImageSelectAll"
                        TypeName="TLLib.ProductImage">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
                <div class="product-right">
                    <asp:ListView ID="lstProductDetails" runat="server" DataSourceID="odsProductDetails"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="pruduct-content">
                                <h1>
                                    <%# Eval("ProductName") %></h1>
                                <p>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label></p>
                            </div>
                            <div id="tabs" class="tab-product">
                                <ul>
                                    <li><a href="#tabs-1">Specification</a></li>
                                    <li><a href="#tabs-2">Manufacturer</a></li>
                                    <li><a href="#tabs-3">More</a></li>
                                </ul>
                                <div id="tabs-1">
                                    <div class="tab-box">
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Specification") %>'></asp:Label>
                                    </div>
                                </div>
                                <div id="tabs-2">
                                    <div class="tab-box">
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductApplicant") %>'></asp:Label>
                                    </div>
                                </div>
                                <div id="tabs-3">
                                    <div class="tab-box">
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("MajorApplication") %>'></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsProductDetails" runat="server" SelectMethod="ProductSelectOne"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
            <div class="title-box">
                <div class="main-title">
                    <h3>
                        <span>Projects</span></h3>
                </div>
                <%-- <div data-id="silderProduct" class="control-slider">
                    <a href="javascript:void(0);" class="prev"><span class="fa fa-angle-left"></span></a>
                    <a href="javascript:void(0);" class="next"><span class="fa fa-angle-right"></span></a>
                </div>--%>
            </div>
            <div class="wrap-content">
                <div class="pro-row">
                    <div id="silderProjects" class="list-pro owl-carousel">
                        <asp:ListView ID="lstOurProject" runat="server" DataSourceID="odsOurProject" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="item">
                                    <div class="product-box">
                                        <a href='<%# progressTitle(Eval("ProductName")) + "-pj-" + Eval("ProductID") + ".aspx" %>'
                                            class="product-img">
                                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/img15.jpg" %>'
                                                runat="server" /></a>
                                        <h4 class="product-name">
                                            <a href='<%# progressTitle(Eval("ProductName")) + "-pj-" + Eval("ProductID") + ".aspx" %>'>
                                                <%# Eval("ProductName") %></a></h4>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsOurProject" runat="server" SelectMethod="ProductSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter Name="StartRowIndex" Type="String" />
                                <asp:Parameter Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="PriceFrom" Type="String" />
                                <asp:Parameter Name="PriceTo" Type="String" />
                                <asp:Parameter DefaultValue="2" Name="CategoryID" Type="String" />
                                <asp:Parameter Name="ManufacturerID" Type="String" />
                                <asp:Parameter Name="OriginID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="InStock" Type="String" />
                                <asp:Parameter Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="IsBestSeller" Type="String" />
                                <asp:Parameter Name="IsSaleOff" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
