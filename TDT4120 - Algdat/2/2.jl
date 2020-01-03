function reverseandlimit(array, maxnumber)
    newarray = []
    while length(array) > 0
        x = pop!(array)
        if (x > maxnumber)
            x = maxnumber

        end
        push!(newarray, x)
    end
    return newarray
end
