ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("ESXGUNSHOPS:buywap")
AddEventHandler('ESXGUNSHOPS:buywap', function(price, hash)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    print(xPlayer.getAccount('bank').money)
    if xPlayer.getAccount('bank').money > price then
        TriggerClientEvent("ESXGUNSHOPS:givewap", _source, hash)
        xPlayer.removeAccountMoney('bank', price)

        print(xPlayer.getAccount('bank').money)
        TriggerClientEvent("esx:showNotification", xPlayer.source, "Paid "..cfg.currency..tostring(price))
    else 
        TriggerClientEvent("ESXGUNSHOPS:menu", _source, false)
        TriggerClientEvent("esx:showNotification", xPlayer.source, "Insufficient funds")
    end
end)