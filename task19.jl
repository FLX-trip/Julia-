using HorizonSideRobots

# Написать рекурсивную функцию, перемещающую робота до упора в заданном направлении, ставящую возле перегородки маркер и возвращающую робота в исходное положение.

function putmarker_at_border_and_back!(robot::Robot, side::HorizonSide, n_steps::Int = 0)
    if !isborder(r, side)
        move!(r, side)
        n_steps += 1
        putmarker_at_border_and_back!(r, side, n_steps)
    else
        putmarker!(r)
        along!(robot, inverse_side(side), n_steps)
    end
end