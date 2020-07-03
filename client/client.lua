local gunsmiths = {
    { x = -282.28, y = 780.59, z = 118.53 }, --val
    { x = 2715.9, y = -1285.04, z = 49.63 },  --saint
    { x = -856.95, y = -1391.59, z = 43.49 }, --blackwater
    { x = 1323.01, y = -1321.53, z = 77.89 }, --Rhodes
}

Citizen.CreateThread(function()

	while true do
	  Wait(0)
	  local Menus = {
        "weaponshop",
        'weaponshop',
        'pistols',
        'longguns',
        'handguns',
        'Ammo',
        'pistolsammo',
        'longgunsammo',
        'handgunsammo',
	} 

    for k, v in pairs(Menus) do
        WarMenu.SetMenuX(v, 0.75)
        WarMenu.SetMenuY(v, 0.08)
        WarMenu.SetMenuWidth(v, 0.23)
        WarMenu.SetTitleColor(v, 255, 255, 255, 255)
        WarMenu.SetTitleBackgroundColor(v, 0, 0, 0, 111)
        WarMenu.SetMenuBackgroundColor(v, 0, 0, 0, 111)
      end
   end
end)


Citizen.CreateThread(function()    

    WarMenu.CreateMenu('weaponshop', 'Wapen Winkel')
    WarMenu.CreateSubMenu('pistols', 'weaponshop', '')
    WarMenu.CreateSubMenu('longguns', 'weaponshop', '')
    WarMenu.CreateSubMenu('handguns', 'weaponshop', '')
    WarMenu.CreateSubMenu('Ammo', 'weaponshop', '')
    WarMenu.CreateSubMenu('pistolsammo', 'Ammo', '')
    WarMenu.CreateSubMenu('longgunsammo', 'Ammo', '')
    WarMenu.CreateSubMenu('handgunsammo', 'Ammo', '')

    while true do
        if WarMenu.IsMenuOpened('weaponshop') then

            if WarMenu.MenuButton('Pistolen', 'pistols') then end
            if WarMenu.MenuButton('Geweren', 'longguns') then end
            if WarMenu.MenuButton('Extra\'s', 'handguns') then end
            if WarMenu.MenuButton('Munitie', 'Ammo') then end
            WarMenu.Display()
 
        elseif WarMenu.IsMenuOpened('pistols') then

            if WarMenu.Button("         Cattleman Revolver", "$20 LvL 1") then
                TriggerServerEvent("redemrp_gunshop:buygun", "cattleman_w", 20, "WEAPON_REVOLVER_CATTLEMAN", 1)
            elseif WarMenu.Button("            Double Action Revolver", "$22 LvL 5") then
                TriggerServerEvent("redemrp_gunshop:buygun", "doubleaction_w", 22, "WEAPON_REVOLVER_DOUBLEACTION", 5)
            elseif WarMenu.Button("         Volcanic", "$32 LvL 10") then
                TriggerServerEvent("redemrp_gunshop:buygun", "volcanic_w", 32, "WEAPON_PISTOL_VOLCANIC", 10)
            elseif WarMenu.Button("         Semi-auto Pistol", "$36 LvL 15") then
                TriggerServerEvent("redemrp_gunshop:buygun", "semiauto-p_w", 36, "WEAPON_PISTOL_SEMIAUTO", 15)
            elseif WarMenu.Button("         Mauser", "$43 LvL 20") then
                TriggerServerEvent("redemrp_gunshop:buygun", "mauser_w", 43, "WEAPON_PISTOL_MAUSER", 20)
            elseif WarMenu.Button("         M 1899", "$49 LvL 30") then
                TriggerServerEvent("redemrp_gunshop:buygun", "m1899_w", 49, "WEAPON_PISTOL_M1899", 30)
            elseif WarMenu.Button("         Lemat Revolver", "$58 LvL 40") then
                TriggerServerEvent("redemrp_gunshop:buygun", "lemat_w", 58, "WEAPON_REVOLVER_LEMAT", 40)
			end
            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('longguns') then

            if WarMenu.Button("             Carbine Repeator", "$32 LvL 1") then
                TriggerServerEvent("redemrp_gunshop:buygun", "carbine_w", 32, "WEAPON_REPEATER_CARBINE", 1)
            elseif WarMenu.Button("             Varmint Rifle", "$34 LvL 1") then
                TriggerServerEvent("redemrp_gunshop:buygun", "varmint_w", 34, "WEAPON_RIFLE_VARMINT", 1)
            elseif WarMenu.Button("             Evans Repeater", "$48 LvL 5") then
                TriggerServerEvent("redemrp_gunshop:buygun", "evans_w", 48, "WEAPON_REPEATER_EVANS", 5)
            elseif WarMenu.Button("             Bolt Action Rifle", "$56 LvL 10") then
                TriggerServerEvent("redemrp_gunshop:buygun", "bolt_w", 56, "WEAPON_RIFLE_BOLTACTION", 10)
            elseif WarMenu.Button("             Carcano Rifle", "$82 LvL 30") then
                TriggerServerEvent("redemrp_gunshop:buygun", "carcano_w", 82, "WEAPON_SNIPERRIFLE_CARCANO", 30)
            elseif WarMenu.Button("             Rolling Block Rifle", "$106 LvL 50") then
                TriggerServerEvent("redemrp_gunshop:buygun", "rolling_w", 106, "WEAPON_SNIPERRIFLE_ROLLINGBLOCK", 50)
			elseif WarMenu.Button("             Pump Shotgun", "$38 LvL 10") then
                TriggerServerEvent("redemrp_gunshop:buygun", "pump_w", 38, "WEAPON_SHOTGUN_PUMP", 10)
            elseif WarMenu.Button("             Repeating Shotgun", "$57 LvL 20") then
                TriggerServerEvent("redemrp_gunshop:buygun", "repeating_w", 57, "WEAPON_SHOTGUN_REPEATING", 20)
            elseif WarMenu.Button("             Semi-auto Shotgun", "$69 LvL 30") then
                TriggerServerEvent("redemrp_gunshop:buygun", "semiauto-s_w", 69, "WEAPON_SHOTGUN_SEMIAUTO", 30)
            elseif WarMenu.Button("             Sawed-off Shotgun", "$84 LvL 50") then
                TriggerServerEvent("redemrp_gunshop:buygun", 84, "sawedoff_w", "WEAPON_SHOTGUN_SAWEDOFF", 50)
			end
            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('handguns') then

            if WarMenu.Button("             Knife", "$7 LvL 1") then
                TriggerServerEvent("redemrp_gunshop:buygun", "knife_w", 7, "WEAPON_MELEE_KNIFE", 1)
            elseif WarMenu.Button("             Lantern", "$22 LvL 1") then
                TriggerServerEvent("redemrp_gunshop:buygun", "lantern_r_w", 22, "WEAPON_MELEE_DAVY_LANTERN", 1)
            elseif WarMenu.Button("             Bow", "$45 LvL 5") then
                TriggerServerEvent("redemrp_gunshop:buygun", "bow_w", 45, "WEAPON_BOW", 5)
            elseif WarMenu.Button("             Lasso", "$35 LvL 5") then
                TriggerServerEvent("redemrp_gunshop:buygun", "lasso_w", 35, "WEAPON_LASSO", 5)
            elseif WarMenu.Button("             Hatchet", "$55 LvL 15") then
                TriggerServerEvent("redemrp_gunshop:buygun", "hatchet_w", 55, "WEAPON_MELEE_HATCHET", 15)
            elseif WarMenu.Button("             Throwing knives", "$75 LvL 25") then
                TriggerServerEvent("redemrp_gunshop:buygun", "throwing_w", 75, "WEAPON_THROWN_THROWING_KNIVES", 25)
            elseif WarMenu.Button("             Electric Lantern", "$59 LvL 25") then
                TriggerServerEvent("redemrp_gunshop:buygun", "lantern_w", 59, "WEAPON_MELEE_LANTERN_ELECTRIC", 25)
            elseif WarMenu.Button("             Tomahawk", "$87 LvL 30") then
                TriggerServerEvent("redemrp_gunshop:buygun", "tomahawk_w", 87, "WEAPON_THROWN_TOMAHAWK", 30)
			end
            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('Ammo') then

            if WarMenu.MenuButton('Kogels', 'longgunsammo') then end
            if WarMenu.MenuButton('Hand Wapens', 'handgunsammo') then end
            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('longgunsammo') then
            if WarMenu.Button("         Revolver", "$3") then
                TriggerServerEvent("redemrp_gunshop:buyammo", 3, "revolver_ammo")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0)
           elseif WarMenu.Button("             Repeator", "$2") then
                TriggerServerEvent("redemrp_gunshop:buyammo", 2, "repeator_ammo")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0) 
            elseif WarMenu.Button("             Rifle", "$3") then
                TriggerServerEvent("redemrp_gunshop:buyammo", 3, "rifle_ammo")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0)
            elseif WarMenu.Button("             Shotgun Shells", "$3") then
                TriggerServerEvent("redemrp_gunshop:buyammo", 3, "shotgun_ammo")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0)
			end
            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('handgunsammo') then

            if WarMenu.Button("             Arrows", "$5") then
                TriggerServerEvent("redemrp_gunshop:buyammo", 5, "arrows")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0)
			end
            WarMenu.Display()

        end

        Citizen.Wait(0)
    end
