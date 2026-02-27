-- MoneySystem.lua

-- Player Economy and Money Management System for Empire-life

local MoneySystem = {}

MoneySystem.players = {}

function MoneySystem:initializePlayer(playerId)
    if not self.players[playerId] then
        self.players[playerId] = { money = 0 }
    end
end

function MoneySystem:addMoney(playerId, amount)
    self:initializePlayer(playerId)
    self.players[playerId].money = self.players[playerId].money + amount
end

function MoneySystem:subtractMoney(playerId, amount)
    self:initializePlayer(playerId)
    if self.players[playerId].money >= amount then
        self.players[playerId].money = self.players[playerId].money - amount
        return true
    else
        return false -- Not enough money
    end
end

function MoneySystem:getMoney(playerId)
    self:initializePlayer(playerId)
    return self.players[playerId].money
end

function MoneySystem:setMoney(playerId, amount)
    self:initializePlayer(playerId)
    self.players[playerId].money = amount
end

return MoneySystem