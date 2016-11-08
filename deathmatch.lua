addEventHandler("onServerStarted", function()
    setServerName("[DM] Yaderemod deathmatch 1.0");
    setServerMap("default:school1_day");

    setSpawnPosition(-242.3, 42.4, 5.0);
    log("server started");
end);

addEventHandler("onPlayerConnect", function(playerid, nickname)
    sendPlayerMessage(playerid, "Hello " + nickname + ", welcome to server!");
    sendPlayerMessageAll(nickname .. " has joined the server.");

    setEntityModel(playerid, 42); -- set default model
end);

addEventHandler("onPlayerDisconnect", function(playerid, nickname)
    sendPlayerMessageAll(nickname .. " has left the server.");
end);

addEventHandler("onEntityDead", function(playerid, reason, killer)
    if (reason == "kill") then
        sendPlayerMessageAll(getPlayerName(playerid) .. " was killed by " .. getPlayerName(killer));
    end
end);

addCommandHandler("spawn", function(playerid)
    setEntityPosition(playerid, -242.3, 42.4, 5.0);
end);

addCommandHandler("weapons", function(playerid)
    giveEntityItem(playerid, 55); -- give player granade launcher
end);
