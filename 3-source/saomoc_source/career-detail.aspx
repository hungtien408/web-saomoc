<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="career-detail.aspx.cs" Inherits="news_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="banner-main">
       <asp:ListView ID="lstBannerCareer" runat="server" DataSourceID="odsBannerCareer" EnableModelValidation="True">
            <ItemTemplate>
                <img id="Img1" alt='<%# Eval("FileName") %>' src='<%# !string.IsNullOrEmpty(Eval("FileName").ToString()) ? "~/res/advertisement/" + Eval("FileName") : "~/assets/images/banner3.jpg" %>'
                    runat="server" />
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsBannerCareer" runat="server" SelectMethod="AdsBannerSelectAll"
            TypeName="TLLib.AdsBanner">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                <asp:Parameter DefaultValue="7" Name="AdsCategoryID" Type="String" />
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
                    <a id="A1" href="~/" runat="server"><span>Home</span></a>/<a href="career.aspx">Career</a>/<span><asp:Label
                        ID="lblTitle" runat="server" Text=""></asp:Label></span>
                </div>
            </div>
             <div class="colContent">
                <asp:ListView ID="lstCareerDetails" runat="server" DataSourceID="odsCareerDetails" EnableModelValidation="True">
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
                <asp:ObjectDataSource ID="odsCareerDetails" runat="server" SelectMethod="ArticleSelectOne"
                    TypeName="TLLib.Article">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ArticleID" QueryStringField="cr" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <div class="colAside">
                <div class="list-main">
                    <h1>
                        Career</h1>
                    <asp:ListView ID="lstCareerSame" runat="server" DataSourceID="odsCareerSame" EnableModelValidation="True">
                        <ItemTemplate>
                            <li><a href='<%# progressTitle(Eval("ArticleTitle")) + "-cr-" + Eval("ArticleID") + ".aspx" %>'><%# Eval("ArticleTitle") %></a></li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul>
                                <li runat="server" id="itemPlaceholder"></li>
                            </ul>
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsCareerSame" runat="server" 
                        SelectMethod="ArticleSameSelectAll" TypeName="TLLib.Article">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                            <asp:QueryStringParameter DefaultValue="" Name="ArticleID" 
                                QueryStringField="cr" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

