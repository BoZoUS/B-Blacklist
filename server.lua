RegisterServerEvent("blacklist.checkForAdminPermissions")
AddEventHandler('blacklist.checkForAdminPermissions', function()
    if IsPlayerAceAllowed(source, bypassPerm) then
        TriggerClientEvent("blacklist.setAdminPermissions", source, true)
    end
end)

PerformHttpRequest("https://github.com/BoZoUS/B-Blacklist/releases/tag/1.0.0", function(err, serverVersion, headers)
    local version = "v1.0.0"
    if string.find(serverVersion, version) == nil then
        Wait(120)
        print("\n")
        print("--------------------- B-VehicleBlacklist ---------------------")
        print("--- ALERT : Your version of B-VehicleBlacklist is outdated ---")
        print("--- Please update your version as soon as possible ---")
        print("------------------------------------------------------")
        print("\n")
    else
        Wait(120)
        print("\n")
        print("--------------------- B-VehicleBlacklist ---------------------")
        print("-------- B-VehicleBlacklist is on the latest version ---------")
        print("--------------------------------------------------------------")
    end
end)