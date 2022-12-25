using HorizonSideRobots

#Робот - в произвольной клетке ограниченного прямоугольного поля, на поле расставлены горизонтальные перегородки различной длины (перегорки длиной в несколько клеток, считаются одной перегородкой), не касающиеся внешней рамки.
#РЕЗУЛЬТАТ: Робот — в исходном положении, подсчитано и возвращено число всех перегородок на поле.

function mark_centers(r)
    num_steps = into_angle(r,(Sud,West)) # Робот в юго-западном углу и в num_steps - закодирован пройденный путь
    num_steps_to_ost = sum(num_steps[1:2:end])
    num_steps_to_nord = sum(num_steps[2:2:end])

    movements!(r,Nord,num_steps_to_nord)
    putmarker!(r)
    num_steps_to_sud = movements!(r,Nord)

    movements!(r,Ost,num_steps_to_ost)
    putmarker!(r)
    num_steps_to_west = movements!(r,Ost)

    movements!(r,Sud,num_steps_to_sud)
    putmarker!(r)
    movements!(r,Sud)

    movements!(r,Sud,num_steps_to_west)
    putmarker!(r)
    movements!(r,Sud) #Маркеры поставлены и Робот в юго-западном углу

    movements!(r,(Ost,Nord),num_steps) #Робот в исходном положении
end