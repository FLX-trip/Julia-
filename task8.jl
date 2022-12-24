using HorizonSideRobots

#Где-то на неограниченном со всех сторон поле без внутренних перегородок имеется единственный маркер. Робот - в произвольной клетке этого поля.
#РЕЗУЛЬТАТ: Робот - в клетке с маркером.


function find_marker(r)
    n=0; side=Ost
    while isborder(r,Nord)==true # прохода сверху нет
        n+=1
        move!(r,side,n)
        side=inverse(side)
    end
end

function move!(r,side,num_steps)
    for _ in 1:num_steps move!(r,side)
end
inverse(side::HorizonSide)=HorizonSide(mod(Int(side)+2,4))