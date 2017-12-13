<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="allUsrs.aspx.cs" Inherits="sysAdmin_allUsrs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <p>
         <asp:Label ID="lbl_result" runat="server" CssClass = "alert-info animated fadeInLeft" Width="20%"></asp:Label>
         ---</p>
<p>
         &nbsp;</p>
<p>
         &nbsp;</p>

     <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="user_id" DataSourceID="allusersDS" ForeColor="#666666" GridLines="None" CssClass="table table-striped table-bordered table-condensed table-hover table-responsive pull-right animated flipInX top col-smZ-10"  Font-Italic="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
             <asp:CommandField HeaderText="Edit/Delete Users" ShowDeleteButton="True" ShowEditButton="True" />
             <asp:TemplateField HeaderText="user_id" InsertVisible="False" SortExpression="user_id">
                 <EditItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("user_id") %>'></asp:Label>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("user_id") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="username" SortExpression="username">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="password" SortExpression="password">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("password")  %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label3" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="name" SortExpression="name">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label4" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="role_id" SortExpression="role_id">
                 <EditItemTemplate>
                     <asp:DropDownList ID="roleDropDownList" runat="server" DataSourceID="allusersDS" DataTextField="role_id" SelectedValue='<%# Bind("role_id") %>'></asp:DropDownList>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Bind("role_id") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
         <EditRowStyle BackColor="#999999" />
         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#583f36" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#E9E7E2" />
         <SortedAscendingHeaderStyle BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
     </asp:GridView>
     <asp:SqlDataSource ID="allusersDS" runat="server" ConnectionString="<%$ ConnectionStrings:csBoardDBConnectionString %>" SelectCommand="SELECT [user_id], [username], [password], [name], [role_id] FROM [users] ORDER BY [role_id]" DeleteCommand="DELETE FROM [users] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [users] ([username], [password], [name], [role_id]) VALUES (@username, @password, @name, @role_id)" UpdateCommand="UPDATE [users] SET [username] = @username, [password] = @password, [name] = @name, [role_id] = @role_id WHERE [user_id] = @user_id">
         <DeleteParameters>
             <asp:Parameter Name="user_id" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="username" Type="String" />
             <asp:Parameter Name="password" Type="String" />
             <asp:Parameter Name="name" Type="String" />
             <asp:Parameter Name="role_id" Type="Int32" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="username" Type="String" />
             <asp:Parameter Name="password" Type="String" />
             <asp:Parameter Name="name" Type="String" />
             <asp:Parameter Name="role_id" Type="Int32" />
             <asp:Parameter Name="user_id" Type="Int32" />
         </UpdateParameters>
</asp:SqlDataSource>

    


</asp:Content>

