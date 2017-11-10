<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="sysAdmin_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
    <br />
</p>

    &nbsp;<div style="margin-left: 50%; width: 30%;color: black;">
        <asp:Label ID="Lbl_result" runat="server" Text=""></asp:Label>

        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csBoardDBConnectionString %>" SelectCommand="SELECT role_id FROM roles"></asp:SqlDataSource>
        <asp:TextBox ID="txt_userName" runat="server"></asp:TextBox>
        <asp:TextBox ID="txt_password" runat="server"></asp:TextBox>
        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>      
        <asp:DropDownList ID="RoleDropDown" runat="server" DataSourceID="SqlDataSource1" DataTextField="role_id" DataValueField="role_id">
        <asp:ListItem Selected="True">True</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:csBoardDBConnectionString %>" SelectCommand="SELECT [username], [password], [name], [role_id] FROM [users]"></asp:SqlDataSource>
        <asp:Button ID="submit" runat="server" Text="Submit !" OnClick="submit_Click" />
    </div>



</asp:Content>

