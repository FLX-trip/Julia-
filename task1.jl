using HorizonSideRobots

# Робот — в исходном положении в центре прямого креста из маркеров, расставленных вплоть до внешней рамки

function mark_cross(r::Robot, side::HorizonSide)
    for side in (HorizonSide(i) for i=0:3)
        putmarkers!(r,side)
        move_by_markers(r,inverse(side))
    end
    putmarkers!(r)
end
putmarkers!(r::Robot, side::HorizonSide)
while isborder(r,side)==false
    move!(r,side)
    putmarker!(r)
end
move_by_markers(r::Robot, side::HorizonSide)
while ismarker(r)==true
    move!(r,side)
end
inverse(side::HorizonSide)= HorizonSide(mod(Int(side)+2, 4))
function centr(r::Robot)
    for i in (1,7)
        move!(r, HorizonSide(3))
        move!(r, HorizonSide(0))
    end
end