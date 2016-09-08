<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="inland-projects.aspx.cs" Inherits="project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-bg bor-top">
        <div class="container">
            <div id="site" class="corner">
                <div class="container">
                    <a id="A1" href="~/" runat="server"><span>Home</span></a>/<span>Project</span>
                </div>
            </div>
            <div class="project-bg">
                <div class="title-main text-left">
                    <a href="project.aspx">International Projects</a>
                    <a class="active" href="inland-projects.aspx">Domestic Projects</a>
                </div>
                <div class="project-main row">
                    <asp:ListView ID="lstProject" runat="server" DataSourceID="odsProject" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="col-md-4 element-item">
                                <div class="project-box">
                                    <div class="project-img">
                                        <a href='<%# progressTitle(Eval("ProductName")) + "-pj-" + Eval("ProductID") + ".aspx" %>'>
                                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/project1.jpg" %>'
                                                runat="server" /></a></div>
                                    <div class="project-name">
                                        <a href='<%# progressTitle(Eval("ProductName")) + "-pj-" + Eval("ProductID") + ".aspx" %>'>
                                            <%# Eval("ProductName")%>
                                        </a>
                                    </div>
                                    <div class="description">
                                        <%# Eval("Description") %></div>
                                    <div class="view-all">
                                        <a href='<%# progressTitle(Eval("ProductName")) + "-pj-" + Eval("ProductID") + ".aspx" %>'>
                                            View details</a></div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsProject" runat="server" SelectMethod="ProductSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter Name="PriceFrom" Type="String" />
                            <asp:Parameter Name="PriceTo" Type="String" />
                            <asp:Parameter DefaultValue="8" Name="CategoryID" Type="String" />
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
            <div class="pager">
                <%--<a href="#" class="first fa fa-backward"></a><a href="#" class="prev fa fa-caret-left">
                </a><a href="#" class="current">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#"
                    class="next fa fa-caret-right"></a><a href="#" class="last fa fa-forward"></a>--%>
                <asp:DataPager ID="DataPager1" runat="server" PageSize="9" PagedControlID="lstProject">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="true" ShowNextPageButton="false"
                            ShowPreviousPageButton="false" ButtonCssClass="first fa fa-backward" RenderDisabledButtonsAsLabels="true"
                            FirstPageText="" />
                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowNextPageButton="false"
                            ShowPreviousPageButton="true" ButtonCssClass="prev fa fa-caret-left" RenderDisabledButtonsAsLabels="true"
                            PreviousPageText="" />
                        <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging" CurrentPageLabelCssClass="current" />
                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false" ButtonCssClass="next fa fa-caret-right"
                            ShowNextPageButton="true" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                            NextPageText="" />
                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ButtonCssClass="last fa fa-forward"
                            ShowNextPageButton="false" ShowPreviousPageButton="false" RenderDisabledButtonsAsLabels="true"
                            LastPageText="" />
                    </Fields>
                </asp:DataPager>
            </div>
        </div>
    </div>
</asp:Content>
