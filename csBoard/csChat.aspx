<%@ Page Title="" Language="C#" MasterPageFile="~/SharedPage.master" AutoEventWireup="true" CodeFile="csChat.aspx.cs" Inherits="csChat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <title>csChat</title>
    <link rel="stylesheet" href="/assets/css/chatStyle.css">
    <style type="text/css">
        .container {
            background-color: #4a4a4a;
            border: 75px solid #afa3a3;
            padding: 20px;
            margin: 20px;
            border-radius: 10px;
        }
    </style>

    <div class="container chat-thread">
        <input type="text" id="message" class="animated bounceInLeft"/>
        <input type="button" id="sendmessage" class="animated bounceInRight" value="Send" />
        <input type="hidden" id="displayname" />
        <div class="animated fadeInRight avatar">
            <button id="laugh" type="button" class="btn overlapped btn-info btn-avatar">😁</button>
            <button id="sad" type="button" class="btn overlapped btn-avatar">😭</button>
            <button id="smile"  type="button" class="btn overlapped btn-avatar" >😊</button>
            <button id="serious" type="button" class="btn overlapped btn-avatar">😁</button>
            <button id="confused" type="button" class="btn overlapped btn-danger btn-avatar">😭</button>
            <button id="smirk"  type="button" class="btn overlapped btn-warning btn-avatar">😊</button>
            <button id="cry" type="button" class="btn overlapped btn-avatar">😁</button>
            <button id="angry" type="button" class="btn overlapped btn-avatar">😭</button>
            <button id="Happy"  type="button" class="btn overlapped btn-avatar">😊</button>
        </div>
        <ul id="discussion">
        </ul>
        
    </div>

</asp:Content>
