function test()
    print("asd")
    local num = 0
    local i = num + 1
    print(i)
end

local netId = bagName:gsub("entity:", "")
local timer = GetGameTimer()
while not NetworkDoesEntityExistWithNetworkId(tonumber(netId)) do
    Wait(0)
    if GetGameTimer() - timer > 10000 then
        return
    end
end

local vehicle = NetToVeh(tonumber(netId))
local timer2 = GetGameTimer()
while NetworkGetEntityOwner(vehicle) ~= PlayerId() do
    Wait(0)
    if GetGameTimer() - timer2 > 10000 then
        return
    end
end
