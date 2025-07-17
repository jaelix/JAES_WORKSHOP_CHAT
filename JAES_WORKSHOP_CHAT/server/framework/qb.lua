CORE = nil

CreateThread(function()
    if Framework.type == 'qbcore' then
        CORE = exports[Framework.export]:GetCoreObject()

        function GetPlayer(source)
            if source ~= nil then
                return CORE.Functions.GetPlayer(tonumber(source))
            end
        end

        function GetPlayers()
            return CORE.Functions.GetPlayers()
        end

        function GetGroup(source, group)
            if source ~= nil then
                return CORE.Functions.HasPermission(source, group)
            end
        end

        function GetJob(source)
            if source ~= nil and GetPlayer(source) then
                return GetPlayer(source).PlayerData.job.name
            end
        end

        function GetItem(source, item)
            if source ~= nil and GetPlayer(source) then
                return GetPlayer(source).Functions.GetItemByName(item)
            end
        end

        function GetLicense(source)
            if source ~= nil and GetPlayer(source) then
                return GetPlayer(source).PlayerData.license
            end
        end

        function GetIdentifier(source)
            if source ~= nil and GetPlayer(source) then
                return GetPlayer(source).PlayerData.citizenid
            end
        end

        function GetMoney(source, type)
            if source ~= nil then
                if type == 'cash' then
                    return GetPlayer(source).Functions.GetMoney('cash')
                else
                    return GetPlayer(source).Functions.GetMoney('bank')
                end
            end
        end

        function RemoveMoney(source, type, amount)
            if source ~= nil then
                if type == 'cash' then
                    GetPlayer(source).Functions.RemoveMoney('cash', tonumber(amount), 'chat-advertisement-cash')
                else
                    GetPlayer(source).Functions.RemoveMoney('bank', tonumber(amount), 'chat-advertisement-bank')
                end
            end
        end

        function GetName(source, type)
            if source ~= nil and type ~= nil then
                local firstName = GetPlayer(source).PlayerData.charinfo.firstname
                local lastName = GetPlayer(source).PlayerData.charinfo.lastname
                local job = GetJob(source)
                local name
                if type == 'steamname' then
                    name = GetPlayerName(source)
                elseif type == 'icname' then
                    name = firstName..' '..lastName
                elseif type == 'icfirstname' then
                    name = firstName
                elseif type == 'icsurname' then
                    name = lastName
                elseif type == 'playerid' then
                    name = source
                elseif type == 'playerjob' then
                    name = job
                elseif type == 'icinitials' then
                    name = string.sub(firstName, 1, 1)..'. '..string.sub(lastName, 1, 1)..'.'
                end
                return name
            end
        end
    end
end)