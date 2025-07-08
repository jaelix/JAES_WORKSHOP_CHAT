CORE = nil

CreateThread(function()
    if Framework.type == 'esx' then
        CORE = exports[Framework.export]:getSharedObject()

        function Test()
            return 'Test'
        end
    end
end)