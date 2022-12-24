using HorizonSideRobots

#Робот - рядом с горизонтальной бесконечно продолжающейся в обе стороны перегородкой (под ней), в которой имеется проход шириной в одну клетку.
#РЕЗУЛЬТАТ: Робот - в клетке под проходом

size_left_right = 15
size_top_bott = 15
r=Robot("fields/7task.sit", animate=true)

while isborder(r, HorizonSide(0)) == false
    move!(r, HorizonSide(0))
end

function finding_exit(r)
    while true
        if isborder(r, HorizonSide(0)) == true
            move!(r, HorizonSide(3))
        else
            break;
        end
    end
end

finding_exit(r)