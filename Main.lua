-- better
local GameList = {
    ["136801880565837"] = { 
        name = "Flick", 
        url = "https://api.jnkie.com/api/v1/luascripts/public/25ddb8a60bddd1986f4fa9e02e318eab33bc507751d43b6c7fdba1842a208521/download",
        keyless = false 
    },
    ["17625359962"] = { 
        name = "Rivals", 
        url = "https://api.jnkie.com/api/v1/luascripts/public/4fd0a374461ccecc3532ce14ce12e58ac7386a841739aa10b0dfe7f2c3493a5e/download",
        keyless = false 
    },
}

local plr = game.Players.LocalPlayer
local PlaceId = tostring(game.PlaceId)
local entry = GameList[PlaceId]

if entry then
    if entry.keyless then
        loadstring(game:HttpGet(entry.url))()
    else
    end
else
    plr:Kick("Game not supported")
end
