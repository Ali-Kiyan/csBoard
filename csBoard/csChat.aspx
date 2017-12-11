<%@ Page Title="" Language="C#" MasterPageFile="~/SharedPage.master" AutoEventWireup="true" CodeFile="csChat.aspx.cs" Inherits="csChat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <title>csChat</title>
    <link rel="stylesheet" href="/assets/css/chatStyle.css">
    <style type="text/css">
    </style>

    <div class="container chat-thread">
        <input type="text" id="message" class="animated bounceInLeft"/>
        <input type="button" id="sendmessage" class="animated bounceInRight" value="Send" />
        <input type="hidden" id="displayname" />
        <div class="animated fadeInRight avatar">
            <button id="joy" type="button" class="btn overlapped btn-success btn-avatar">😂</button>
            <button id="surprise" type="button" class="btn overlapped btn-avatar">😱</button>
            <button id="fear"  type="button" class="btn overlapped btn-avatar" >😨</button>
            <button id="sadness" type="button" class="btn overlapped btn-avatar">😢</button>
            <button id="anger" type="button" class="btn overlapped btn-danger btn-avatar">😡</button>
            <button id="disgust"  type="button" class="btn overlapped btn-avatar">😒</button>
        </div>
        <ul id="discussion">
        </ul>
        
    </div>

</asp:Content>
