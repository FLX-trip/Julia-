using HorizonSideRobots

# Робот — в исходном положении в центре косого креста из маркеров, расставленных вплоть до внешней рамки

function krest(r::Robot)
    while isborder(r,HorizonSide(3))==false
        putmarker!(r)
        move!(r,HorizonSide(3))
        move!(r,HorizonSide(0))
    end
    putmarker!(r)
    while isborder(r,HorizonSide(2))==false
        move!(r,HorizonSide(2))
    end
    putmarker!(r)
    while isborder(r,HorizonSide(1))==false
        move!(r,HorizonSide(1))
        move!(r,HorizonSide(0))
        putmarker!(r)
    end
end