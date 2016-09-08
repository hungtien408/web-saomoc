<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="news-detail.aspx.cs" Inherits="news_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-bg bor-top">
        <div class="container">
            <div id="site" class="corner">
                <div class="container">
                    <a id="A1" href="~/" runat="server"><span>Home</span></a>/<a href="news.aspx">News</a>/<span><asp:Label
                        ID="lblTitle" runat="server" Text=""></asp:Label></span>
                </div>
            </div>
            <div class="colContent">
                <asp:ListView ID="lstNewDetails" runat="server" DataSourceID="odsNewDetails" EnableModelValidation="True">
                    <ItemTemplate>
                        <h1>
                            <%# Eval("ArticleTitle") %></h1>
                        <div class="wrapper-text">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsNewDetails" runat="server" SelectMethod="ArticleSelectOne"
                    TypeName="TLLib.Article">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ArticleID" QueryStringField="tt" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="colAside">
                <div class="list-main">
                    <h1>
                        News</h1>
                    <asp:ListView ID="lstNewSame" runat="server" DataSourceID="odsNewSame" EnableModelValidation="True">
                        <ItemTemplate>
                            <li><a href='<%# progressTitle(Eval("ArticleTitle")) + "-tt-" + Eval("ArticleID") + ".aspx" %>'><%# Eval("ArticleTitle") %></a></li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul>
                                <li runat="server" id="itemPlaceholder"></li>
                            </ul>
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsNewSame" runat="server" 
                        SelectMethod="ArticleSameSelectAll" TypeName="TLLib.Article">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                            <asp:QueryStringParameter DefaultValue="" Name="ArticleID" 
                                QueryStringField="tt" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
