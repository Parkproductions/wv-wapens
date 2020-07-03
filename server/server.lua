local data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

RegisterServerEvent('redemrp_gunshop:buygun')
AddEventHandler("redemrp_gunshop:buygun", function(name, price, weapon, lvl)
    local _source = tonumber(source)
   -----
   TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
    local identifier = user.getIdentifier()
    local level = user.getLevel()
    local gelditem = data.checkItem(_source, "cash")
    if gelditem == nil then
     TriggerClientEvent('notify:client:SendAlert', _source, { type = 'error', text = 'You don\'t have enough money..', length = 4500})
 end
 if gelditem >= price then
    if level >= lvl then
     TriggerEvent('redemrp:getPlayerFromId', _source, function(user)
     TriggerClientEvent('notify:client:SendAlert', _source, { type = 'succes', text = 'You bought a ' ..weapon.. ' for $' ..price.. ' dollar', length = 4500})
        data.addItem(_source, name, 5, GetHashKey(weapon))
         data.delItem(_source, 'cash', price)
     end)
    else 
        TriggerClientEvent('notify:client:SendAlert', _source, { type = 'error', text = 'You don\'t have enough levels ..', length = 4500})
    end
 else
    TriggerClientEvent('notify:client:SendAlert', _source, { type = 'error', text = 'You don\'t have enough money..', length = 4500})
 end   
 end)

    -----
end)

RegisterServerEvent('redemrp_gunshop:buyammo')
AddEventHandler('redemrp_gunshop:buyammo', function(price, item)
local _source = source
    TriggerEvent('redemrp:getPlayerFromId', _source, function(user) 
        local gelditem = data.checkItem(_source, "cash")
        if gelditem >= price then
            data.delItem(_source, 'cash', price)
            data.addItem(_source, item, 1)
             TriggerClientEvent('notify:client:SendAlert', _source, { type = 'succes', text = 'You bought bullets for $' ..price.. ' dollar', length = 4500})
        else
            TriggerClientEvent('notify:client:SendAlert', _source, { type = 'error', text = 'You don\'t have enough money..', length = 4500})
        end
	end)
end)

--
-- Usable Ammos
--
-------- Revolver
RegisterServerEvent("RegisterUsableItem:revolver_ammo")
AddEventHandler("RegisterUsableItem:revolver_ammo", function(source)
    for k, v in pairs(Config.Ammo) do
        TriggerClientEvent('wv-ammo:useAmmoItem', source, v)
    end
end)
-------- Pistol
RegisterServerEvent("RegisterUsableItem:pistol_ammo")
AddEventHandler("RegisterUsableItem:pistol_ammo", function(source)
    for k, v in pairs(Config.Ammo) do
        TriggerClientEvent('wv-ammo:useAmmoItem', source, v)
    end
end)
-------- 22 Ammo
RegisterServerEvent("RegisterUsableItem:22_ammo")
AddEventHandler("RegisterUsableItem:22_ammo", function(source)
    for k, v in pairs(Config.Ammo) do
        TriggerClientEvent('wv-ammo:useAmmoItem', source, v)
    end
end)
-------- Rifle
RegisterServerEvent("RegisterUsableItem:rifle_ammo")
AddEventHandler("RegisterUsableItem:rifle_ammo", function(source)
    for k, v in pairs(Config.Ammo) do
        TriggerClientEvent('wv-ammo:useAmmoItem', source, v)
    end
end)
-------- Shotgun Shells
RegisterServerEvent("RegisterUsableItem:shotgun_ammo")
AddEventHandler("RegisterUsableItem:shotgun_ammo", function(source)
    for k, v in pairs(Config.Ammo) do
        TriggerClientEvent('wv-ammo:useAmmoItem', source, v)
    end
end)

-------- Repeater
RegisterServerEvent("RegisterUsableItem:repeator_ammo")
AddEventHandler("RegisterUsableItem:repeator_ammo", function(source)
    for k, v in pairs(Config.Ammo) do
        TriggerClientEvent('wv-ammo:useAmmoItem', source, v)
    end
end)
-------- Sniper
RegisterServerEvent("RegisterUsableItem:snipe_ammo")
AddEventHandler("RegisterUsableItem:snipe_ammo", function(source)
    for k, v in pairs(Config.Ammo) do
        TriggerClientEvent('wv-ammo:useAmmoItem', source, v)
    end
end)
-------- Arrows
RegisterServerEvent("RegisterUsableItem:arrows")
AddEventHandler("RegisterUsableItem:arrows", function(source)
    for k, v in pairs(Config.Ammo) do
        TriggerClientEvent('wv-ammo:useAmmoItem', source, v)
    end
end)
-------- Knives
RegisterServerEvent("RegisterUsableItem:knives")
AddEventHandler("RegisterUsableItem:knives", function(source)
    for k, v in pairs(Config.Ammo) do
    TriggerClientEvent('wv-ammo:useAmmoItem', source, v)
    end
end)

RegisterServerEvent('wv-ammo:removeAmmoItem')
AddEventHandler('wv-ammo:removeAmmoItem', function(ammo)
    data.delItem(source, ammo.name, 1)
end)