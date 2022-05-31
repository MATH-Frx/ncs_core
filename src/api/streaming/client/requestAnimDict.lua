---requestAnimDict
---@param animDict string
---@param callback function
---@public
function API_Streaming:requestAnimDict(animDict, callback)
    if not HasAnimDictLoaded(animDict) then
        RequestAnimDict(animDict)
        while not HasAnimDictLoaded(animDict) do
            Wait(0)
        end
        return (animDict)
    end
end