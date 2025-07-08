Config = {}

--[[ Language ]]--
Config.Locale = 'en' -- en, de, es, cs.

-- [[ Framework ]] --
Config.Framework = {
    autoDetect = true,        -- Automatically finds and sets supported framework on your server.
    Type = 'esx',             -- ESX = 'esx' / QBCore = 'qbcore'.
    Export = 'es_extended',   -- ESX = 'es_extended' / QBCore = 'qb-core'.
}

--[[ Menu ]]--
Config.Menu = 'esx'   -- auto_detect      - Automatically finds and sets supported menu on your server.
                              -- ox               - https://overextended.github.io/docs.
                              -- esx              - https://github.com/esx-framework/esx-legacy/tree/main/%5Besx%5D/esx_menu_default.
                              -- qb               - https://github.com/qbcore-framework/qb-menu.

--[[ Notifications ]]--
Config.Notify = 'esx'   -- auto_detect, ox, esx, qb.
Config.NotifyType = {success = 'success', info = 'info', error = 'error'}
Config.Sounds = true

--[[ Chat Style ]]--
Config.ChatStyle = 'styleModern2'   -- styleNormal, styleModern, styleModern2, styleCustom(Can be customized in sv_utils.lua).
Config.ShowTime = true             -- Do you want to see time when the message was posted ?.

--[[ Other ]]--
Config.TextSize = 1             -- 3D text size for all commands except Config.TextWhenTyping.
Config.ChatSounds = true        -- Sound effects [if true player will hear a sound upon sending a message].
Config.TimeFormat = '%H:%M'     -- Time format used in discord logs and styleModern2 - https://www.lua.org/pil/22.1.html.
Config.NotValidCommand = true   -- Do you want to see a message when player uses a command thats not valid?
Config.UseChatNotify = false     -- Use chat script notifications or your custom ones?

--[[ Floating Text When Typing ]]--
Config.TextWhenTyping = {
    Enable = true,
    UseInCar = true,
    Text = 'Typing',
    Use3dText = {
        Hight = 0.95,          -- Hight of 3d text.
        Size = 1,              -- Size of 3d text
        Background = false,    -- If true there will be background behind 3d text.
        AnimatedDots = true,   -- Use animated dots after Text.
        Color = {
            Text = {255, 255, 255, 215},     -- Color of the 3d text [r, g, b, opacity].
            Background = {25, 25, 25, 68},   -- Color of the 3d text background [r, g, b, opacity].
        },
    },
}

--[[ Logs ]]--
Config.DiscordLogs = {
    Icon = 'https://imgur.com/OrnXItg.png',   -- Icon that will appear in discord logs.
    ServerName = 'LOTUS',          -- Name that will appear in discord logs.

    -- You can set all discord webhooks, bot token and server id in the utils.lua file.
}

Config.IngameLogs = {
    Enabled = true,        -- If false you will disable the menu.
    Command = 'chatlog',   -- Command that will open the menu.
}

--[[ Discord Roles ]]--
Config.DiscordRolesSettings = {
    Enable = true,        -- If false discord roles in chat will be disabled.
    UpdateInterval = 60,   -- How often are discord roles going to be updated [in seconds].

    -- Don't forget to add BotToken and ServerId in the utils.lua file.
}

Config.DiscordRoles = {
    -- The chat will display the player's highest role from this table.
    {
        id = '1373153785668698197',   -- Discord role id.
        use = true,                  -- Use this discord role.
        name = '👑Owner',           -- Name that will display before player name in chat.
        color = '255, 255, 0',       -- Color of the display name in chat.
    }, 
    {
        id = '1373153785668698196',
        use = true,
        name = '👑CoOwner',
        color = '255, 215, 0',
    },
    {
        id = '1373257415654637618',
        use = true,
        name = 'COA | Coordinators',
        color = '164, 76, 242, 255',
    },
    {
        id = '1374097174953984030',
        use = true,
        name = 'COA I Community Manager',
        color = '252, 115, 201, 255',
    },
    {
        id = '1373153785643405409',
        use = true,
        name = 'COA | Senior admin',
        color = '0, 185, 0',
    },
    {
        id = '1373153785643405408',
        use = true,
        name = 'COA | Admin',
        color = '0, 185, 0',
    },
    {
        id = '1376180886126592010',
        use = true,
        name = 'COA | Jnr Admin',
        color = '0, 185, 0',
    },
    {
        id = '1376180530080387182',
        use = true,
        name = 'COA | Snr Moderator',
        color = '0, 185, 0',
    },
    {
        id = '1373153785643405404',
        use = true,
        name = 'COA | Moderator',
        color = '0, 185, 0',
    },
    {
        id = '1373153785643405403',
        use = true,
        name = 'COA | Trial Mod',
        color = '0, 185, 0',
    },
    {
        id = '1373153785588744201',
        use = true,
        name = 'San Andreas State Police',
        color = '71, 99, 173, 255',
    },
    {
        id = '1373153785597395097',
        use = true,
        name = 'Los Santos County Sheriffs Office',
        color = '234, 142, 80, 255',
    },
    {
        id = '1381397210020712498',
        use = true,
        name = 'Federal Bureau of Investigation',
        color = '0, 185, 0',
    },
    {
        id = '1373153785568038931',
        use = true,
        name = '👦 〣 Civilian',
        color = '109, 247, 204, 255',
    },
    {
        id = '1373153785613914189',
        use = true,
        name = '😎 || Certified Emo',
        color = '77, 77, 77, 255',
    },
}

