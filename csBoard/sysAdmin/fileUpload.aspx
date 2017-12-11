<%@ Page Title="" Language="C#" MasterPageFile="~/SharedPage.master" AutoEventWireup="true" CodeFile="fileUpload.aspx.cs" Inherits="sysAdmin_fileUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center;">

        <div class="animated fadeInUp" style="width: 400px; margin-left: auto; margin-right:auto; padding-top:20%; padding-bottom:5%;background-color:#a5a5a5" >
            <asp:FileUpload ID="file_uploader" runat="server" CssClass="input input-group" Width="400px" />
            <asp:Button ID="btn_upload" runat="server" CssClass="btn btn-primary" Text="Upload" Width="201px" OnClick="btn_upload_Click"/>
            <br />
            <asp:Label ID="lbl_result" runat="server" Text="Label" Width="34%"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csBoardDBConnectionString %>" SelectCommand="SELECT [file_id], [filename], [filePath], [fileSize], [fileType], [user_id] FROM [files]"></asp:SqlDataSource>
        </div>
   </div>
</asp:Content>

