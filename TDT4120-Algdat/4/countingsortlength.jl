function countingsortlength(A)
    max = 0
    for m = 1:length(A)
        if (max < length(A[m]))
            max = length(A[m])
        end
    end
    C = zeros(Int, max+1)
    println(C)
    for h in A
        println(h)
        c = length(h) +1
        C[c] += 1
    end
    println("her")
    # Nå har vi en liste C med antall forekomster av alle bokstavverdier
    for l = 2:length(C)
        C[l] = C[l] + C[l-1]
        println("Etter: $C")
    end
    # Lager en tom liste med like mange slots som A
    B = ["" for i in 1:length(A)]
    println(C)
    for y in length(A):-1:1
        
        derp = length(A[y]) +1 
        B[C[derp]] = A[y]
        C[derp] = C[derp] - 1    
    end
    return B
end

println(countingsortlength(["a", "aa", "bbbbb", "", "ee"]))


#=
# Trenger en tom array med plass til alle talla
    C = zeros(Int, length(A))
    for i in 1:length(A)
        C[i] = length(A[i]) + 1 # I tilfelle l = 0
    end
    println("Listen med lengden til strengene +1 i korresponderende index: $C")

    # Nå har vi en liste C med lengden på alle strengene
    for l = 2:(length(C))
        C[l] = C[l] + C[l-1]
    end
    println("Etter: $C")
    # Lager en tom liste med like mange slots som A
    B = ["" for i in 1:length(A)]

    # Counting sort magi. Vi har A, vi har en tom array B og 
    # C som nå har sumCount som sine verdier. 
    for y in length(A):-1:1
        derp = length(A[y]) + 1
        println(derp)
        B[C[derp]] = A[y]
        C[derp] = C[derp] - 1    
    end
    return B

    =#