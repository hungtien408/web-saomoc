﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-bg">
          <div id="mapshow"></div>
        <div class="container">
            <div class="row wrap-contact">
            <div class="col-md-6">
                <div class="address-contact">
                    <h4 class="text-uppercase">Jupiter Trading Service Company Limited </h4>
                    <p><span class="fa fa-map-marker"></span>Ground Floor B, Ngoc Khiet Building, 251/1 Nguyen Van Troi St., Ward 10, Phu Nhuan Dist., HCMC, Vietnam</p>                    <p><span class="fa fa-phone"></span>(+848) 38457823 - 38457967 - 38457876</p>                    <p><span class="fa fa-envelope"></span>Email: <a href="mailto:info@acare.com.vn">info@saomoc.com.vn</a></p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="wrap-send">
                    <p>Hãy liên hệ chúng tôi theo địa chỉ có trên bản đồ hoặc gửi tin nhắn cho chúng tôi theo mẫu form sau đây, chúng tôi sẽ trả lời sớm nhất ngay khi nhận được email của quý khách.</p>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="TextBox5" CssClass="contact-textbox" runat="server" placeholder="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="TextBox7" CssClass="contact-textbox" runat="server" placeholder="Phone"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-input">
                            <asp:TextBox ID="TextBox2" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder="Content"></asp:TextBox>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-btn">
                            <asp:button ID="Button1" CssClass="button-btn" runat="server" text="Gửi" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</asp:Content>

