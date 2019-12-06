
function cumulative(weights)
    # Dette gir deg dimensjonene til en matrise
    rows, cols = size(weights)
    # Matrise med 0'er. Alle kumulative vektene skal hit
    pw = zeros(rows, cols)

    # Setter inn de første vektene (den øverste raden har lik vekt som seg selv)
    pw[1,:] = weights[1,:]

    println(pw)
    for i in 2:rows # Har allerede satt inn den øverste raden i pw
        for x in 1:cols
            if (x == 1) # Helt til venstre, har bare to valg, rett ned eller skrått ned. 
                pw[i, x] = min(pw[i-1, x] + weights[i, x], pw[i-1, x+1] + weights[i, x]) 
                # Legger vektene til elementet til venstre ( og det ved siden) og sjekker hvem som er minst ^
            elseif (x == cols)
                pw[i, x] = min(pw[i-1, x-1] + weights[i, x], pw[i-1, x] + weights[i, x]) 
                # Legger vektene til elementet til høryre ( og det ved siden) og sjekker hvem som er minst ^
            else
                pw[i, x] = min(pw[i-1, x-1] + weights[i,x], pw[i-1, x] + weights[i, x], pw[i-1, x+1] + weights[i, x]) 
                # Legger vektene til elementet til venstre (og begge av de som er ved siden) og sjekker hvem som er minst ^
            end
        end
        display(pw)
    end
    return pw
end


### Tester ###
# Disse testene blir kjør når du kjører filen
# Du trenger ikke å endre noe her, men du kan eksperimentere!

printstyled("\n\n\n---------------\nKjører tester!!\n---------------\n"; color = :magenta)

using Test
@testset "Tester" begin
	@test cumulative([1 1 ; 1 1]) == [1 1 ;2 2]
    #Dette er samme eksempel som det vist i oppgaveteskten
	@test cumulative([3  6  8 6 3; 7  6  5 7 3; 4  10 4 1 6; 10 4  3 1 2;6  1  7 3 9])== [3  6  8  6  3;10 9  11 10 6;13 19 13 7  12;23 17 10 8  9;23 11 15 11 17]
end


println("\nFungerte alt? Prøv å kjør koden i inginious!")
println("Husk at disse testene ikke alltid sjekker alle edge-cases")
println("---------------------------------------------------------\n\n")