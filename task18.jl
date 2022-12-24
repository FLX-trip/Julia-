using HorizonSideRobots

# Написать рекурсивную функцию, перемещающую робота до упора в заданном направлении.

function move_until_border_recursive!(r::Robot, side::HorizonSide)
    if !isborder(r, side)
        move!(r, side)
        move_until_border_recursive!(r, side)
    end
end