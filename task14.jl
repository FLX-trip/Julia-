using HorizonSideRobots

#Решить предыдущую задачу, но при условии наличия на поле **простых** внутренних переогородок.   
#Под **простыми перегородками** мы понимаем **изолированные** прямолинейные или прямоугольные перегородки.


# На поле возможны внутренние перегородки ПРЯМОУГОЛЬНОЙ формы (допускаются и вырожденные прпямоугольники, т.е. - отрезки)
function mark_kross(r)
    for side in (Nord, West, Sud, Ost)
        num_steps = putmarkes!(r,side)
        movements!(r,inverse(side), num_steps) # тут шибочно было: move!(...)
    end
end

function putmarkers!(r::Robot,side::HorizonSide)
    num_steps=0 
    while move_if_possible!(r, side) == true
        putmarker!(r)
        num_steps += 1
    end 
    return num_steps
end