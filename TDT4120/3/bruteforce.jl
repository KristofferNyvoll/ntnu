function bruteforce(x)
    shortest = (sqrt(abs2(x[2,1] - x[1,1]) + abs2(x[2,2] - x[1,2])))
    #Looper gjennom alle elementer, men alle sammenlignes bare en gang med hverandre
    for i = 1:size(x, 1), j = (i+1):size(x,1) 
        #println(i, ", ", j)
        println("$i, $j")
        len = sqrt(abs2(x[j,1] - x[i,1]) + abs2(x[j,2] - x[i,2]))
        println(len)
        if (len < shortest)
            shortest = len
        end
    end
    return shortest
end


println(bruteforce([1 1; 10 0; 2 2; 5 5]))