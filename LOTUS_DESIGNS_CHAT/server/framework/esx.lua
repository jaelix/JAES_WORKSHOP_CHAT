CORE = nil

CreateThread(function()
    if Framework.type == 'esx' then
        CORE = exports[Framework.export]:getSharedObject()

        function GetPlayer(source)
            if source ~= nil then
                return CORE.GetPlayerFromId(source)
            end
        end

        function GetPlayers()
            return CORE.GetPlayers()
        end

        function GetGroup(source, group)
            if source ~= nil and GetPlayer(source) then
                return GetPlayer(source).group == group
            end
        end

        function GetJob(source)
            if source ~= nil and GetPlayer(source) then
                return GetPlayer(source).job.name
            end
        end

        function GetItem(source, item)
            if source ~= nil and GetPlayer(source) then
                return GetPlayer(source).getInventoryItem(item)
            end
        end

        function GetLicense(source)
            if source ~= nil and GetPlayer(source) then
                return GetPlayer(source).license
            end
        end

        function GetIdentifier(source)
            if source ~= nil and GetPlayer(source) then
                return GetPlayer(source).getIdentifier(-1)
            end
        end

        function GetMoney(source, type)
            if source ~= nil and GetPlayer(source) then
                if type == 'cash' then
                    return GetPlayer(source).getAccount('money').money
                else
                    return GetPlayer(source).getAccount('bank').money
                end
            end
        end

        function RemoveMoney(source, type, amount)
            if source ~= nil and GetPlayer(source) then
                if type == 'cash' then
                    GetPlayer(source).removeMoney(amount)
                else
                    GetPlayer(source).removeAccountMoney('bank', amount)
                end
            end
        end

        function GetName(source, type)
            if source ~= nil and type ~= nil then
                local firstName = GetPlayer(source).variables.firstName
                local lastName = GetPlayer(source).variables.lastName
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