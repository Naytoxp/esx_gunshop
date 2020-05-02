blips = {}



local function initiateBlip()
    print('test')
    if cfg.blipsenabled then
        for k, v in pairs(cfg.gunshops) do
            local x,y,z = table.unpack(v.marker)
            local temp2 = AddBlipForCoord(x,y,z)
            SetBlipSprite(temp2, 110)
        end
    end
end

initiateBlip()

RMenu.Add('esxgunshops', 'main', RageUI.CreateMenu("", "~b~Ammunition", nil, nil, "shopui_title_gunclub", "shopui_title_gunclub"))
RMenu.Add('esxgunshops', 'knifes', RageUI.CreateSubMenu(RMenu:Get('esxgunshops', 'main'), "", "~b~Knifes", nil, nil, "shopui_title_gunclub", "shopui_title_gunclub"))
RMenu.Add('esxgunshops', 'pistols', RageUI.CreateSubMenu(RMenu:Get('esxgunshops', 'main'), "", "~b~Pistols", nil, nil, "shopui_title_gunclub", "shopui_title_gunclub"))
RMenu.Add('esxgunshops', 'smgs', RageUI.CreateSubMenu(RMenu:Get('esxgunshops', 'main'), "", "~b~Submachine Guns", nil, nil, "shopui_title_gunclub", "shopui_title_gunclub"))
RMenu.Add('esxgunshops', 'shotgun', RageUI.CreateSubMenu(RMenu:Get('esxgunshops', 'main'), "", "~b~Shotguns", nil, nil, "shopui_title_gunclub", "shopui_title_gunclub"))
RMenu.Add('esxgunshops', 'ars', RageUI.CreateSubMenu(RMenu:Get('esxgunshops', 'main'), "", "~b~Assault Rifles", nil, nil, "shopui_title_gunclub", "shopui_title_gunclub"))
RMenu.Add('esxgunshops', 'sniper', RageUI.CreateSubMenu(RMenu:Get('esxgunshops', 'main'), "", "~b~Sniper Rifles", nil, nil, "shopui_title_gunclub", "shopui_title_gunclub"))
RMenu.Add('esxgunshops', 'throw', RageUI.CreateSubMenu(RMenu:Get('esxgunshops', 'main'), "", "~b~Throwables", nil, nil, "shopui_title_gunclub", "shopui_title_gunclub"))

--If the banner seem a little "crushed" :
-- RageUI.Settings.Items.Title.Background.Height = 128


-- RageUI.CreateWhile(wait, menu, key, closure)
RageUI.CreateWhile(1.0, RMenu:Get('esxgunshops', 'main'), nil, function()

 -- RageUI.IsVisible(menu, header, glare, instructional, items, panels)
    RageUI.IsVisible(RMenu:Get('esxgunshops', 'main'), true, false, true, function()
        knifesBtn()
        pistolBtn()
        smgsBtn()
        shotgunBtn()
        arsBtn()
        sniperBtn()
        throwBtn()
     
    end, function()
        ---Panels
    end)
    knifesSM()
    pistolSM()
    smgsSM()
    shotgunSM()
    arsSM()
    sniperSM()
    throwSM()
end)

RegisterNetEvent('ESXGUNSHOPS:menu')
AddEventHandler('ESXGUNSHOPS:menu', function()
    RageUI.Visible(RMenu:Get("esxgunshops", "main"))
    alert('Insufficent funds')
end)

