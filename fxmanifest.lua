fx_version 'adamant'
games { 'gta5' };

description 'ESX Version of VRP GunShop (https://forum.cfx.re/t/release-vrp-rageui-vrp-gunshop/1160555). Thanks a lot to Bxrks for letting me make an ESX Version'

---- Difference with the VRP Version :
----    - In the menu, price are in green
----    - Little improvement in the main thread (~ -0.02 ms CPU Usage)
----    - Edit of the main blips are created and fix the hundreds of blips

contributor {
    'Bxrks', -- Did all main code
    'Naytoxp',-- Only did the ESX version 
};

dependencies {
    "RageUI"
}
client_scripts {
    '@es_extended/locale.lua',
    "@RageUI/src/RMenu.lua",
    "@RageUI/src/menu/RageUI.lua",
    "@RageUI/src/menu/Menu.lua",
    "@RageUI/src/menu/MenuController.lua",
    "@RageUI/src/components/Audio.lua",
    "@RageUI/src/components/Rectangle.lua",
    "@RageUI/src/components/Screen.lua",
    "@RageUI/src/components/Sprite.lua",
    "@RageUI/src/components/Text.lua",
    "@RageUI/src/components/Visual.lua",
    "@RageUI/src/menu/elements/ItemsBadge.lua",
    "@RageUI/src/menu/elements/ItemsColour.lua",
    "@RageUI/src/menu/elements/PanelColour.lua",
    "@RageUI/src/menu/items/UIButton.lua",
    "@RageUI/src/menu/items/UICheckBox.lua",
    "@RageUI/src/menu/items/UIList.lua",
    "@RageUI/src/menu/items/UIProgress.lua",
    "@RageUI/src/menu/items/UISlider.lua",
    "@RageUI/src/menu/items/UISliderHeritage.lua",
    "@RageUI/src/menu/items/UISliderProgress.lua",
    "@RageUI/src/menu/panels/UIColourPanel.lua",
    "@RageUI/src/menu/panels/UIGridPanel.lua",
    "@RageUI/src/menu/panels/UIGridPanelHorizontal.lua",
    "@RageUI/src/menu/panels/UIPercentagePanel.lua",
    "@RageUI/src/menu/panels/UIStatisticsPanel.lua",
    "@RageUI/src/menu/windows/UIHeritage.lua",
    "cfg/config.lua",
    'client.lua',

}

server_scripts{
    '@es_extended/locale.lua',
    "cfg/config.lua",
    "server.lua"
}