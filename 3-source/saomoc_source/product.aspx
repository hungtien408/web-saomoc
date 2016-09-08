<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="product.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-bg bor-top">
        <div class="container">
            <div id="site" class="corner">
                <div class="container">
                    <a id="A1" href="~/" runat="server"><span>Home</span></a>/<span>Product</span>
                </div>
            </div>
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
        </div>
    </div>
</asp:Content>
