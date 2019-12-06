function chartodigit(character)
    return character - '`'
end

function countingsortletters(A,position)
    max = 0
    for m = 1:length(A)
        if (max < chartodigit(A[m][position]))
            max = chartodigit(A[m][position])
        end
    end
    C = zeros(Int, max)
    for h in 1:length(A)
        c = chartodigit(A[h][position])
        C[c] += 1
    end
    # Nå har vi en liste C med antall forekomster av alle bokstavverdier
    for l = 2:(max)
        C[l] = C[l] + C[l-1]
        println("Etter: $C[l]")
    end
    # Lager en tom liste med like mange slots som A
    B = ["" for i in 1:length(A)]

    for y in length(A):-1:1
        derp = chartodigit(A[y][position])
        B[C[derp]] = A[y]
        C[derp] = C[derp] - 1    
    end
    return B
end
println(countingsortletters(["abc", "ccc", "bbb", "dde"], 2))