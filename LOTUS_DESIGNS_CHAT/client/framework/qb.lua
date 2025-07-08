CORE = nil

CreateThread(function()
    if Framework.type == 'qbcore' then
        CORE = exports[Framework.export]:GetCoreObject()

        function Test()
            return 'Test'
        end
    end
end)