RegisterCommand('spawnmoney', function(source, args)
    local src = source
    local Player = exports.qbx_core:GetPlayer(src)

    if not Player then return end

    local amount = tonumber(args[1])

    if not amount or amount <= 0 then
        TriggerClientEvent('QBCore:Notify', src, 'Usage: /spawnmoney [amount]', 'error')
        return
    end

    Player.Functions.AddMoney('bank', amount, 'admin-money-spawner')
    TriggerClientEvent('QBCore:Notify', src, 'You received $' .. amount, 'success')
end, true)