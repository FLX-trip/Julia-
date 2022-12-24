using HorizonSideRobots

# Написать рекурсивную функцию, перемещающую робота в позицию, симметричную по отношению к перегородке,
# находящейся с заданного направления, т.е. требуется, чтобы в результате робот оказался на расстоянии от противоположной перегородки равном расстоянию до заданной перегородки.

function move_symmetrical!(robot, side)
    if isborder(robot, side)
        while !isborder(robot, inverse(side))
            move!(robot, inverse(side))
        end
    else
        move!(robot, side)
        move_symmetrical!(robot, side)
        move!(robot, side)
    end
end

inverse(side::HorizonSide) = HorizonSide((Int(side) +2) %4)