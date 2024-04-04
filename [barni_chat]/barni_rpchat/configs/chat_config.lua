barni = {}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

barni.AdminGroups = { -- admin groups to get access to admin commands like announce and other shit :P
    ["admin"]    = true,
    ["mod"]      = true,
    ["owner"]    = true,
    ["staff"]    = true,
    ["trial"]    = true,
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

barni.Jobs = { --jobs for example police announcement
    -- Don't Touch     Job Name
        ['LSPD']  =   'police',
        ['EMS']   =   'ambulance',
        ['LSSD']  =   'sheriff',
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

barni.Logs = true -- webhook logging [set up your webhooks in webhook_config :D]

barni.MaxHereTexts = 5 -- How many /here texts can one player place?

barni.MaxDocCount = 60 -- Maximum /doc time player can do

barni.MeDoDisplayTime = 5000 -- [in ms] How long should /me and /do 3D texts be displayed

barni.OnlyInicials = false -- In commands like /me, /do, use only char name inicials. (John Doe -> J. D.) they cant use the chat to mg names

barni.Reports = false -- Enable reports? /report [basic shit report system] :DDD

barni.AdminChat = true -- Enable admin chat? /a :O 

barni.TransparentStatusHere = false -- Enable transparent background for /here and /status texts

barni.AdCost = 1000 -- Price for sending advertisements, money will be checked and removed from bank [works with any esx bank system :D]

barni.AdCooldown = 15000 -- in ms, how long should the cooldown between sending ads should be

barni.LOOCAdminPrefixes = false -- Enable admin prefixes for LOOC messages. (If admin has group admin, the mssage will be - [ADMIN] PlayerName: Message )

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

barni.Commands = {
-- Don't Touch             /command name --shity ass chat cant show the commands idk why but they can still use them
    ["Status"]              = "status",
    ["Here"]                = "here",
    ["Advertisement"]       = "ad",
    ["EMS"]                 = "ems",
    ["Police"]              = "police",
    ["Sheriff"]             = "sheriff",
    ["Blackmarket"]         = "bm",
    ["Twitter"]             = "twt",
    ["Staff Announcement"]  = "announce",
    ["Job"]                 = "job",
}

barni.Suggestions = { -- /command suggestions that will pop up in chat (Make sure to add /) also you can use the patsh for the commands
    ['/me'] = {
        description = "/me command",
        argument = { ["MESSAGE"] = "[TEXT]" }
    },
    ['/do'] = {
        description = "/do command",
        argument = { ["MESSAGE"] = "[TEXT]" }
    },
    ['/report'] = {
        description = "Command using to communicate with admins",
        argument = { ["REPORT CONTENT"] = "What do you want to report?" }
    },
    ['/dm'] = {
        description = "[ADMIN ONLY] Private message command",
        argument = { ["ID"] = "Player ID" }
    },
    [barni.Commands['Advertisement']] = {
        description = "Share an advertisement for all players, costs "..barni.AdCost.."$",
        argument = { ["MESSAGE"] = "[TEXT]" }
    },
    [barni.Commands['Twitter']] = {
        description = "Send a twitter message",
        argument = { ["MESSAGE"] = "[TEXT]" }
    },
    [barni.Commands['Blackmarket']] = {
        description = "Send a blackmarket message",
        argument = { ["MESSAGE"] = "[TEXT]" }
    },
    [barni.Commands['Staff Announcement']] = {
        description = "Send a Staff Announcement message",
        argument = { ["MESSAGE"] = "[TEXT]" }
    },
    [barni.Commands['Job']] = {
        description = "Shows your current job",
        argument = { ["Your job"] = "[JOB]" }
    },
    [barni.Commands['police']] = {
        description = "Police announcement",
        argument = { ["MESSAGE"] = "[TEXT]" }
    },
    [barni.Commands['EMS']] = {
        description = "EMS announcement",
        argument = { ["MESSAGE"] = "[TEXT]" }
    },
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

barni.AutoMessages = true
barni.AutoMessageInterval = 25 -- In minutes
barni.AutoMessagesList = { -- List of messages that will be randomly sent in time intervals :DDD
    "Make sure to join our discord! discord.gg/invite",
    "You can use the /report command to report any problems!",
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Notify = function(title,desc) -- You can add your own notify function [default ox_lib notify]
    lib.notify({
        title = title,
        description = desc,
        position = 'top',
        style = {
            backgroundColor = '#1E1E2E',
            color = '#C1C2C5',
            ['.description'] = {
              color = '#909296'
            }
        },
        icon = 'comments',
        iconColor = '#457b9d'
    })
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------