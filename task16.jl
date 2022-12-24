using HorizonSideRobots

#Решить задачу 8 с использованием обобщённой функции 
#`spiral!(stop_condition::Function, robot)`

#Задача 8

#Где-то на неограниченном со всех сторон поле без внутренних перегородок имеется единственный маркер. Робот - в произвольной клетке этого поля.
#РЕЗУЛЬТАТ: Робот - в клетке с маркером.

function find_marker!(r::Robot)
    tmp = (side::HorizonSide) -> ismarker(r)
    spiral!( tmp, r)
end