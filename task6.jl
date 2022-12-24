using HorizonSideRobots

#Робот - в исходном положении и -
#a) по всему периметру внешней рамки стоят маркеры;
#б) маркеры не во всех клетках периметра, а только в 4-х позициях - напротив исходного положения робота.

size_left_right = 15
size_top_bott = 15
r=Robot(size_left_right,size_top_bott; animate=true)

function perimeter_markers(r::Robot)
    while isborder(r, HorizonSide(3)) == false
        move!(r, HorizonSide(3))
    end
    putmarker!(r)
    
    while isborder(r, HorizonSide(0)) == false
        move!(r, HorizonSide(0))
    end
    putmarker!(r)
    
    while isborder(r, HorizonSide(1)) == false
        move!(r, HorizonSide(1))
    end
    putmarker!(r)
    
    while isborder(r, HorizonSide(2)) == false
        move!(r, HorizonSide(2))
    end
    putmarker!(r)

end 
perimeter_markers(r)