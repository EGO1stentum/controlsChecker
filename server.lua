RegisterNetEvent('sendToDiscord', function(message)

    local color = Config.Color
    local xPlayer = ESX.GetPlayerFromId(source)

    if Config.ESX then
        message = message .. Config.Message3 .. xPlayer.identifier
    end

    if color == 'green' then
        color = 5763719
    elseif color == 'blue' then
        color = 3447003
    elseif color == 'red' then
        color = 15548997
    elseif color == 'yellow' then
        color = 16776960
    elseif color == 'orange' then
        color = 11027200
    elseif color == 'default' then
        color = 0
    elseif color == 'grey' then
        color = 9807270
    end

    local embed = {
          {
              ["color"] = color,
              ["thumbnail"] = {url = Config.Thumbnail},
              ["title"] = "**".. Config.Title .."**",
              ["description"] = message,
              ["footer"] = {
                  ["text"] = Config.Footer,
              },
          }
      }
  
    PerformHttpRequest(Config.Webhook, function(err, text, headers) end, 'POST', json.encode({username = Config.botName, embeds = embed}), { ['Content-Type'] = 'application/json' })
    
end)
   