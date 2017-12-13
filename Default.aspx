<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- Animation -->
    <link rel="stylesheet" href="/assets/css/animate.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">

<header id="showcase">
    <div class="animated flipInX">
          <h1>Welcom to csBoard</h1>
          <p>Online interactive board for professional collaboration</p>
          <a href="Login.aspx" class="button"><i class="fa fa-sign-in" aria-hidden="true"></i> Enter</a>
    </div>

</header>

</asp:Content>