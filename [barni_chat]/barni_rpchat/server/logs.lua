function log(title, playerID, playerName, reportmessage, steam,discord,ip, webhook)
    if barni.Logs then
        local steamprofile = "https://steamcommunity.com/profiles/" .. tostring(tonumber(steam:gsub("steam:", ""),16));
        local embed = {
            {
                ["color"] = 8388736,
                ["title"] = "**".. title .."**",
                ["author"] = {
                ["name"] = "BarniChat",
                ["url"] = "https://github.com/Barni5",
                ["icon_url"] = "https://www.rainforest-alliance.org/wp-content/uploads/2021/06/capybara-square-1.jpg.optimal.jpg"
                },
                ["footer"] = {
                ["text"] = "🌠 - [ "..os.date('%d.%m.%Y - %H:%M:%S').." ]",
                ["icon_url"] = 'https://www.rainforest-alliance.org/wp-content/uploads/2021/06/capybara-square-1.jpg.optimal.jpg'
                },
                ["fields"] = {

                    {
                        ["name"]= "Player Name",
                        ["value"]= "[**"..playerID.."**] "..playerName,
                        ["inline"] = true
                    },
                    {
                        ["name"]= "Message",
                        ["value"]= reportmessage,
                        ["inline"] = false
                    },
                    {
                        ["name"]= "Steam",
                        ["value"]= "["..steam.."]("..steamprofile..")",
                        ["inline"] = true
                    },
                    {
                        ["name"]= "Discord",
                        ["value"]= "<@"..discord:gsub('discord:', '')..">",
                        ["inline"] = true
                    },
                    {
                        ["name"]= "IP Address",
                        ["value"]= ("[%s](https://ipinfo.io/%s)"):format(ip:gsub('ip:', ''),ip:gsub('ip:', '')),
                        ["inline"] = true
                    },
                }
            }
        }
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = barni.WebHookName, embeds = embed}), { ['Content-Type'] = 'application/json' })
    end
  end