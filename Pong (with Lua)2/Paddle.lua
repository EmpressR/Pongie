
--[[
    My modified version of the GD50 course's Pong-game.
    Original code by Colton Ogden.
]]

Paddle = Class {}

function Paddle:init(x, y, width, height)

    self.x = x
    self.y = y

    self.width = width
    self.height = height

    self.dy = 0
end


function Paddle:update(dt)

    if self.dy < 0 then
        self.y = math.max(0, self.y + self.dy * dt)

    else
        self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y + self.dy * dt)
    end
end


function Paddle:render()
    
    love.graphics.setColor(0.9, 0, 0.1, 1)
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end

