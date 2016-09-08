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
        <div class="close-view">
            <a class="closea" href="javascript:void(0);">X</a></div>
        <div class="view-in">
            <asp:ListView ID="lstProductCategory" runat="server" DataSourceID="odsProductCategory"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="product-price text-center">
                        <%# Eval("Description") %></div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsProductCategory" runat="server" SelectMethod="ProductCategorySelectOne"
                TypeName="TLLib.ProductCategory">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductCategoryID" QueryStringField="prv" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <div class="wrapper-slider">
                <div class="slider-in">
                    <div id="proSlider">
                        <asp:ListView ID="lstProduct" runat="server" DataSourceID="odsProduct" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="slide">
                                    <div class="product-box">
                                        <div class="product-img">
                                            <a class="product-imgs" href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                                <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/hinh1.jpg" %>'
                                                    runat="server" /></a>
                                        </div>
                                        <div class="product-content">
                                            <div class="product-name">
                                                <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                                    <%# Eval("ProductName") %></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsProduct" runat="server" SelectMethod="ProductSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter Name="StartRowIndex" Type="String" />
                                <asp:Parameter Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="PriceFrom" Type="String" />
                                <asp:Parameter Name="PriceTo" Type="String" />
                                <asp:QueryStringParameter Name="CategoryID" QueryStringField="prv" Type="String" />
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
            <div data-id="proSlider" class="control-slider">
                <a href="javascript:void(0);" class="prev fa fa-angle-left"></a><a href="javascript:void(0);"
                    class="next fa fa-angle-right"></a>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
