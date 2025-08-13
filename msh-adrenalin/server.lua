RegisterNetEvent("msh-adrenalin:adrenalinsil")
AddEventHandler("msh-adrenalin:adrenalinsil", function (id)
exports.ox_inventory:RemoveItem(id, "adrenalin", 1 )
end)