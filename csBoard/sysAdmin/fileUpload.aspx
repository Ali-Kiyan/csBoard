﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="fileUpload.aspx.cs" Inherits="sysAdmin_fileUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left: 50%;padding-top:20%;">
        <asp:FileUpload ID="file_uploader" runat="server" CssClass="input input-group" Width="199px" />
        <asp:Button ID="btn_upload" runat="server" CssClass="btn btn-primary" Text="Upload" Width="201px" OnClick="btn_upload_Click"/>
        <br />
        <asp:Label ID="lbl_result" runat="server" Text="Label"></asp:Label>
    </div>

</asp:Content>
