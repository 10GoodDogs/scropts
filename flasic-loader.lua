local games = {
  {id = 0, url="SPTS"}
}

-- this shit is obfuscated so dont you dare skid it
local url = 'https://scripts.luawl.com/%s/Flasic.lua'
for _,v in pairs(games) do
    if v.id == game.PlaceId then
      loadstring(game:HttpGet(string.format(url, v.url)))()
    end
end
