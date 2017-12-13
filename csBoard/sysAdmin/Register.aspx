<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="sysAdmin_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <div style="text-align: center;">

        <div class="animated fadeInDown" style="width: 300px; margin-left: auto; margin-right:auto; padding-top:20%; padding-bottom:1%; border-radius:50px; background-color:#42312f75;">
            &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csBoardDBConnectionString %>" SelectCommand="SELECT role_id FROM roles"></asp:SqlDataSource>
            <asp:TextBox ID="txt_userName" runat="server" CssClass="input-group center" Width="50%" placeholder="please enter your username"></asp:TextBox>
            <asp:TextBox ID="txt_password" runat="server" CssClass="input-group center" Width="50%" placeholder="please enter your password" Type="password"></asp:TextBox>
            <asp:TextBox ID="txt_name" runat="server" CssClass="input-group center" Width="50%"     placeholder="please enter your Name"></asp:TextBox>      
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:csBoardDBConnectionString %>" SelectCommand="SELECT [username], [password], [name], [role_id] FROM [users]"></asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="role ID" style="font-size: 2rem;color: whitesmoke; margin-left:auto; margin-right:auto;"></asp:Label>
            <br />
            <asp:DropDownList Width="50%" ID="RoleDropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="role_id" DataValueField="role_id" CssClass="input center" >
            <asp:ListItem Selected="True">True</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="submit" runat="server" Text="Submit !" OnClick="submit_Click" CssClass="input-group  btn btn-primary center" Width="50%"/>
             <asp:Label ID="Lbl_result" runat="server" Text="" Width="100%" style="overflow: hidden"></asp:Label>
         </div>
        </div>




</asp:Content>

