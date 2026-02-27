-- PhoneUI.lua

local PhoneUI = {}

function PhoneUI:createMenu()
    local menu = display.newGroup()
    local background = display.newRect(menu, display.contentCenterX, display.contentCenterY, 300, 400)
    background:setFillColor(0, 0, 0, 0.8)

    local title = display.newText(menu, "Phone Menu", display.contentCenterX, display.contentCenterY - 150, native.systemFont, 24)
    title:setFillColor(1, 1, 1)

    local callButton = display.newText(menu, "Call", display.contentCenterX, display.contentCenterY - 50, native.systemFont, 20)
    callButton:setFillColor(1, 1, 1)

    local messageButton = display.newText(menu, "Messages", display.contentCenterX, display.contentCenterY, native.systemFont, 20)
    messageButton:setFillColor(1, 1, 1)

    local contactsButton = display.newText(menu, "Contacts", display.contentCenterX, display.contentCenterY + 50, native.systemFont, 20)
    contactsButton:setFillColor(1, 1, 1)

    -- Add button listeners here

    return menu
end

return PhoneUI
