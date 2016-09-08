<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="about-us.aspx.cs" Inherits="about_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="banner-main">
        <asp:ListView ID="lstBannerAbout" runat="server" DataSourceID="odsBannerAbout" EnableModelValidation="True">
            <ItemTemplate>
                <img id="Img1" alt='<%# Eval("FileName") %>' src='<%# !string.IsNullOrEmpty(Eval("FileName").ToString()) ? "~/res/advertisement/" + Eval("FileName") : "~/assets/images/banner1.jpg" %>'
                    runat="server" />
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBannerAbout" runat="server" SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="6" Name="AdsCategoryID" Type="String" />
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
    <div class="container-bg">
        <div class="container">
            <div id="site" class="corner">
                <div class="container">
                    <a id="A1" href="~/" runat="server"><span>Home</span></a>/<span>About us</span>
                </div>
            </div>
            <div class="about-bg">
                <asp:ListView ID="lstAbout" runat="server" DataSourceID="odsAbout" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="title-main">
                            <h1>
                                <%# Eval("ArticleTitle") %></h1>
                        </div>
                        <div class="about-main">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsAbout" runat="server" SelectMethod="ArticleSelectAll"
                    TypeName="TLLib.Article">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ArticleTitle" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter DefaultValue="1" Name="ArticleCategoryID" Type="String" />
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
            <div class="clr">
            </div>
        </div>
    </div>
</asp:Content>
