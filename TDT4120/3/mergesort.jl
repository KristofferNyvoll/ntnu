function mergearrays(x, y, coordinates)
    xx = yy = k = 1
    # Oppretter en tom array, må være like lang som x og y til sammen. Bruker undef, slik at den ikke initialiseres
    result = Array{Int64}(undef, size(x, 1) + size(y, 1), 2)

    # Looper gjennom begge arrayene, legger inn den laveste verdien før den store
    while xx <= size(x, 1) && yy <= size(y, 1)
        if x[xx,coordinates] <= y[yy,coordinates]
            result[k,:] = x[xx,:]
            xx += 1
        else
            result[k,:] = y[yy,:]
            yy += 1
        end
        k += 1
    end

    # Koden knekker hvis du har et odde antall indekser i arrayene
    if xx <= size(x, 1)
        result[k:end,:] = x[xx:end,:]
    elseif yy <= size(y, 1)
        result[k:end,:] = y[yy:end,:]
    end
    return result
end


function mergesort(x, coordinate)
    # Ugyldig lengde på array
    if (size(x, 1) <= 1) 
        return x 
    end
    midIndex = size(x, 1) ÷ 2
    leftArray = mergesort(x[1:midIndex,:], coordinate) # Venstre halvdel 
    rightArray = mergesort(x[midIndex + 1:end,:], coordinate) # Høyre halvdel
    return mergearrays(leftArray, rightArray, coordinate)
end

println(mergesort([1 2; 4 6; 2 1],1))