--[[ 3D Text ]]--
Config.Position3dText = 2.3   -- Change the default position of the 3d text [2.3 - On Player torso, +3 - Above Player Hear].
Config.Custom3dTextFont = {   -- Custom font - https://fonts.google.com/specimen/Fira+Sans.
    Enable = false,
    FileName = 'firesans',
    FontId = 'Fire Sans',
}

--[[ Anti Spam ]]--
Config.AntiSpam = {
    Enable = true,   -- Enable or disable spam detection.
    Timeout = 5,     -- Time (in seconds) a player must wait before sending a new message after being caught spamming.
    RepeatedTimeout = {
        Enable = true,   -- Enable or disable extended timeouts for repeated offenses.
        Timeout = 20,    -- Mute duration (in seconds) if a player is caught spamming 3 or more times within 30 seconds.
    },
    DiscordLogs = {
        Enable = true,                          -- If false, this Discord log will be disabled.
        Label = 'PLAYER WAS CAUGHT SPAMMING',   -- Label for the Discord log message.
        Color = '11730944',                     -- Color for the Discord embed message (decimal format). Convert hex to decimal: https://www.mathsisfun.com/hexadecimal-decimal-colors.html.
    },
}


--[[ Blacklisted Words ]]--
Config.BlackListedWords = {
    Enable = true,   -- Enable or disable blacklisted words detection.
    Words = {        -- Add blacklisted words here (use only lowercase for consistency).
        'discord',
        'youtube',
        'nigger',
        'nigga',
        'retard',
    },
    DiscordLogs = {
        Enable = true,                            -- If false, this Discord log will be disabled.
        Label = 'PLAYER USED BLACKLISTED WORD',   -- Label for the Discord log message.
        Color = '11730944',                       -- Color for the Discord embed message (decimal format). Convert hex to decimal: https://www.mathsisfun.com/hexadecimal-decimal-colors.html.
    },
}


--[[ Report System ]]--
Config.ReportSystem = {
    Enable = true,                   -- Enable or disable the report system.
    UseDiscordRoles = true,          -- If true, the player's Discord role will display before their name in the message label.
    Command = 'report',              -- Command name to trigger the report system.
    Label = 'New Report',            -- Label for the report message in chat.
    Icon = 'fas fa-shield-halved',   -- Icon that will appear before the message text in chat. Leave blank for no icon.
    Cooldown = 2,                    -- Time (in minutes) that must pass before a player can send another report.
    Color = {
        Label = '255, 255, 255',         -- Color of the report message label text (RGB format).
        Text = '255, 255, 255',          -- Color of the report message text (RGB format).
        TextStyleNormal = '158, 0, 0',   -- Color for normal report text (when Config.ChatStyle = 'styleNormal').
        Background = '158, 0, 0, 0.9',   -- Background color of the report message (RGBA format for transparency).
    },
    Suggestion = {
        Enable = true,                                               -- If false, suggestions for this command will be disabled.
        Text = 'Send report to active admins.',                      -- Suggestion text shown to players.
        Help = 'Message',                                            -- Help text for the report command.
        Info = 'Every admin on the server will see this message.',   -- Info on who will receive the report.
    },
    -- Permissions [Who can see player reports]
    StaffCommand = true,   -- If true, staff members can see the report command.
    StaffGroups = { 
        'superadmin', 
        'admin', 
        'mod', 
    },
    SpecifiedPlayers = false,   -- If true, specified players will be able to see reports.
    SpecifiedPlayersLicenses = {
        'steam:',
        'license:',
        'discord:',
        'license2:',
    },
    -- Logs
    DiscordLogs = {
        Enable = true,          -- If false, this Discord log will be disabled.
        Label = 'NEW REPORT',   -- Label for the Discord log message.
        Color = '10354688',     -- Color for the Discord embed message (decimal format). Convert hex to decimal: https://www.mathsisfun.com/hexadecimal-decimal-colors.html.
    },
}


--[[ Admin Chat System ]]--
Config.AdminChatSystem = {
    Enable = true,                     -- If false, this command will be disabled.
    UseDiscordRoles = true,            -- If true, the player's Discord role will display before their name in the message label.
    Command = 'a',                     -- Command name for admin chat.
    Label = 'ADMINCHAT',               -- Label for the admin chat message.
    Name = 'steamname',                -- Name format that will be shown in chat (options: steamname, icname, icfirstname, icinitials, icsurname, playerid, playerjob).
    Icon = 'fas fa-square-envelope',   -- Icon to appear before the message text in chat. Leave blank for no icon.
    Color = {
        Label = '255, 255, 255',         -- Color of the message label text (RGB format).
        Text = '255, 255, 255',          -- Color of the message text (RGB format).
        TextStyleNormal = '255, 0, 0',   -- Color of the message text when Config.ChatStyle = 'styleNormal'.
        Background = '255, 0, 0, 0.9'    -- Color of the message background (RGBA format for transparency).
    },
    Suggestion = {
        Enable = true,                                       -- If false, suggestions for this command will be disabled.
        Text = 'Admin chat that only admins can see/use.',   -- Text explaining the command.
        Help = 'Message',                                    -- Help text for the admin chat command.
        Info = 'For example: Hello, guys.',                  -- Info text explaining how to use the command.
    },
    -- Permissions [Who can see and use admin chat]
    StaffCommand = true,   -- If true, staff members can see and use the admin chat.
    StaffGroups = {
        'superadmin', 
        'admin', 
        'mod', 
    },
    SpecifiedPlayers = false,   -- If true, specified players can see and use admin chat.
    SpecifiedPlayersLicenses = {
        'steam:11000011868e51c',
        'license:',
        'discord:',
        'license2:',
    },
    -- Logs
    DiscordLogs = {
        Enable = true,          -- If false, this Discord log will be disabled.
        Label = '/ADMINCHAT',   -- Label for the Discord log message.
        Color = '10354688',     -- Color for the Discord embed message (decimal format). Convert hex to decimal: https://www.mathsisfun.com/hexadecimal-decimal-colors.html.
    },
}


