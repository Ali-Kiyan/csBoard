<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="sysAdmin_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
    <br />
</p>

    &nbsp;<div style="margin-left: 50%;color: black;" class="animated bounceInDown">
        <asp:Label ID="Lbl_result" runat="server" Text=""></asp:Label>

        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csBoardDBConnectionString %>" SelectCommand="SELECT role_id FROM roles"></asp:SqlDataSource>
        <asp:TextBox ID="txt_userName" runat="server" CssClass="input-group" Width="50%" placeholder="please enter your username"></asp:TextBox>
        <asp:TextBox ID="txt_password" runat="server" CssClass="input-group" Width="50%" placeholder="please enter your password" Type="password"></asp:TextBox>
        <asp:TextBox ID="txt_name" runat="server" CssClass="input-group" Width="50%"     placeholder="please enter your Name"></asp:TextBox>      
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:csBoardDBConnectionString %>" SelectCommand="SELECT [username], [password], [name], [role_id] FROM [users]"></asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="role ID" style="font-size: 2rem;"></asp:Label>
        <br />
        <asp:DropDownList Width="50%" ID="RoleDropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="role_id" DataValueField="role_id" CssClass="input">
        <asp:ListItem Selected="True">True</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="submit" runat="server" Text="Submit !" OnClick="submit_Click" CssClass="input-group  btn btn-primary" Width="50%"/>
    </div>



</asp:Content>

