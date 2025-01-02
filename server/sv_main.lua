ESX = exports["es_extended"]:getSharedObject()

CreateThread(function()
    for _, box in pairs(Config.Boxes) do
        ---@param source integer Player's server id
        ESX.RegisterUsableItem(box.boxItem, function(source)
            local inventory = exports.ox_inventory

            if inventory:GetItemCount(source, box.boxItem) < 1 then return end

            ---@diagnostic disable-next-line
            local success = lib.callback('hx_ammobox', source)

            if not success then return TriggerClientEvent('ox_lib:notify', source, {title = 'Ammo Boxes',description = 'Action Cancelled'}) end

            inventory:AddItem(source, box.ammoItem, box.ammoAmount)

            inventory:RemoveItem(source, box.boxItem, 1)
        end)
    end
end)
