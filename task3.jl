using HorizonSideRobots

# Робот - в исходном положении, и все клетки поля промакированы

function pole()
    n = 3
    while true

    if ismarker(r)==false
    if isborder(r,HorizonSide(n))==false
        putmarker!(r)
        move!(r,HorizonSide(n))
    elseif (n == 3)
        n = 0
    elseif (n == 0)
        n = 1
    elseif (n == 1)
        n = 2
    end
    elseif (n == 2)
        move!(r,HorizonSide(0))
        move!(r,HorizonSide(3))
        n = 3
    elseif (n == 3)
        move!(r,HorizonSide(1))
        move!(r,HorizonSide(0))
        n = 0
    elseif (n == 0)
        move!(r,HorizonSide(2))
        move!(r,HorizonSide(1))
        n = 1
    elseif (n == 1)
        move!(r,HorizonSide(3))
        move!(r,HorizonSide(2))
        n = 2
    end

    end
end