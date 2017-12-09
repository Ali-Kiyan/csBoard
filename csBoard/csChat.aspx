<%@ Page Title="" Language="C#" MasterPageFile="~/SharedPage.master" AutoEventWireup="true" CodeFile="csChat.aspx.cs" Inherits="csChat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <title>csChat</title>
    <link rel="stylesheet" href="/assets/css/chatStyle.css">
    <style type="text/css">
        .container {
            background-color: #99CCFF;
            border: thick solid #808080;
            padding: 20px;
            margin: 20px;
        }
    </style>

    <div class="container chat-thread">
        <input type="text" id="message" class="animated bounceInLeft"/>
        <input type="button" id="sendmessage" class="animated bounceInRight" value="Send" />
        <input type="hidden" id="displayname" />
        <button id="laugh" type="button">😁</button>
        <button id="sad" type="button">😭</button>
        <button id="smile"  type="button">😊</button>
        <button id="serious" type="button">😁</button>
        <button id="confused" type="button">😭</button>
        <button id="smirk"  type="button">😊</button>
        <button id="cry" type="button">😁</button>
        <button id="angry" type="button">😭</button>
        <button id="Happy"  type="button">😊</button>
        <ul id="discussion">
        </ul>
        
    </div>

</asp:Content>