end)

RegisterNetEvent('redemrp_gunshop:alert')	
AddEventHandler('redemrp_gunshop:alert', function(txt)
    SetTextScale(0.5, 0.5)
    local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", txt, Citizen.ResultAsLong())
    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
end)

RegisterNetEvent('wv-ammo:useAmmoItem')
AddEventHandler('wv-ammo:useAmmoItem', function(ammo)
    local playerPed = GetPlayerPed()
    local weapon
    local found, currentWeapon = GetCurrentPedWeapon(playerPed, true)
    if found then
        for _, v in pairs(ammo.weapons) do
            if currentWeapon == v then
                weapon = v
                break
            end
        end
        if weapon ~= nil then
            local pedAmmo = GetAmmoInPedWeapon(playerPed, weapon)
            local newAmmo = pedAmmo + ammo.count
            ClearPedTasks(playerPed)
            local found, maxAmmo = GetMaxAmmo(playerPed, weapon)
            if newAmmo < 25 then
                TaskReloadWeapon(playerPed)
				TriggerServerEvent('wv-ammo:removeAmmoItem', ammo)
                Citizen.Wait(2500)
                SetPedAmmo(playerPed, weapon, newAmmo)
				exports['wv-notify']:SendAlert('succes', 'Bullets Reloaded', 5500)
			else
				exports['wv-notify']:SendAlert('error', 'You already loaded bullet in your weapon..', 5500)
            end
		end
    end
end)