<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AdminDashboard.aspx.cs" Inherits="sysAdmin_AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class=" alert alert-info" style="border-radius:50px;width:40%;">
    Hello <asp:Label ID="lbl_user" runat="server"></asp:Label>
    &nbsp;!
    </div>

    

</asp:Content>

