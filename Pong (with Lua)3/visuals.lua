

function flashing_enter(x, y)

    if math.floor(love.timer.getTime()) % 2 == 0 then

        draw_enter(0.65, 0, 0.29, x - 0.9, y)
        draw_enter(1, 0.45, 0.56, x, y)
    
    else
        draw_enter(0.3, 0, 0.12, x - 0.9, y)
        draw_enter(0.6, 0, 0.16, x, y)
    end
end


function draw_enter(c1, c2, c3, x, y)

    love.graphics.setColor(c1, c2, c3, 1)
    love.graphics.printf('Enter',  x, y, VIRTUAL_WIDTH, 'center')
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


-- Every second flashes the text.
function flashing_text(code)

    if math.floor(love.timer.getTime()) % 2 == 0 then

        rounds(code)
        sleep0()

    else
        rounds(code)
        sleep1()
    end
end

-- Checking the round out of 7.
function rounds(code)

    if round1 == true then

        c1 = true
        starting_color(code)
        round1 = false
        round2 = true

    elseif round2 == true then

        c2 = true
        starting_color(code)
        round2 = false
        round3 = true

    elseif round3 == true then
        
        c3 = true
        starting_color(code)
        round3 = false
        round4 = true

    elseif round4 == true then
        
        c4 = true
        starting_color(code)
        round4 = false
        round5 = true

    elseif round5 == true then
        
        c5 = true
        starting_color(code)
        round5 = false
        round6 = true

    elseif round6 == true then
        
        c6 = true
        starting_color(code)
        round6 = false
        round7 = true

    elseif round7 == true then
        
        c7 = true
        starting_color(code)
        round7 = false
        round1 = true
    end
end


-- Picking a starting color for first letter based on current round.
function starting_color(code)

    if c1 == true then
        ln = 1
        c1 = false

    elseif c2 == true then
        ln = 2
        c2 = false

    elseif c3 == true then
        ln = 3
        c3 = false
    
    elseif c4 == true then
        ln = 4
        c4 = false

    elseif c5 == true then
        ln = 5
        c5 = false

    elseif c6 == true then
        ln = 6
        c6 = false

    elseif c7 == true then
        ln = 7
        c7 = false
    end

    if code == hello then
        flashing_hello(ln)
    
    else
        flashing_win(ln)
        
    end
end


function flashing_win(ln)

end


function flashing_hello(ln)

    rainbow_text(ln, 'H', - 109, 45)
    ln = next_color(ln)

    rainbow_text(ln, 'e', - 94, 45)
    ln = next_color(ln)

    rainbow_text(ln, 'l', - 84, 45)
    ln = next_color(ln)
   
    rainbow_text(ln, 'l', - 78, 45)
    ln = next_color(ln)

    rainbow_text(ln, 'o', - 67, 45)
    ln = next_color(ln)

    rainbow_text(ln, ',', - 55, 45)
    ln = next_color(ln)

    rainbow_text(ln, 'I', - 33, 45)
    ln = next_color(ln)

    rainbow_text(ln, 'a', - 7, 45)
    ln = next_color(ln)

    rainbow_text(ln, 'm', 9, 45)
    ln = next_color(ln)

    rainbow_text(ln, 'P', 38, 45)
    ln = next_color(ln)

    rainbow_text(ln, 'o', 53, 45)
    ln = next_color(ln)

    rainbow_text(ln, 'n', 68, 45)
    ln = next_color(ln)

    rainbow_text(ln, 'g', 83, 45)
    ln = next_color(ln)

    rainbow_text(ln, 'i', 93, 45)
    ln = next_color(ln)

    rainbow_text(ln, 'e', 104, 45)
    ln = next_color(ln)

    rainbow_text(ln, '!', 114, 45)
    ln = next_color(ln)
end


function next_color(ln)

    if ln == 7 then
        ln = 1

    else
        ln = ln + 1
    end
    return ln
end


-- Chooses a color for letter.
function rainbow_text(ln, letter, x, y)

    if ln == 1 then
        --[[ Green ]]
        rainbow_letter(letter, x, y, 0.1, 1, 0.55)

    elseif ln == 2 then
        --[[ Purple ]]
        rainbow_letter(letter, x, y, 0.85, 0.4, 1)

    elseif ln == 3 then
        --[[ Yellow ]]
        rainbow_letter(letter, x, y, 1, 1, 0.5)

    elseif ln == 4 then
        --[[ Blue ]]
        rainbow_letter(letter, x, y, 0.1, 0.78, 1)

    elseif ln == 5 then
        --[[ Orange ]]
        rainbow_letter(letter, x, y, 1, 0.6, 0.3)

    elseif ln == 6 then
        --[[ Turquose ]]
        rainbow_letter(letter, x, y, 0.4, 1, 1)

    elseif ln == 7 then
        --[[ Red ]]
        rainbow_letter(letter, x, y, 0.95, 0.2, 0.45)
    end
end


function rainbow_letter(letter, x, y, c1, c2, c3)

    love.graphics.setColor(c1, c2, c3, 1)
    love.graphics.printf(letter, x, y, VIRTUAL_WIDTH, 'center')
end

