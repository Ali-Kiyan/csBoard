<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDesinger.master" AutoEventWireup="true" CodeFile="DesignerDashboard.aspx.cs" Inherits="Designer_DesignerDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class=" alert alert-info welcome animated flipInX">
    Hello <asp:Label ID="lbl_user" runat="server"></asp:Label>
    &nbsp;!
    </div>
    
</asp:Content>

