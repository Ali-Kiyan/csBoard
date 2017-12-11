<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <link rel="stylesheet" href="assets/css/loginStyle.css">
        <div class='login animated fadeInUpBig'>
          <div class='login_title'>
            <span>Login to your csBoard account</span>
          </div>
          <div class='login_fields'>
            <div class='login_fields__user'>
              <div class='icon'>
                <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/user_icon_copy.png'>
              </div>
                <div class='validation'>
                  <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/tick.png'>
                </div>
             <asp:TextBox ID="txt_user" runat="server"></asp:TextBox>
            </div>
            <div class='login_fields__password'>
              <div class='icon'>
                <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/lock_icon_copy.png'>
              </div>
              <div class='validation'>
                <img src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/217233/tick.png'>
              </div>
            <asp:TextBox ID="txt_pass" runat="server" type="password"></asp:TextBox>
            </div>
            <div class='login_fields__submit'>
               <i class="fa fa-arrow-circle-up" aria-hidden="true"></i> <asp:Button ID="btn_login" runat="server" Text="Login !" OnClick="btn_login_Click" />
            </div>
            <br>
            <br>
            <br>

              <asp:Label ID="lbl_result" runat="server" Text="" CssClass="alert-danger" Width="100%"></asp:Label>
             
          </div>
        </div>


</asp:Content>
