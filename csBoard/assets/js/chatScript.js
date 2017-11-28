﻿    $(function () {
        // Declare a proxy to reference the hub. 
        var chat = $.connection.chatHub;
        // Create a function that the hub can call to broadcast messages.
        chat.client.broadcastMessage = function (name, message) {
            // Html encode display name and message. 
            var encodedName = $('<div />').text(name).html();
            var encodedMsg = $('<div />').text(message).html();
            // Add the message to the page. 
            $('#discussion').append('<li><strong>' + encodedName
                + '</strong>&nbsp:&nbsp;&nbsp;' + encodedMsg + '</li>');
        };
        // Get the user name and store it to prepend to messages.
        $('#displayname').val(prompt('Enter your name:', ''));
        // Set initial focus to message input box.  
        $('#message').focus();
        // Start the connection.
        $.connection.hub.start().done(function () {
            $('#sendmessage').click(function () {
                // Call the Send method on the hub. 
                chat.server.send($('#displayname').val(), $('#message').val());
                // Clear text box and reset focus for next comment. 
                $('#message').val().focus();
            });
        });
    });

//emoji 
    var laugh_emoji = String.fromCodePoint(0x1F602);
    var msg = String.fromCodePoint(0x1F612);
    var laugh_btn = document.getElementById('laugh').onclick = function () {
            document.querySelector('#message').value +=laugh_emoji;
    }
    var sad_btn = document.getElementById('sad').onclick = function () {
        document.querySelector('#message').value = msg;
    }
 


