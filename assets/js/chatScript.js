    $(function () {
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
        var Uname = $('#ContentPlaceHolder1_nameTaker').val();
        $('#displayname').val(Uname);
        // Set initial focus to message input box.
        $('#message').focus();
        // Start the connection.
        $.connection.hub.start().done(function () {
            $('#sendmessage').click(function () {
                // Call the Send method on the hub.
                chat.server.send($('#displayname').val(), $('#message').val());
                // Clear text box and reset focus for next comment.
                $('#message').val('').focus();
            });
        });
    });

   //Avatars Definition
    var Joy_avatar = String.fromCodePoint(0x1F602);
    var Surprise_avatar = String.fromCodePoint(0x1F631);
    var Fear_avatar = String.fromCodePoint(0x1F628);
    var Sadness_avatar = String.fromCodePoint(0x1F622);
    var Anger_avatar = String.fromCodePoint(0x1F621);
    var Disgust_avatar = String.fromCodePoint(0x1F612);
    //Appending to the input
    var Joy_btn = document.getElementById('joy').onclick = function () {
        document.querySelector('#message').value += Joy_avatar;
    };
    var Joy_btn = document.getElementById('surprise').onclick = function () {
        document.querySelector('#message').value += Surprise_avatar;
    };
    var Joy_btn = document.getElementById('fear').onclick = function () {
        document.querySelector('#message').value += Fear_avatar;
    };
    var Joy_btn = document.getElementById('sadness').onclick = function () {
        document.querySelector('#message').value += Sadness_avatar;
    };
    var Joy_btn = document.getElementById('anger').onclick = function () {
        document.querySelector('#message').value += Anger_avatar;
    };
    var Joy_btn = document.getElementById('disgust').onclick = function () {
        document.querySelector('#message').value += Disgust_avatar;
    };
