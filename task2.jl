using HorizonSideRobots

r=Robot(15,15; animate=true)

# Робот - в исходном положении, и все клетки по периметру внешней рамки промакированы
function ramka(r::Robot)
    while isborder(r,HorizonSide(3))==false
    move!(r,HorizonSide(3))
    end
end
function mark_cross(r::Robot) 
n = 0
while n < 4 
    if isborder(r,HorizonSide(n))==false
        move!(r,HorizonSide(n))
        putmarker!(r)
    else
        n += 1
    end
end
end
ramka(r)
mark_cross(r)