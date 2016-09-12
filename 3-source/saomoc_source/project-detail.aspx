<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="project-detail.aspx.cs" Inherits="project_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-bg bor-top">
        <div class="container">
            <div id="site" class="corner">
                <div class="container">
                    <a id="A1" href="~/" runat="server"><span>Home</span></a>/<a href="project.aspx">Project</a>/<span><asp:Label
                        ID="lblTitle" runat="server" Text=""></asp:Label></span>
                </div>
            </div>
            <div class="project-main">
                <asp:ListView ID="lstProjectDetails" runat="server" DataSourceID="odsProjectDetails"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="project-content">
                            <h1>
                                <%# Eval("ProductName") %></h1>
                            <p>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label></p>
                        </div>
                        <%--<div id="sliderGallery" class="gallery-slider">
                            <div class="slider-for">
                                <asp:ListView ID="lstProjectImageBig" runat="server" DataSourceID="odsProjectImage"
                                    EnableModelValidation="True">
                                    <ItemTemplate>
                                        <div class="slider-big">
                                            <div class="gallery-group">
                                                <div class="gallery-img">
                                                    <img class="img-responsive" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/img1-big.jpg" %>'
                                                        runat="server" />
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <span runat="server" id="itemPlaceholder" />
                                    </LayoutTemplate>
                                </asp:ListView>
                            </div>
                            <div class="gallery-smalls">
                                <div class="slider-nav">
                                    <asp:ListView ID="lstProjectImageSmall" runat="server" DataSourceID="odsProjectImage"
                                        EnableModelValidation="True">
                                        <ItemTemplate>
                                            <div class="slider-small">
                                                <div class="gallery-small">
                                                    <div class="small-box">
                                                        <img class="img-responsive" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/img1-small.jpg" %>' runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <span runat="server" id="itemPlaceholder" />
                                        </LayoutTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>--%>
                        <section class="slider">
                            <div id="slider" class="flexslider">
                                <asp:ListView ID="lstProjectImageBig" runat="server" DataSourceID="odsProjectImage"
                                    EnableModelValidation="True">
                                    <ItemTemplate>
                                        <li><img id="Img2" class="img-responsive" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/img1-big.jpg" %>'
                                                        runat="server" /></li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul class="slides">
                                        <li runat="server" id="itemPlaceholder"></li>
                                        </ul>
                                    </LayoutTemplate>
                                </asp:ListView>
                            </div>
                            <div id="carousel" class="flexslider">
                                <asp:ListView ID="lstProjectImageSmall" runat="server" DataSourceID="odsProjectImage"
                                        EnableModelValidation="True">
                                        <ItemTemplate>
                                            
                                            <li><img id="Img1" class="img-responsive" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/img1-small.jpg" %>' runat="server" /></li>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <ul class="slides">
                                            <li runat="server" id="itemPlaceholder"></li>
                                            </ul>
                                        </LayoutTemplate>
                                 </asp:ListView>
                            </div>
                        </section>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsProjectDetails" runat="server" SelectMethod="ProductSelectOne"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductID" QueryStringField="pj" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="odsProjectImage" runat="server" SelectMethod="ProductImageSelectAll"
                    TypeName="TLLib.ProductImage">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductID" QueryStringField="pj" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter DefaultValue="" Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
    </div>
</asp:Content>
