<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="news.aspx.cs" Inherits="news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-bg bor-top">
        <div class="container">
            <div id="site" class="corner">
                <div class="container">
                    <a id="A1" href="~/" runat="server"><span>Home</span></a>/<span>News</span>
                </div>
            </div>
            <div class="news-bg">
                <div class="title-main text-left">
                    <h1>
                        News</h1>
                </div>
                <div class="wrapper-news row">
                    <asp:ListView ID="lstNews" runat="server" DataSourceID="odsNews" EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="col-md-6 element-item">
                                <div class="news-box">
                                    <div class="news-img">
                                        <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tt-" + Eval("ArticleID") + ".aspx" %>'>
                                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/article/" + Eval("ImageName") : "~/assets/images/hinh2.jpg" %>' runat="server" /></a>
                                    </div>
                                    <div class="news-content">
                                        <h4>
                                            <a href='<%# progressTitle(Eval("ArticleTitle")) + "-tt-" + Eval("ArticleID") + ".aspx" %>'><%# Eval("ArticleTitle")%></a></h4>
                                        <div class="description">
                                            <%# Eval("Description")%></div>
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
                            <asp:Parameter Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
                            <asp:Parameter Name="Keyword" Type="String" />
                            <asp:Parameter Name="ArticleTitle" Type="String" />
                            <asp:Parameter Name="Description" Type="String" />
                            <asp:Parameter DefaultValue="2" Name="ArticleCategoryID" Type="String" />
                            <asp:Parameter Name="Tag" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
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
            <div class="pager">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="10" PagedControlID="lstNews">
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
