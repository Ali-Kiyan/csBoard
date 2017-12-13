using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;


/// <summary>
/// Summary description for ChatHub
/// </summary>
public class ChatHub :Hub
{
    public ChatHub()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public void Send(string name, string message)
    {
        //call the broadcastMessage method to update clients
        Clients.All.broadcastMessage(name, message);
    }
}