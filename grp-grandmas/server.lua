GRPCore             = nil

TriggerEvent('grp:getSharedObject', function(obj) GRPCore = obj end)

RegisterServerEvent('mythic_hospital:server:HealSomeShit')
AddEventHandler('mythic_hospital:server:HealSomeShit', function()
    local src = source

	-- YOU NEED TO IMPLEMENT YOUR FRAMEWORKS BILLING HERE
	local xPlayer = GRPCore.GetPlayerFromId(src)
	xPlayer.removeBank(5000)
        --TriggerClientEvent('grp:showNotification', src, '~w~Você pagou ~r~$5,000 ~w~pela a ajuda da vovó!')
end)
