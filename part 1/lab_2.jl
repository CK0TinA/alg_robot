using HorizonSideRobots
sides = (Nord, West, Sud, Ost, Nord)

function main(r::Robot)
    count = move_to_border(r, Ost)
    for side in sides
        move_and_putmarks(r, side)
    end
    for i = 1:count
        move!(r, West)
    end
end

function move_to_border(r::Robot, side::HorizonSide)
    count = 0
    while isborder(r, side) == false
        move!(r, side)
        count += 1
    end
    return(count)
end


function move_and_putmarks(r::Robot, side::HorizonSide)
    while isborder(r, side) == false
        if ismarker(r) == true
            break
        end
        putmarker!(r)
        move!(r, side)
    end
end

# include("lab_2.jl")
# r = Robot(animate=true)
# main(r)