--[[ Private Message System ]]--
Config.PrivateMsgSystem = {
    Enable = true,                     -- If false, this command will be turned off.
    UseDiscordRoles = true,            -- If true, the player's Discord role will display before their name in the message label.
    Command = 'pm',                    -- Command name.
    Label = 'PRIVATE MESSAGE',         -- Label of the message in chat.
    Name = 'steamname',                -- Name shown in chat [steamname, icname, icfirstname, icinitials, icsurname, playerid, playerjob].
    Icon = 'fas fa-square-envelope',   -- Icon that will appear in chat before the text [Leave blank '' if not needed].
    Color = {
        Label = '255, 255, 255',            -- Color of the message label text.
        Text = '255, 255, 255',             -- Color of the message text.
        TextStyleNormal = '215, 174, 38',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
        Background = '215, 174, 38, 0.9',   -- Color of the message background.
    },
    Suggestion = {
        Enable = true,                              -- If false, suggestions for this command will be disabled.
        Text = 'Send someone a private message.',   -- Text explaining the command.
        Help = 'Message',                           -- Help text for the admin chat command.
        Info = 'For example - Hello bro.',          -- Info text explaining how to use the command.
        Help_Id = 'Id',
        Info_Id = 'Id of the player you want to send the message to.',
    },
    -- Permissions [Who will be able to use private messages]
    StaffCommand = false,   -- If true, staff members can send a private message.
    StaffGroups = {
        'superadmins',
        'admin',
        'mods',
    },
    SpecifiedPlayers = false,   -- If true, specified players will be able to send a private message.
    SpecifiedPlayersLicenses = {
        'steam:11000011868e51c',
        'license:',
        'discord:',
        'license2:',
    },
    DiscordLogs = {
        Enable = true,        -- If false, this Discord log will be disabled.
        Label = '/PM',        -- Discord log label.
        Color = '11690631',   -- Color for the Discord embed message (decimal format). Convert hex to decimal: https://www.mathsisfun.com/hexadecimal-decimal-colors.html.
    },
}

--[[ Notify Messages ]]--
Config.SuccessMessage = {
    Label = 'SUCCESS:',             -- Label of the message in chat.
    Icon = 'fas fa-circle-check',   -- Icon that will appear in the chat before the text [Leave blank '' if not needed].
    Color = {
        Label = '255, 255, 255',           -- Color of the message label text.
        Text = '255, 255, 255',            -- Color of the message text.
        TextStyleNormal = '75, 206, 18',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
        Background = '75, 206, 18, 0.9',   -- Color of the message background.
    },
}

Config.InfoMessage = {
    Label = 'INFO:',               -- Label of the message in chat.
    Icon = 'fas fa-circle-info',   -- Icon that will appear in the chat before the text [Leave blank '' if not needed].
    Color = {
        Label = '255, 255, 255',           -- Color of the message label text.
        Text = '255, 255, 255',            -- Color of the message text.
        TextStyleNormal = '4, 128, 236',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
        Background = '4, 128, 236, 0.9',   -- Color of the message background.
    },
}

Config.ErrorMessage = {
    Label = 'ERROR:',                       -- Label of the message in chat.
    Icon = 'fas fa-triangle-exclamation',   -- Icon that will appear in the chat before the text [Leave blank '' if not needed].
    Color = {
        Label = '255, 255, 255',         -- Color of the message label text.
        Text = '255, 255, 255',          -- Color of the message text.
        TextStyleNormal = '255, 0, 0',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
        Background = '255, 0, 0, 0.9',   -- Color of the message background.
    },
}

--[[ Join/Leave Message ]]--
Config.JoinMessage = {
    Enable = true,                                 -- If false, the join message will be turned off.
    ShowOnJoin = true,                             -- true = show message when player joins from FiveM menu, false = show message when their character loads.
    UseDiscordRoles = true,                        -- If true, the player's Discord role will display before their name in the message label.
    Label = 'JOIN:',                               -- Label of the message in chat.
    Message = '%s is connecting to the server!',   -- Message that will appear in chat upon player connecting.
    Icon = 'fas fa-arrow-right-to-bracket',        -- Icon that will appear in the chat before the text [Leave blank '' if not needed].
    Color = {
        Label = '255, 255, 255',           -- Color of the message label text.
        Text = '255, 255, 255',            -- Color of the message text.
        TextStyleNormal = '21, 169, 60',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
        Background = '21, 169, 60, 0.9',   -- Color of the message background.
    },
    StaffCommand = false,   -- If true, only staff members from StaffGroups will be able to see this message.
    StaffGroups = {
        'superadmin',
        'admin',
        'mod',
    },
}

Config.LeaveMessage = {
    Enable = true,                              -- If false, the leave message will be turned off.
    UseDiscordRoles = true,                     -- If true, the player's Discord role will display before their name in the message label.
    Label = 'LEAVE:',                           -- Label of the message in chat.
    Message = '%s just left the server!',       -- Message that will appear in chat upon player leaving.
    Icon = 'fas fa-arrow-right-from-bracket',   -- Icon that will appear in the chat before the text [Leave blank '' if not needed].
    Color = {
        Label = '255, 255, 255',         -- Color of the message label text.
        Text = '255, 255, 255',          -- Color of the message text.
        TextStyleNormal = '255, 0, 0',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
        Background = '255, 0, 0, 0.9',   -- Color of the message background.
    },
    StaffCommand = false,   -- If true, only staff members from StaffGroups will be able to see this message.
    StaffGroups = {
        'superadmin',
        'admin',
        'mod',
    },
}

