using HorizonSideRobots

#Робот - в произвольной клетке ограниченного прямоугольного поля (без внутренних перегородок)
#РЕЗУЛЬТАТ: Робот - в исходном положении, и на всем поле расставлены маркеры в шахматном порядке клетками размера N*N (N-параметр функции), начиная с юго-западного угла

function mark_chess!(r::Robot, n::Int)
    
    steps = get_left_down_angle!(r)
    side = Nord
    to_mark = true

    steps_to_ost_border = move_until_border!(r, Ost)
    move_until_border!(r, West)
    last_side = steps_to_ost_border % 2 == 1 ? Sud : Nord
    last_n_steps = 0

    while !isborder(r, Ost)
        while !isborder(r, side)
            if to_mark
                mark_square!(r, n)
            end

            last_n_steps = moves_if_possible_numeric!(r, side, n)
            if last_n_steps == 0 && !isborder(r, side)
                to_mark = !to_mark
            end
        end

        if to_mark
            mark_square!(r, n)
        end

        to_mark = !to_mark

        moves_if_possible!(r, Ost, n)
        moves!(r,inverse_side(side), n - last_n_steps)
        side = inverse_side(side)
    end

end