using HorizonSideRobots

function main(r)
    counter = 1
    flag = false
    while(isborder(r, Nord) & !flag)
        c = counter
        while ((c>0) & !flag)
            move!(r, West)
            if(!isborder(r, Nord))
                flag = true
            end
            c = c - 1
        end
        c = counter
        while((c>0) & !flag)
            move!(r, Ost)
            c = c - 1
        end
        c = counter
        while ((c>0) & !flag)
            move!(r, Ost)
            if(!isborder(r, Nord))
                flag = true
            end
            c = c - 1
        end
        while((c>0) & !flag)
            move!(r, West)
            c = c - 1
        end
        c = counter
        counter = counter + 1
    end
end

# include("lab_2_3.jl")
# r = Robot(animate=true)
# main(r)