--[[ Special Commands ]]--
Config.DiceCommand = {
    Enable = true,            -- If false, this command will be turned off.
    UseDiscordRoles = true,   -- If true, the player's Discord role will display before their name in the message label.
    UseChatMessage = true,    -- If false and Use3dText.Enable is true, only 3D text will appear.
    Command = 'dice',         -- Command name.
    Label = 'DICE',           -- Label of the message in chat.
    Name = 'steamname',       -- Name that will be shown in chat [steamname, icname, icfirstname, icinitials, icsurname, playerid, playerjob].
    Icon = 'fas fa-dice',     -- Icon that will appear in the chat before the text [Leave blank '' if not needed].
    WaitTime = 2,             -- How long it takes to show the dice numbers [in seconds].
    Color = {
        Label = '255, 255, 255',            -- Color of the message label text.
        Text = '255, 255, 255',             -- Color of the message text.
        TextStyleNormal = '178, 98, 135',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
        Background = '178, 98, 135, 0.9',   -- Color of the message background.
    },
    Suggestion = {
        Enable = true,                                           -- If false, suggestions for this command will be disabled.
        Text = 'You will throw dice and it will land on 1-6.',   -- Text explaining the command.
    },
    Players = {
        Distance = 15,     -- Distance at which players will see this message.
        ShowName = true,   -- Show player name in chat?
    },
    Use3dText = {
        Enable = true,        -- If true, player message will display on their body with 3D text.
        Duration = 5,         -- Duration for how long the 3D text will be visible [in seconds].
        Background = false,   -- If true, there will be a background behind the 3D text.
        Color = {
            Text = {255, 255, 255, 215},     -- Color of the 3D text [r, g, b, opacity].
            Background = {25, 25, 25, 68},   -- Color of the 3D text background [r, g, b, opacity].
        },
    },
    DiscordLogs = {
        Enable = true,        -- If false, this Discord log will be disabled.
        Label = '/DICE',      -- Discord log label.
        Color = '11690631',   -- Color for the Discord embed message (decimal format). Convert hex to decimal: https://www.mathsisfun.com/hexadecimal-decimal-colors.html.
    },
}

Config.TryCommand = {
    Enable = true,            -- If false, this command will be turned off.
    UseDiscordRoles = true,   -- If true, the player's Discord role will display before their name in the message label.
    UseChatMessage = true,    -- If false and Use3dText.Enable is true, only 3D text will appear.
    Command = 'try',          -- Command name.
    Label = 'TRY',            -- Label of the message in chat.
    Name = 'steamname',       -- Name that will be shown in chat [steamname, icname, icfirstname, icinitials, icsurname, playerid, playerjob].
    Icon = 'fas fa-random',   -- Icon that will appear in the chat before the text [Leave blank '' if not needed].
    Color = {
        Label = '255, 255, 255',            -- Color of the message label text.
        Text = '255, 255, 255',             -- Color of the message text.
        TextStyleNormal = '215, 174, 38',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
        Background = '215, 174, 38, 0.9',   -- Color of the message background.
    },
    Suggestion = {
        Enable = true,                               -- If false, suggestions for this command will be disabled.
        Text = '50% chance on getting Yes or No.',   -- Text explaining the command.
    },
    Players = {
        Distance = 15,     -- Distance at which players will see this message.
        ShowName = true,   -- Show player name in chat?
    },
    Use3dText = {
        Enable = true,        -- If true, player message will display on their body with 3D text.
        Duration = 5,         -- Duration for how long the 3D text will be visible [in seconds].
        Background = false,   -- If true, there will be a background behind the 3D text.
        Color = {
            Text = {255, 255, 255, 215},     -- Color of the 3D text [r, g, b, opacity].
            Background = {25, 25, 25, 68},   -- Color of the 3D text background [r, g, b, opacity].
        },
    },
    DiscordLogs = {
        Enable = true,        -- If false, this Discord log will be disabled.
        Label = '/TRY',       -- Discord log label.
        Color = '11630631',   -- Color for the Discord embed message (decimal format). Convert hex to decimal: https://www.mathsisfun.com/hexadecimal-decimal-colors.html.
    },
}

Config.DocCommand = {
    Enable = true,             -- If false, you will turn off this command.
    UseDiscordRoles = true,    -- If true, the player's Discord role will display before their name in the message label.
    UseChatMessage = true,     -- If false and Use3dText.Enable is true, only 3D text will appear.
    Command = 'doc',           -- Command name.
    Label = 'DOC',             -- Label of the message in chat.
    Name = 'steamname',        -- Name that will be shown in chat [steamname, icname, icfirstname, icinitials, icsurname, playerid, playerjob].
    Icon = 'fas fa-list-ol',   -- Icon that will appear in the chat before the text [Leave blank '' if not needed].
    MaxNumber = 15,            -- Max number player can use.
    Color = {
        Label = '255, 255, 255',            -- Color of the message label text.
        Text = '255, 255, 255',             -- Color of the message text.
        TextStyleNormal = '29, 153, 198',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
        Background = '29, 153, 198, 0.9',   -- Color of the message background.
    },
    Suggestion = {
        Enable = true,                                                       -- If false, suggestions for this command will be disabled.
        Text = 'Type number and the chat will automatically count to it.',   -- Text explaining the command.
        Help = 'Message',                                                    -- Help text for the command.
        Info = 'Number you want to count to.',                               -- Info on the expected input.
    },
    Players = {
        Distance = 15,     -- Distance at which players will see this message.
        ShowName = true,   -- Show player name in chat?
    },
    Use3dText = {
        Enable = true,        -- If true, player message will display on their body with 3D text.
        Duration = 2,         -- Duration for how long each number in the 3D text will be visible [in seconds].
        Background = false,   -- If true, there will be a background behind the 3D text.
        Color = {
            Text = {255, 255, 255, 215},     -- Color of the 3D text [r, g, b, opacity].
            Background = {25, 25, 25, 68},   -- Color of the 3D text background [r, g, b, opacity].
        },
    },
    DiscordLogs = {
        Enable = true,       -- If false, this Discord log will be disabled.
        Label = '/DOC',      -- Discord log label.
        Color = '1939910',   -- Color for the Discord embed message (decimal format). Convert hex to decimal: https://www.mathsisfun.com/hexadecimal-decimal-colors.html.
    },
}

