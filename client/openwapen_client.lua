local blips = {
	{ name = 'Wapen Winkel', sprite = -145868367, x=-282.28, y=780.59, z=118.53 },
    { name = 'Wapen Winkel', sprite = -145868367, x=2715.9, y=-1285.04, z=49.63 },
    { name = 'Wapen Winkel', sprite = -145868367, x=1323.01, y=-1321.53, z=77.89 },
	{ name = 'Wapen Winkel', sprite = -145868367, x=-5508.05, y=-2965.14, z=-0.63 },
}

Citizen.CreateThread(function()
	for _, info in pairs(blips) do
        local blip = N_0x554d9d53f696d002(1664425300, info.x, info.y, info.z)
        SetBlipSprite(blip, info.sprite, 1)
		SetBlipScale(blip, 0.2)
		Citizen.InvokeNative(0x9CB1A1623062F402, blip, info.name)
    end  
end)

local Wapen = {
    ["Wapens"] = {
	[1] = { ["x"] = -282.28, ["y"] = 780.59, ["z"] = 119.53, ["h"] = 187.09},
    [2] = { ["x"] = 2716.17, ["y"] = -1285.62, ["z"] = 49.63, ["h"] = 187.09},
    [3] = { ["x"] = 1323.01, ["y"] = -1321.53, ["z"] = 77.89, ["h"] = 187.09},
	[4] = { ["x"] = -5508.05, ["y"] = -2965.14, ["z"] = -0.63, ["h"] = 187.09},
    }, 
}

local Keys = {
    ["E"] = 0xCEFD9220
}

function DrawText3D(x, y, z, text)
    local onScreen,_x,_y=GetScreenCoordFromWorldCoord(x, y, z)
    local px,py,pz=table.unpack(GetGameplayCamCoord())
    SetTextScale(0.35, 0.35)
    SetTextFontForCurrentCommand(1)
    SetTextColor(255, 255, 255, 215)
    local str = CreateVarString(10, "LITERAL_STRING", text, Citizen.ResultAsLong())
    SetTextCentre(1)
    DisplayText(str,_x,_y)
    local factor = (string.len(text)) / 215
    DrawSprite("generic_textures", "hud_menu_4a", _x, _y+0.0125,0.015+ factor, 0.03, 0.1, 50, 1, 1, 190, 0)
  end

function SetupStores(location)
    local Coords = GetEntityCoords(PlayerPedId())
    local Gebied = GetDistanceBetweenCoords(Coords.x, Coords.y, Coords.z, location["x"], location["y"], location["z"], true)
    if Gebied <= 2.2 then
        DrawText3D(location["x"], location["y"], location["z"], 'E - Wapen Winkel') 
        if IsControlJustPressed(0, Keys['E']) then
            WarMenu.OpenMenu('weaponshop')
    end
 end
end

Citizen.CreateThread(function()
   while true do
    Wait(0)
   for i = 1,4 do
    SetupStores(Wapen["Wapens"][i])
   end
  end
end)