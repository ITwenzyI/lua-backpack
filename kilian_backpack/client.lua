Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5000)
        TriggerServerEvent('kilian_backpack:checkBackpack')
    end
end)
