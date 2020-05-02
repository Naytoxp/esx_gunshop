ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function checkEsExtendedVersion()
    local version = GetResourceMetadata("es_extended", 'version')
    if string.find(version, "1.1") then
        print("You have ESX " .. version .. " the script is still compatible, but you should update it")
        cfg.accounts = { 'bank', 'black_money', "cash" }
    elseif string.find(version, "1.2") then
        print("ESX is fully compatible with this script ! Enjoy !")
    end
end

checkEsExtendedVersion()

RegisterServerEvent("ESXGUNSHOPS:buywap")
AddEventHandler('ESXGUNSHOPS:buywap', function(price, hash)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local paid
    for k, v in pairs(cfg.accounts) do
        print(v)
        if v == "cash" then
            amount = xPlayer.getMoney()
        else
            amount = xPlayer.getAccount(v).money
        end
        if amount > price then
            TriggerClientEvent("ESXGUNSHOPS:givewap", _source, hash)
            if v == "cash" then
                xPlayer.removeMoney(price)
            else
                xPlayer.removeAccountMoney(v, price)
                print(xPlayer.getAccount(v).money .. " ".. xPlayer.getAccount(v).label)
            end
            TriggerClientEvent("esx:showNotification", xPlayer.source, "Paid "..cfg.currency..tostring(price))
            paid = true
            break
        end
    end
    if not paid then
        TriggerClientEvent("ESXGUNSHOPS:menu", _source, false)
        TriggerClientEvent("esx:showNotification", xPlayer.source, "Insufficient funds")
    end
end)

RegisterServerEvent("ESXGUNSHOPS:badWeapon")
AddEventHandler('ESXGUNSHOPS:badWeapon', function(hash)
    print("~r~Wrong hash is in the config file : " .. hash)
end)