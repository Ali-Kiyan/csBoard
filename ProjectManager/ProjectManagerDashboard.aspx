<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageProjectManager.master" AutoEventWireup="true" CodeFile="ProjectManagerDashboard.aspx.cs" Inherits="ProjectManager_ProjectManagerDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class=" alert alert-info welcome animated flipInX";">
    Hello <asp:Label ID="lbl_user" runat="server"></asp:Label>
    &nbsp;!
    </div>
    

</asp:Content>

