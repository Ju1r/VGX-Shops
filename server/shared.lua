QBCore = exports[Config.Core]:GetCoreObject()
VGX_Inventory = {}

-- =========================
-- GIVE ITEM (supports item.info from shop config)
-- =========================
-- target: number (player source id) or QBCore Player object
-- info: optional table (e.g. { fooding = 100, uses = 20 }) from shop item.info
function VGX_Inventory.GiveItem(src, target, itemName, amount, info)
    local targetId
    local Target
    if type(target) == 'number' then
        targetId = target
        Target = QBCore.Functions.GetPlayer(targetId)
    else
        Target = target
        targetId = Target and Target.PlayerData and Target.PlayerData.source
    end

    if not Target then
        return false, 'TARGET_OFFLINE'
    end

    if not QBCore.Shared.Items[itemName] then
        return false, 'INVALID_ITEM'
    end

    amount = tonumber(amount) or 1
    if amount <= 0 or amount > 100 then
        return false, 'INVALID_AMOUNT'
    end

    info = info or {}
    local itemData = QBCore.Shared.Items[itemName]

    -- UNIQUE ITEMS (give one by one, each with info)
    if itemData.unique == true then
        local success = 0
        for i = 1, amount do
            if Target.Functions.AddItem(itemName, 1, nil, info) then
                success = success + 1
                TriggerClientEvent('inventory:client:ItemBox', targetId, itemData, 'add', 1)
            else
                break
            end
        end
        return success > 0, success
    end

    -- WEAPONS (give one by one with info)
    if itemData.type == 'weapon' then
        local success = 0
        for i = 1, amount do
            if Target.Functions.AddItem(itemName, 1, nil, info) then
                success = success + 1
                TriggerClientEvent('inventory:client:ItemBox', targetId, itemData, 'add', 1)
            else
                break
            end
        end
        return success > 0, success
    end

    -- STACKABLE / NORMAL ITEMS (single add with info)
    if Target.Functions.AddItem(itemName, amount, nil, info) then
        TriggerClientEvent('inventory:client:ItemBox', targetId, itemData, 'add', amount)
        return true, amount
    end

    return false, 'INVENTORY_FULL'
end
