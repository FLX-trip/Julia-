using HorizonSideRobots

# Написать рекурсивную функцию, перемещающую робота в соседнюю клеьку в заданном направлении, 
# при этом на пути робота может находиться изолированная прямолинейная перегородка конечной длины.

function get_on_rec!(r::Robot, side::HorizonSide, n_steps::Int = 0)
    if isborder(r, side)
        move!(r, next_side(side))
        n_steps += 1
        get_on_rec!(r, side, n_steps)
    else
        move!(r, side)
        along!(r, inverse_side(next_side(side)), n_steps)
    end
end