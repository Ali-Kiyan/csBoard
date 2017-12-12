<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageClient.master" AutoEventWireup="true" CodeFile="ClientDashboard.aspx.cs" Inherits="Client_ClientDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class=" alert alert-info welcome alert animated flipInX">
    Hello <asp:Label ID="lbl_user" runat="server"></asp:Label>
    &nbsp;!
    </div>
    
</asp:Content>