function knifesBtn() 
    RageUI.Button("Knifes" , nil, {
        RightLabel = "→→→",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            -- My action the button is selected
        end
    end, RMenu:Get('esxgunshops', 'knifes'))
end

function pistolBtn() 
    RageUI.Button("Pistols" , nil, {

        RightLabel = "→→→",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            -- My action the button is selected
        end
    end, RMenu:Get('esxgunshops', 'pistols'))
end

function smgsBtn() 
    RageUI.Button("Submachine Guns" , nil, {
        RightLabel = "→→→",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            if Selected then
                -- My action the button is selected
            end
        end
    end, RMenu:Get('esxgunshops', 'smgs'))
end

function shotgunBtn() 
    RageUI.Button("Shotguns" , nil, {
        RightLabel = "→→→",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            -- My action the button is selected
        end
    end, RMenu:Get('esxgunshops', 'shotgun'))
end

function arsBtn() 
    RageUI.Button("Assault Rifles" , nil, {
        RightLabel = "→→→",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            -- My action the button is selected
        end
    end, RMenu:Get('esxgunshops', 'ars'))
end

function sniperBtn() 
    RageUI.Button("Sniper Rifles" , nil, {
        RightLabel = "→→→",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            -- My action the button is selected
        end
    end, RMenu:Get('esxgunshops', 'sniper'))
end

function throwBtn() 
    RageUI.Button("Throwables" , nil, {
        RightLabel = "→→→",
    }, true, function(Hovered, Active, Selected)
        if Selected then
            -- My action the button is selected
        end
    end, RMenu:Get('esxgunshops', 'throw'))
end

--[[Sub Menus]]

function knifesSM() 
    RageUI.IsVisible(RMenu:Get('esxgunshops', 'knifes'), true, false, true, function()
        for i , p in pairs(cfg.guns.knifes) do 
            RageUI.Button(p.name , nil, {
                RightLabel ="~g~"..tostring(cfg.currency)..tostring(p.price)
            }, true, function(Hovered, Active, Selected)
                if Selected then
                   TriggerServerEvent('ESXGUNSHOPS:buywap', p.price, p.hash)
                end
            end)
        end
        end, function()
    end)
end

function pistolSM() 
    RageUI.IsVisible(RMenu:Get('esxgunshops', 'pistols'), true, false, true, function()
        for i , p in pairs(cfg.guns.pistols) do 
            RageUI.Button(p.name , nil, {
                RightLabel ="~g~"..tostring(cfg.currency)..tostring(p.price)
            }, true, function(Hovered, Active, Selected)
                if Selected then
                   TriggerServerEvent('ESXGUNSHOPS:buywap', p.price, p.hash)
                end
            end)
        end
        end, function()
    end)
end

function smgsSM() 
    RageUI.IsVisible(RMenu:Get('esxgunshops', 'smgs'), true, false, true, function()
        for i , p in pairs(cfg.guns.smgs) do 
            RageUI.Button(p.name , nil, {
                RightLabel ="~g~"..tostring(cfg.currency)..tostring(p.price)
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent("ESXGUNSHOPS:buywap",p.price, p.hash)
                end
            end)
        end
        end, function()
    end)
end

function shotgunSM() 
    RageUI.IsVisible(RMenu:Get('esxgunshops', 'shotgun'), true, false, true, function()
        for i , p in pairs(cfg.guns.shotguns) do 
            RageUI.Button(p.name , nil, {
                RightLabel ="~g~"..tostring(cfg.currency)..tostring(p.price)
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent("ESXGUNSHOPS:buywap",p.price, p.hash)
                end
            end)
        end
        end, function()
    end)
end

function arsSM() 
    RageUI.IsVisible(RMenu:Get('esxgunshops', 'ars'), true, false, true, function()
        for i , p in pairs(cfg.guns.ars) do 
            RageUI.Button(p.name , nil, {
                RightLabel ="~g~"..tostring(cfg.currency)..tostring(p.price)
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent("ESXGUNSHOPS:buywap",p.price, p.hash)
                end
            end)
        end
        end, function()
    end)
end

function sniperSM() 
    RageUI.IsVisible(RMenu:Get('esxgunshops', 'sniper'), true, false, true, function()
        for i , p in pairs(cfg.guns.sniper) do 
            RageUI.Button(p.name , nil, {
                RightLabel ="~g~"..tostring(cfg.currency)..tostring(p.price)
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent("ESXGUNSHOPS:buywap",p.price, p.hash)
                end
            end)
        end
        end, function()
    end)
end

function throwSM() 
    RageUI.IsVisible(RMenu:Get('esxgunshops', 'throw'), true, false, true, function()
        for i , p in pairs(cfg.guns.throw) do 
            RageUI.Button(p.name , nil, {
                RightLabel ="~g~"..tostring(cfg.currency)..tostring(p.price)
            }, true, function(Hovered, Active, Selected)
                if Selected then
                    TriggerServerEvent("ESXGUNSHOPS:buywap",p.price, p.hash)
                end
            end)
        end
        end, function()
    end)
end

for k,v in pairs(cfg.gunshops) do 
    local px,py,pz,ph = table.unpack(v.ped)
    local model = -1643617475
    local v2 = vector3(px,py,pz)
    RequestModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Wait(0)
    end
    ped = CreatePed(5, model, v2, ph, true, false)
    SetEntityInvincible(ped, true)
    SetEntityCanBeDamaged(ped, false)
    SetPedCanRagdoll(GetPlayerPed(-1), false)
end

isInMenu = false
currentAmmunition = nil
Citizen.CreateThread(function() 
    while true do
        for k, v in pairs(cfg.gunshops) do 
            local x,y,z = table.unpack(v.marker)
            local v1 = vector3(x,y,z)
            local AreaHeIsIn = isInArea(v1) -- Called once and math are doing in the check, reduce CPU use a little cause the old way, the function was called to do the math and return the value
            if AreaHeIsIn <= 100.0 then 
                DrawMarker(25, v1.x,v1.y,v1.z - 0.999999, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 2.5, 255, 0, 0, 150, 0, 0, 2, 0, 0, 0, false)
            end
            if isInMenu == false then
                if AreaHeIsIn <= 1.4 then 
                    alert('Press ~INPUT_VEH_HORN~ to buy weapons')
                    if IsControlJustPressed(0, 51) then 
                        currentAmmunition = k
                        RageUI.Visible(RMenu:Get("esxgunshops", "main"), true)
                        isInMenu = true
                        currentAmmunition = k 
                    end
                end
            end
            if AreaHeIsIn <= 1.4 == false and isInMenu and k == currentAmmunition then
                RageUI.Visible(RMenu:Get("esxgunshops", "main"), false)
                isInMenu = false
                currentAmmunition = nil
            end
        end
        Citizen.Wait(0)
    end
end)

RegisterNetEvent("ESXGUNSHOPS:givewap")
AddEventHandler("ESXGUNSHOPS:givewap", function(hash) 
    --if GetLabelText(GetHashKey(hash)) ~= "NULL" then
        --print(GetLabelText(GetHashKey(hash)))
        GiveWeaponToPed(PlayerPedId(), GetHashKey(hash), 250, false, false)
    --else
       -- print(GetLabelText(GetHashKey(hash)) .. "      2")
        --TriggerServerEvent("ESXGUNSHOP:badWeapon", hash)
    --end
end)

function isInArea(v) 
    local dis = Vdist2(GetEntityCoords(PlayerPedId()), v)
    return dis
end

function alert(msg) 
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end