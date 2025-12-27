local function hasAccess(source)
    local identifiers = GetPlayerIdentifiers(source)
    for _, allowed in pairs(Config.AllowedIdentifiers) do
        for _, id in pairs(identifiers) do
            if id == allowed then
                return true
            end
        end
    end
    return false
end

RegisterServerEvent("devtablet:checkAccess")
AddEventHandler("devtablet:checkAccess", function()
    local src = source

    if not hasAccess(src) then
        TriggerClientEvent("chat:addMessage", src, {
            args = {"DEV", "❌ Geen toegang"}
        })
        return
    end

    local data = {
        playerName = GetPlayerName(src),
        playerId = src,
        ping = GetPlayerPing(src),
        players = #GetPlayers(),
        resources = GetNumResources(),
        uptime = os.date("%X"),
        serverName = GetConvar("sv_hostname", "FiveM Server")
    }

    TriggerClientEvent("devtablet:open", src, data)
end)