Config.StatusCommand = {
    Enable = true,                -- If false, you will turn off this command.
    UseDiscordRoles = true,       -- If true, the player's Discord role will display before their name in the message label.
    UseChatMessage = true,        -- If false and Use3dText.Enable is true, only 3D text will appear.
    Command = 'status',           -- Command name.
    CommandStop = 'stopstatus',   -- Command name to stop /status.
    Label = 'STATUS',             -- Label of the message in chat.
    Name = 'steamname',           -- Name that will be shown in chat [steamname, icname, icfirstname, icinitials, icsurname, playerid, playerjob].
    Icon = 'fas fa-signal',       -- Icon that will appear in the chat before the text [Leave blank '' if not needed].
    Color = {
        Label = '255, 255, 255',            -- Color of the message label text.
        Text = '255, 255, 255',             -- Color of the message text.
        TextStyleNormal = '215, 174, 38',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
        Background = '215, 174, 38, 0.9',   -- Color of the message background.
    },
    Suggestion = {
        Enable = true,                        -- If false, suggestions for this command will be disabled.
        Text = 'Your character status.',      -- Text explaining the command.
        Help = 'Message',                     -- Help text for the command.
        Info = 'For example - Broken Leg.',   -- Info on the expected input.
    },
    Players = {
        Distance = 15,     -- Distance at which players will see this message.
        ShowName = true,   -- Show player name in chat?
    },
    Use3dText = {
        Enable = true,        -- If true, player message will display on their body with 3D text.
        Background = false,   -- If true, there will be a background behind the 3D text.
        Color = {
            Text = {255, 255, 255, 215},     -- Color of the 3D text [r, g, b, opacity].
            Background = {25, 25, 25, 68},   -- Color of the 3D text background [r, g, b, opacity].
        },
    },
    DiscordLogs = {
        Enable = true,        -- If false, this Discord log will be disabled.
        Label = '/STATUS',    -- Discord log label.
        Color = '11690631',   -- Color for the Discord embed message (decimal format). Convert hex to decimal: https://www.mathsisfun.com/hexadecimal-decimal-colors.html.
    },
}

Config.HereCommand = {
    Enable = true,                 -- If false, you will turn off this command.
    UseDiscordRoles = true,        -- If true, the player's Discord role will display before their name in the message label.
    UseChatMessage = true,         -- If false and Use3dText.Enable is true, only 3D text will appear.
    Command = 'here',              -- Command name.
    CommandStop = 'stophere',      -- Command name to stop /here.
    Label = 'HERE',                -- Label of the message in chat.
    Name = 'steamname',            -- Name that will be shown in chat [steamname, icname, icfirstname, icinitials, icsurname, playerid, playerjob].
    Icon = 'fas fa-quote-right',   -- Icon that will appear in the chat before the text [Leave blank '' if not needed].
    Color = {
        Label = '255, 255, 255',            -- Color of the message label text.
        Text = '255, 255, 255',             -- Color of the message text.
        TextStyleNormal = '215, 174, 38',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
        Background = '215, 174, 38, 0.9',   -- Color of the message background.
    },
    Suggestion = {
        Enable = true,                                 -- If false, suggestions for this command will be disabled.
        Text = 'Status in your surrounding.',          -- Text explaining the command.
        Help = 'Message',                              -- Help text for the command.
        Info = 'For example - Blood on the ground.',   -- Info on the expected input.
    },
    Players = {
        Distance = 15,     -- Distance at which players will see this message.
        ShowName = true,   -- Show player name in chat?
    },
    Use3dText = {
        Enable = true,       -- If true, player message will display on their body with 3D text.
        Background = true,   -- If true, there will be a background behind the 3D text.
        Height = 0.19,       -- Height of 3D text.
        Color = {
            Text = {255, 255, 255, 215},     -- Color of the 3D text [r, g, b, opacity].
            Background = {25, 25, 25, 68},   -- Color of the 3D text background [r, g, b, opacity].
        },
    },

    DiscordLogs = {
        Enable = true,        -- If false, this Discord log will be disabled.
        Label = '/HERE',      -- Discord log label.
        Color = '16439866',   -- Color for the Discord embed message (decimal format). Convert hex to decimal: https://www.mathsisfun.com/hexadecimal-decimal-colors.html.
    },
}

