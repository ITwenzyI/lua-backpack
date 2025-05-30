ESX = exports["es_extended"]:getSharedObject()

-- Default and upgraded inventory weights
local defaultWeight = 50
local backpackWeight = 100
local casinoBackpackWeight = 150

-- Item names in the inventory
local backpackItem = "backpack"
local casinoBackpackItem = "casino-backpack"

-- Dynamically adjust max weight when player's inventory changes
RegisterServerEvent('kilian_backpack:checkBackpack')
AddEventHandler('kilian_backpack:checkBackpack', function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    if xPlayer then
        local hasCasinoBackpack = xPlayer.getInventoryItem(casinoBackpackItem).count > 0
        local hasBackpack = xPlayer.getInventoryItem(backpackItem).count > 0

        local newWeight = defaultWeight

        if hasCasinoBackpack then
            newWeight = casinoBackpackWeight
        elseif hasBackpack then
            newWeight = backpackWeight
        end

        xPlayer.setMaxWeight(newWeight)
        --print("[Inventory] New max weight for player " .. src .. ": " .. newWeight)
    end
end)

-- Check backpack on player login
AddEventHandler('esx:playerLoaded', function(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    if xPlayer then
        TriggerEvent('kilian_backpack:checkBackpack', playerId)
    end
end)
