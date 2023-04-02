--[[
    GD50
    Pokemon

    Author: Brandon Pineda
    cogden@cs50.harvard.edu
]]

LevelupExpMenuState = Class{__includes = BaseState}

function LevelupExpMenuState:init(playerPokemon, HPIncrease, attackIncrease, defenseIncrease, speedIncrease, cursorEnabled)
    self.battleState = battleState
    
    self.levelupMenu = Menu {
        x = VIRTUAL_WIDTH - 180,
        y = VIRTUAL_HEIGHT - 190,
        width = 172,
        height = 90,
        cursorEnabled = false,
        items = {
            {
                text = 'HP: ' .. playerPokemon.baseHP .. ' + ' .. HPIncrease .. ' = ' .. (playerPokemon.baseHP + HPIncrease),
            },
            {
                text = 'Attack: ' .. playerPokemon.baseAttack .. ' + ' .. attackIncrease .. ' = ' .. (playerPokemon.baseAttack + attackIncrease),
            },
            {
                text = 'Defense: ' .. playerPokemon.baseDefense .. ' + ' .. defenseIncrease .. ' = ' .. (playerPokemon.baseDefense + defenseIncrease),
            },
            {
                text = 'Speed: ' .. playerPokemon.baseSpeed .. ' + ' .. speedIncrease .. ' = ' .. (playerPokemon.baseSpeed + speedIncrease),
            }
        }
    }
end

function LevelupExpMenuState:update(dt)
    self.levelupMenu:update(dt)
end

function LevelupExpMenuState:render()
    self.levelupMenu:render()
end