--[[ Local Message ]]--
Config.LocalMessage = {
    Enable = true,                  -- If false, this message will be disabled.
    UseDiscordRoles = true,         -- If true, the player's Discord role will display before their name in the message label.
    Label = 'LOCAL',                -- Label of the message in chat.
    Name = 'steamname',             -- Name that will be shown in chat [steamname, icname, icfirstname, icinitials, icsurname, playerid, playerjob].
    Icon = 'fas fa-comment-dots',   -- Icon that will appear in the chat before the text [If you don't want to use it, leave it blank ''].
    Color = {
        Label = '255, 255, 255',             -- Color of the message label text.
        Text = '255, 255, 255',              -- Color of the message text.
        TextStyleNormal = '176, 176, 176',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
        Background = '176, 176, 176, 0.9',   -- Color of the message background.
    },
    Players = {
        Distance = 15,     -- Distance at which players will see this message.
        ShowName = true,   -- Show player name in chat?
    },
    DiscordLogs = {
        Enable = true,        -- If false, this Discord log will be disabled.
        Label = '/LOCAL',     -- Discord log label.
        Color = '11579568',   -- Color for the Discord embed message (decimal format). Convert hex to decimal: https://www.mathsisfun.com/hexadecimal-decimal-colors.html.
    },
}

--[[ Custom Commands ]]--
Config.Commands = {
    {
        Enable = true,            -- If false, this command will be disabled.
        UseDiscordRoles = true,   -- If true, the player's Discord role will display before their name in the message label.
        UseChatMessage = true,    -- If false and Use3dText.Enable is true, then only 3dText will appear.
        Command = 'me',           -- Command name.
        Name = 'steamname',       -- Name that will be shown in chat [steamname, icname, icfirstname, icinitials, icsurname, playerid, playerjob].
        Label = 'ME',             -- Label of the command in chat.
        Icon = 'fas fa-user',     -- Icon that will appear in the chat before the text [If you don't want to use it, leave it blank ''].
        Color = {
            Label = '255, 255, 255',            -- Color of the message label text.
            Text = '255, 255, 255',             -- Color of the message text.
            TextStyleNormal = '143, 40, 189',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
            Background = '143, 40, 189, 0.9',   -- Color of the message background.
        },
        Suggestion = {
            Enable = true,                                                                                   -- If false, suggestions for this command will be disabled.
            Text = 'Command to show specific player action.',                                                -- Text explaining the command.
            Help = 'Message',                                                                                -- Help text for the command.
            Info = 'Write here an action, for example - [Player is picking up a wrench from the ground].',   -- Info on the expected input.
        },
        Players = {
            Everyone = false,   -- Everyone on the server will see this message [turns off - Distance].
            ShowName = true,    -- Show player name in chat?
            Distance = 15,      -- Distance at which players will see this message.
        },
        Use3dText = {
            Enable = true,        -- If true, player message will display on their body with 3dText.
            Duration = 5,         -- Duration of how long the 3d text will be visible [in seconds].
            Background = false,   -- If true, there will be a background behind the 3d text.
            Color = {
                Text = {255, 255, 255, 215},     -- Color of the 3d text [r, g, b, opacity].
                Background = {25, 25, 25, 68},   -- Color of the 3d text background [r, g, b, opacity].
            },
        },
        Money = {
            TakeMoney = false,    -- If true, the player will need to pay to use this command.
            MoneyType = 'cash',   -- You can take player money from bank or cash ['cash', 'bank'].
            MoneyAmount = 250,    -- Amount of money that will be removed from the player upon posting this message.
        },
        -- Permissions
        Item = false,   -- If true, you will need an item to use this command.
        Items = { 
            'burger',
            'water',
        },
        Job = false,   -- If true, you will need to have a specific job to use this command.
        Jobs = {
            'police',
            'ambulance',
        },
        StaffCommand = false,   -- If true, only people with groups in StaffGroups will be able to use this command.
        StaffGroups = {
            'superadmin',
            'admin',
            'mod',
        },
        SpecifiedPlayers = false,   -- If true, only players whose licenses are in SpecifiedPlayersLicenses can use the command.
        SpecifiedPlayersLicenses = {
            'steam:11000011868e51c',
            'license:',
            'discord:',
            'license2:',
        },
        -- Logs
        DiscordLogs = {
            Enable = true,       -- If false, this Discord log will be disabled.
            Label = '/ME',       -- Discord log label.
            Color = '9382077',   -- Color for the Discord embed message (decimal format). Convert hex to decimal: https://www.mathsisfun.com/hexadecimal-decimal-colors.html.
        },
    },

    {
        Enable = true,
        UseDiscordRoles = true,
        UseChatMessage = true,
        Command = 'do',
        Name = 'steamname',
        Label = 'DO',
        Icon = 'fas fa-user',
        Color = {
            Label = '255, 255, 255',
            Text = '255, 255, 255',
            TextStyleNormal = '250, 218, 58',
            Background = '250, 218, 58, 0.9',
        },
        Suggestion = {
            Enable = true,
            Text = 'Command to show specific player action.',
            Help = 'Message',
            Info = 'Write here an action for example - [Player is picking wrench from the ground].',
        },
        Players = {
            Everyone = false,
            ShowName = true,
            Distance = 15,
        },
        Use3dText = {
            Enable = true,
            Duration = 5,
            Background = false,
            Color = {
                Text = {255, 255, 255, 215},
                Background = {25, 25, 25, 68},
            },
        },
        Money = {
            TakeMoney = false,
            MoneyType = 'cash',
            MoneyAmmount = 250,
        },
        -- Permissions
        Item = false,
        Items = { 
            'burger',
            'water',
        },
        Job = false,
        Jobs = {
            'police',
            'ambulance',
        },
        StaffCommand = false,
        StaffGroups = {
            'superadmin',
            'admin',
            'mod',
        },
        SpecifiedPlayers = false,
        SpecifiedPlayersLicenses = {
            'steam:11000011868e51c',
            'license:',
            'discord:',
            'license2:',
        },
        -- Logs
        DiscordLogs = {
            Enable = true,
            Label = '/DO',
            Color = '16439866',
        },
    },

    {
        Enable = true,
        UseDiscordRoles = false,
        UseChatMessage = true,
        Command = 'police',
        Name = 'steamname',
        Label = 'POLICE:',
        Icon = 'fas fa-shield-halved',
        Color = {
            Label = '255, 255, 255',
            Text = '255, 255, 255',
            TextStyleNormal = '31, 136, 206',
            Background = '31, 136, 206, 0.9',
        },
        Suggestion = {
            Enable = true,
            Text = 'Everybody in the city will see this police announcement.',
            Help = 'Message',
            Info = 'This is an police announcement command only for police officers.',
        },
        Players = {
            Everyone = true,
            ShowName = false,
            Distance = 15,
        },
        Use3dText = {
            Enable = false,
            Duration = 5,
            Background = false,
            Color = {
                Text = {255, 255, 255, 215},
                Background = {25, 25, 25, 68},
            },
        },
        Money = {
            TakeMoney = false,
            MoneyType = 'cash',
            MoneyAmmount = 250,
        },
        -- Permissions
        Item = false,
        Items = { 
            'burger',
            'water',
        },
        Job = true,
        Jobs = {
            'police',
        },
        StaffCommand = false,
        StaffGroups = {
            'superadmin',
            'admin',
            'mod',
        },
        SpecifiedPlayers = false,
        SpecifiedPlayersLicenses = {
            'steam:11000011868e51c',
            'license:',
            'discord:',
            'license2:',
        },
        -- Logs
        DiscordLogs = {
            Enable = true,
            Label = '/POLICE',
            Color = '2066638',
        },
    },

    {
        Enable = true,
        UseDiscordRoles = false,
        UseChatMessage = true,
        Command = 'twt',
        Name = 'icname',
        Label = 'TWITTER',
        Icon = 'fa-brands fa-twitter',
        Color = {
            Label = '255, 255, 255',
            Text = '255, 255, 255',
            TextStyleNormal = '0, 172, 238',
            Background = '0, 172, 238, 0.9',
        },
        Suggestion = {
            Enable = true,
            Text = 'Everybody in the city will see this twitter message.',
            Help = 'Message',
            Info = 'This is an twitter message.',
        },
        Players = {
            Everyone = true,
            ShowName = true,
            Distance = 15,
        },
        Use3dText = {
            Enable = false,
            Duration = 5,
            Background = false,
            Color = {
                Text = {255, 255, 255, 215},
                Background = {25, 25, 25, 68},
            },
        },
        Money = {
            TakeMoney = false,
            MoneyType = 'cash',
            MoneyAmmount = 250,
        },
        -- Permissions
        Item = false,
        Items = { 
            'phone',
        },
        Job = false,
        Jobs = {
            'police',
            'ambulance',
        },
        StaffCommand = false,
        StaffGroups = {
            'superadmin',
            'admin',
            'mod',
        },
        SpecifiedPlayers = false,
        SpecifiedPlayersLicenses = {
            'steam:11000011868e51c',
            'license:',
            'discord:',
            'license2:',
        },
        -- Logs
        DiscordLogs = {
            Enable = true,
            Label = '/TWT',
            Color = '44270',
        },
    },

    {
        Enable = true,
        UseDiscordRoles = true,
        UseChatMessage = true,
        Command = 'ad',
        Name = 'steamname',
        Label = 'AD:',
        Icon = 'fas fa-rectangle-ad',
        Color = {
            Label = '255, 255, 255',
            Text = '255, 255, 255',
            TextStyleNormal = '249, 196, 77',
            Background = '249, 196, 77, 0.9',
        },
        Suggestion = {
            Enable = true,
            Text = 'Everybody in the city will see this advertisement.',
            Help = 'Message',
            Info = 'This is an advertisement that costs $250.',
        },
        Players = {
            Everyone = true,
            ShowName = false,
            Distance = 15,
        },
        Use3dText = {
            Enable = false,
            Duration = 5,
            Background = false,
            Color = {
                Text = {255, 255, 255, 215},
                Background = {25, 25, 25, 68},
            },
        },
        Money = {
            TakeMoney = true,
            MoneyType = 'cash',
            MoneyAmmount = 250,
        },
        -- Permissions
        Item = false,
        Items = { 
            'burger',
            'water',
        },
        Job = false,
        Jobs = {
            'police',
            'ambulance',
        },
        StaffCommand = false,
        StaffGroups = {
            'superadmin',
            'admin',
            'mod',
        },
        SpecifiedPlayers = false,
        SpecifiedPlayersLicenses = {
            'steam:11000011868e51c',
            'license:',
            'discord:',
            'license2:',
        },
        -- Logs
        DiscordLogs = {
            Enable = true,
            Label = '/AD',
            Color = '16368717',
        },
    },

    {
        Enable = true,
        UseDiscordRoles = false,
        UseChatMessage = true,
        Command = 'jobad',
        Name = 'playerjob',
        Label = 'AD',
        Icon = 'fas fa-rectangle-ad',
        Color = {
            Label = '255, 255, 255',
            Text = '255, 255, 255',
            TextStyleNormal = '249, 196, 77',
            Background = '249, 196, 77, 0.9',
        },
        Suggestion = {
            Enable = true,
            Text = 'Everybody in the city will see this advertisement.',
            Help = 'Message',
            Info = 'This is an advertisement that costs $250.',
        },
        Players = {
            Everyone = true,
            ShowName = true,
            Distance = 15,
        },
        Use3dText = {
            Enable = true,
            Duration = 5,
            Background = false,
            Color = {
                Text = {255, 255, 255, 215},
                Background = {25, 25, 25, 68},
            },
        },
        Money = {
            TakeMoney = true,
            MoneyType = 'cash',
            MoneyAmmount = 250,
        },
        -- Permissions
        Item = false,
        Items = { 
            'burger',
            'water',
        },
        Job = false,
        Jobs = {
            'police',
            'ambulance',
        },
        StaffCommand = false,
        StaffGroups = {
            'superadmin',
            'admin',
            'mod',
        },
        SpecifiedPlayers = false,
        SpecifiedPlayersLicenses = {
            'steam:11000011868e51c',
            'license:',
            'discord:',
            'license2:',
        },
        -- Logs
        DiscordLogs = {
            Enable = true,
            Label = '/JOBAD',
            Color = '16368717',
        },
    },

    {
        Enable = true,
        UseDiscordRoles = true,
        UseChatMessage = true,
        Command = 'ooc',
        Name = 'steamname',
        Label = 'OOC',
        Icon = 'fas fa-comment-dots',
        Color = {
            Label = '255, 255, 255',
            Text = '255, 255, 255',
            TextStyleNormal = '176, 176, 176',
            Background = '176, 176, 176, 0.9',
        },
        Suggestion = {
            Enable = true,
            Text = 'OOC message.',
            Help = 'Message',
            Info = 'OOC message that everybody in the server will see.',
        },
        Players = {
            Everyone = true,
            ShowName = true,
            Distance = 15,
        },
        Use3dText = {
            Enable = false,
            Duration = 5,
            Background = false,
            Color = {
                Text = {255, 255, 255, 215},
                Background = {25, 25, 25, 68},
            },
        },
        Money = {
            TakeMoney = false,
            MoneyType = 'cash',
            MoneyAmmount = 250,
        },
        -- Permissions
        Item = false,
        Items = { 
            'burger',
            'water',
        },
        Job = false,
        Jobs = {
            'police',
            'ambulance',
        },
        StaffCommand = false,
        StaffGroups = {
            'superadmin',
            'admin',
            'mod',
        },
        SpecifiedPlayers = false,
        SpecifiedPlayersLicenses = {
            'steam:11000011868e51c',
            'license:',
            'discord:',
            'license2:',
        },
        -- Logs
        DiscordLogs = {
            Enable = true,
            Label = '/OOC',
            Color = '11579568',
        },
    },
}

--[[ Job Chat ]]--
Config.JobChat = {
    {
        Enable = true,            -- If false, this job chat will be disabled.
        UseDiscordRoles = true,   -- If true, the player's Discord role will display before their name in the message label.
        Command = 'pdchat',       -- Command name.
        Name = 'steamname',       -- Name that will be shown in chat [steamname, icname, icfirstname, icinitials, icsurname, playerid, playerjob].
        Label = 'Police Chat',    -- Label of the message in chat.
        Jobs = {                  -- Job that will see this message.
            'police',
        },
        Icon = 'fas fa-shield-halved',   -- Icon that will appear in the chat before the text [If you don't want to use it, leave it blank ('')].
        Color = {
            Label = '255, 255, 255',            -- Color of the message label text.
            Text = '255, 255, 255',             -- Color of the message text.
            TextStyleNormal = '15, 108, 234',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
            Background = '15, 108, 234, 0.9',   -- Color of the message background.
        },
        Suggestion = {
            Enable = true,                                                                 -- If false, suggestions for this command will be disabled.
            Text = 'Police chat command',                                                  -- Text explaining the command.
            Help = 'Message',                                                              -- Help text for the command.
            Info = 'Only players with the police job will be able to see your message.',   -- Info on the expected input.
        },
        -- Logs
        DiscordLogs = {
            Enable = true,           -- If false, this Discord log will be disabled.
            Label = 'POLICE CHAT',   -- Discord log label.
            Color = '1010922',       -- Color for the Discord embed message (decimal format). Convert hex to decimal: https://www.mathsisfun.com/hexadecimal-decimal-colors.html.
        },
    },

    {
        Enable = true,
        UseDiscordRoles = true,
        Command = 'emschat',
        Name = 'steamname',
        Label = 'Ambulance Chat',
        Jobs = {
            'ambulance',
        },
        Icon = 'fas fa-shield-halved',
        Color = {
            Label = '255, 255, 255',
            Text = '255, 255, 255',
            TextStyleNormal = '177, 0, 0',
            Background = '177, 0, 0, 0.9',
        },
        Suggestion = {
            Enable = true,
            Text = 'Ambulance chat command',
            Help = 'Message',
            Info = 'Only people that have ambulance job will be able to see your message.',
        },
        -- Logs
        DiscordLogs = {
            Enable = true,
            Label = 'AMBULANCE CHAT',
            Color = '16711680',
        },
    },
}

--[[ Announcements ]]--
Config.Announcements = {
    {
        Enable = false,                                           -- If false, this announcement will be disabled.
        Icon = 'fa-brands fa-discord',                            -- Icon from FontAwesome. You can change it to any valid icon. [https://fontawesome.com/icons]
        Label = 'Discord:',                                       -- Label of the announcement.
        Message = 'Join our discord! - discord.gg/yourdiscord',   -- Text of the announcement.
        Time = 2,                                                 -- The frequency at which the announcement will be sent (in minutes).
        Color = {
            Label = '255, 255, 255',           -- Color of the message label text.
            Text = '255, 255, 255',            -- Color of the message text.
            TextStyleNormal = '86, 99, 247',   -- Color of the message text for Config.ChatStyle = 'styleNormal'.
            Background = '86, 99, 247, 0.9',   -- Color of the message background.
        },
    },

    {
        Enable = false,
        Icon = 'fa-solid fa-circle-exclamation',
        Label = 'Server:',
        Message = 'If you need help with anything create a /report!',
        Time = 5,
        Color = {
            Label = '255, 255, 255',
            Text = '255, 255, 255',
            TextStyleNormal = '255, 0, 0',
            Background = '255, 0, 0, 0.9'
        },
    },
}