local tabletOpen = false

RegisterCommand("devtablet", function()
    if tabletOpen then
        closeTablet()
    else
        TriggerServerEvent("devtablet:checkAccess")
    end
end)

RegisterNetEvent("devtablet:open", function(data)
    tabletOpen = true
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "open",
        data = data
    })
end)

RegisterNUICallback("close", function()
    closeTablet()
end)

function closeTablet()
    tabletOpen = false
    SetNuiFocus(false, false)
    SendNUIMessage({ action = "close" })
end
