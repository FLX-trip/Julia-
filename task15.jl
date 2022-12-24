using HorizonSideRobots

#Решить задачу 7 с использованием обобщённой функции 
#`shatl!(stop_condition::Function, robot)`


#Задача 7

#Робот - рядом с горизонтальной бесконечно продолжающейся в обе стороны перегородкой (под ней), в которой имеется проход шириной в одну клетку.
#РЕЗУЛЬТАТ: Робот - в клетке под проходом

function find_space!(r::Robot, side_to_wall::HorizonSide)
    n_steps = 1
    side = next_side(side_to_wall)

    while isborder(r, side_to_wall)
        for _ in 1:n_steps
            shatl!( _ -> !isborder(r, side_to_wall), r, side)
        end
        side = inverse_side(side)
        n_steps += 1
    end

end