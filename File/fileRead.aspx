<%@ Page Title="" Language="C#" MasterPageFile="~/SharedPage.master" AutoEventWireup="true" CodeFile="fileRead.aspx.cs" Inherits="File_fileRead" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<asp:Label ID="lbl_result" runat="server"></asp:Label>
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-striped table-hover table-responsive table-bordered animated fadeInUp" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:TemplateField HeaderText="delete File">
            <ItemTemplate>
                <asp:Button ID="deleteButton" runat="server"  CommandName="deleteFile" Text="Delete" CommandArgument='<%# Eval("filename") %>' CssClass="btn btn-danger"/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="file Name">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("filename") %>' CommandName="Download" Text='<%# Eval("filename") %>' CssClass="alert-warning"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="fileType" HeaderText="fileType" SortExpression="fileType" />
        <asp:BoundField DataField="fileSize" HeaderText="file Size (KB)" SortExpression="fileSize" />
        <asp:BoundField DataField="name" HeaderText="Created By" SortExpression="name" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<br />
<br />
<br />
<br />
<br />
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csBoardDBConnectionString %>" SelectCommand="SELECT files.filename, files.fileType, files.fileSize, users.name FROM files INNER JOIN users ON files.user_id = users.user_id"></asp:SqlDataSource>
</asp:Content>

