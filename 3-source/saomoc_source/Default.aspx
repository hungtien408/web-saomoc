<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <title>JUPITER</title>
    <meta name="description" content="JUPITER" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="banner" class="slider-wrapper theme-default">
        <div id="sliderBanner" class="nivoSlider">
            <asp:ListView ID="lstBanner" runat="server" DataSourceID="odsBanner" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="slide">
                        <img title='<%# "#htmlcaption" + Eval("AdsBannerID") %>' alt='<%# Eval("FileName") %>'
                            src='<%# !string.IsNullOrEmpty(Eval("FileName").ToString()) ? "~/res/advertisement/" + Eval("FileName") : "~/assets/images/slider1.jpg" %>'
                            runat="server" />
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsBanner" runat="server" SelectMethod="AdsBannerSelectAll"
                TypeName="TLLib.AdsBanner">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
                    <asp:Parameter Name="CompanyName" Type="String" />
                    <asp:Parameter Name="Website" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <asp:ListView ID="lstTitleBanner" runat="server" DataSourceID="odsBanner" EnableModelValidation="True">
            <ItemTemplate>
                <div id='<%# "htmlcaption" + Eval("AdsBannerID") %>' class="nivo-html-caption">
                    <div class="banner-text">
                        <p>
                            <strong>
                                <%# Eval("Title1") %></strong>
                        </p>
                        <p>
                            <span>
                                <%# Eval("Title2") %></span></p>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
    </div>
    <div class="container-bg">
        <div class="container">
            <div class="title-product">
                <h3>
                    Our Products</h3>
                <p>
                    The PC Wire is made from high carbon steel drawn to size meeting the requirements
                    for most pre-stressed concrete works. Surface type includes Chervon, Crimped, Indented
                    and Plain</p>
            </div>
            <div class="wrapper-product">
                <div class="row produc-tblist">
                    <asp:ListView ID="lstProductCategory" runat="server" DataSourceID="odsProductCategory"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="col-md-6 element-item">
                                <div class="pro-box">
                                    <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/productcategory/" + Eval("ImageName") : "~/assets/images/img1.jpg" %>'
                                        runat="server" />
                                    <div class="pro-content">
                                        <div class="pro-text">
                                            <h2>
                                                <%# Eval("ProductCategoryName") %></h2>
                                            <p>
                                                <%# Eval("Description")%></p>
                                        </div>
                                        <div class="view-details">
                                            <a class="link-view" href='<%# progressTitle(Eval("ProductCategoryName")) + "-prv-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                                <span class="fa fa-angle-right"></span></a>
                                        </div>
                                        <a class="link-view" href='<%# progressTitle(Eval("ProductCategoryName")) + "-prv-" + Eval("ProductCategoryID") + ".aspx" %>'>
                                            View more</a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsProductCategory" runat="server" SelectMethod="ProductCategorySelectAll"
                        TypeName="TLLib.ProductCategory">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="parentID" Type="Int32" />
                            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                            <asp:Parameter Name="IsShowOnMenu" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
            <div class="title-box">
                <div class="main-title">
                    <h3>
                        <span>Our Projects</span></h3>
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
                                <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
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
            <div class="title-box">
                <div class="main-title">
                    <h3>
                        <span>News</span></h3>
                </div>
                <div class="view-more">
                    <a href="news.aspx">See more</a>
                </div>
            </div>
            <div class="wrapper-news">
                <div class="row">
                    <asp:ListView ID="lstNews" runat="server" DataSourceID="odsNews" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="col-md-6">
                                <div class="news-box">
                                    <div class="news-img">
                                        <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tt-" + Eval("ArticleID") + ".aspx" %>'>
                                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/hinh1.jpg" %>' runat="server" /></a>
                                    </div>
                                    <div class="news-content">
                                        <h4>
                                            <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tt-" + Eval("ArticleID") + ".aspx" %>'><%# Eval("ArticleTitle") %></a></h4>
                                        <div class="description">
                                            <%# Eval("Description") %></div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsNews" runat="server" 
                        SelectMethod="ArticleSelectAll" TypeName="TLLib.Article">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                            <asp:Parameter DefaultValue="2" Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ArticleTitle" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter DefaultValue="2" Name="ArticleCategoryID" Type="String" />
                            <asp:Parameter Name="Tag" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                            <asp:Parameter Name="IsHot" Type="String" />
                            <asp:Parameter Name="IsNew" Type="String" />
                            <asp:Parameter Name="FromDate" Type="String" />
                            <asp:Parameter Name="ToDate" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                            <asp:Parameter Name="Priority" Type="String" />
                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
