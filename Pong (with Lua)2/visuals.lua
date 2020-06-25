

function flashing_enter(x, y)

    if math.floor(love.timer.getTime()) % 2 == 0 then

        love.graphics.setColor(0.65, 0, 0.29, 1)
        love.graphics.printf('Enter',  x - 0.9, y, VIRTUAL_WIDTH, 'center')

        love.graphics.setColor(1, 0.45, 0.56, 1)
        love.graphics.printf('Enter',  x, y, VIRTUAL_WIDTH, 'center')
    
    else
        love.graphics.setColor(0.3, 0, 0.12, 1)
        love.graphics.printf('Enter',  x - 0.9, y, VIRTUAL_WIDTH, 'center')

        love.graphics.setColor(0.6, 0, 0.16, 1)
        love.graphics.printf('Enter',  x, y, VIRTUAL_WIDTH, 'center')
    end
end


function flashing_10(playerscore, x, y)

    if scoreblink == true then

        if math.floor(love.timer.getTime()) % 2 == 0 then

            draw10(1, 0.4, 0.65, playerscore, x, y, 0.65, 0.2, 0.9, 0.85, 0.4, 1)

            sleep0()

        else
            draw10(0.85, 0.4, 1, playerscore, x, y, 0.95, 0.2, 0.45, 1, 0.4, 0.65)

            sleep1()
            scoreblink = false
        end
        
    else

        if math.floor(love.timer.getTime()) % 2 == 0 then

            draw10(0.95, 0.2, 0.45, playerscore, x, y, 0.85, 0.4, 1, 0.65, 0.2, 0.9)

            sleep0()

        else
            draw10(0.65, 0.2, 0.9, playerscore, x, y, 1, 0.4, 0.65, 0.95, 0.2, 0.45)

            sleep1()
            scoreblink = true
        end
    end
end


function sleep0()
    while math.floor(love.timer.getTime()) % 2 == 0 do end
end

function sleep1()
    while math.floor(love.timer.getTime()) % 2 ~= 0 do end
end


function draw10(c1, c2, c3, playerscore, x, y, c4, c5, c6, c7, c8, c9)

    love.graphics.setColor(c4, c5, c6, 1)
    love.graphics.print(tostring(playerscore), x / 2 - 51, y / 2.6)

    love.graphics.setColor(c1, c2, c3, 1)
    love.graphics.print(tostring(playerscore), x / 2 - 50, y / 2.6)

    --[[ Big corner dots. ]]
    drawdot(c4, c5, c6, x / 2 - 56.5, y / 2.62, 3, 3)
    drawdot(c4, c5, c6, x / 2 - 56.5, y / 1.93, 3, 3)
    drawdot(c4, c5, c6, x / 2 - 11.5, y / 2.62, 3, 3)
    drawdot(c4, c5, c6, x / 2 - 11.5, y / 1.93, 3, 3)

    --[[ Big side dots. ]]
    drawdot(c4, c5, c6, x / 2 - 34, y / 2.8, 3, 3)
    drawdot(c4, c5, c6, x / 2 - 34, y / 1.85, 3, 3)
    drawdot(c4, c5, c6, x / 2 - 61, y / 2.2, 3, 3)
    drawdot(c4, c5, c6, x / 2 - 7, y / 2.2, 3, 3)

    --[[ Small side dots. ]]
    drawdot(c7, c8, c9, x / 2 - 46, y / 2.85, 2, 2)
    drawdot(c7, c8, c9, x / 2 - 22, y / 2.85, 2, 2)
    drawdot(c7, c8, c9, x / 2 - 46, y / 1.82, 2, 2)
    drawdot(c7, c8, c9, x / 2 - 22, y / 1.82, 2, 2)

    drawdot(c7, c8, c9, x / 2 - 63, y / 2.4, 2, 2)
    drawdot(c7, c8, c9, x / 2 - 63, y / 2.03, 2, 2)
    drawdot(c7, c8, c9, x / 2 - 5, y / 2.4, 2, 2)
    drawdot(c7, c8, c9, x / 2 - 5, y / 2.03, 2, 2)

    --[[ Small corner dots. ]]
    drawdot(c7, c8, c9, x / 2 - 63, y / 2.85, 2, 2)
    drawdot(c7, c8, c9, x / 2 - 63, y / 1.82, 2, 2)
    drawdot(c7, c8, c9, x / 2 - 5, y / 2.85, 2, 2)
    drawdot(c7, c8, c9, x / 2 - 5, y / 1.82, 2, 2)
end


function drawdot(c1, c2, c3, dx, dy, w, h)

    love.graphics.setColor(c1, c2, c3, 1)
    love.graphics.rectangle('fill', dx, dy, w, h)
end

