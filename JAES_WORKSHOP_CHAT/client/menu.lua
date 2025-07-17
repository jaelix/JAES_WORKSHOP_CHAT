--[[ Config.Menu ]]--
function OpenMenu(menu)
    local _options = {}
    if Menu == 'ox' then
        for _, menu in pairs(menu.options) do
            table.insert(_options, {
                title = menu.title,
                description = menu.description,
                metadata = menu.metadata,
                disabled = menu.disabled,
                icon = menu.icon,
                image = menu.image,
                arrow = menu.arrow,
                data = menu.data,
                onSelect = menu.onSelect,
            })
        end
        lib.registerContext({
            id = menu.header.name,
            title = menu.header.title,
            menu = menu.header.backMenu,
            options = _options,
        })
        lib.showContext(menu.header.name)
    elseif Menu == 'qb' then
        _options = {{isMenuHeader = true, header = menu.header.title}}
        for _, menu in pairs(menu.options) do
            table.insert(_options, {
                header = menu.title,
                txt = menu.description,
                params = {event = TriggerName(menu.event), args = menu.args},
                metadata = menu.metadata,
                disabled = menu.disabled,
                icon = menu.icon,
                image = menu.image,
                arrow = menu.arrow,
                data = menu.data,
                onSelect = menu.onSelect,
            })
        end
        exports['qb-menu']:showHeader(_options)
    elseif Menu == 'esx' then
        local ped = PlayerPedId()
        FreezeEntityPosition(ped, true)
        for _, menu in pairs(menu.options) do
            table.insert(_options, {
                label = menu.description and menu.title..' - '..menu.description or menu.title,
                txt = menu.description,
                params = {event = TriggerName(menu.event), args = menu.args},
                metadata = menu.metadata,
                disabled = menu.disabled,
                icon = menu.icon,
                image = menu.image,
                arrow = menu.arrow,
                data = menu.data,
                onSelect = menu.onSelect,
            })
        end
        CORE.UI.Menu.Open("default", GetCurrentResourceName(), "esx_menu_default", {
            title = menu.header.title,
            align    = 'top-left',
            elements = _options
        }, function(data, esxMenu)
            if data.current then
                CORE.UI.Menu.CloseAll()
                TriggerEvent(data.current.params.event, data.current.params.args)
                FreezeEntityPosition(ped, false)
            end
        end, function(data, esxMenu)
            CORE.UI.Menu.CloseAll()
            FreezeEntityPosition(ped, false)
        end)
    end
end