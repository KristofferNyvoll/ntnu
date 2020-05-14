function lis(s, mls)
    ml = maximum(mls)
    lis = zeros(Int, ml)
    for i = length(mls):-1:1
        # Din kode her
        if (ml == mls[i]) 
            # Hvis det høyeste tallet i mls er det samme som bakerst i mls, setter vi det korresponderende tallet fra s inn i lis. Indeksen er da ml
            lis[ml] = s[i]
            ml -= 1 # Sjekker neste verdi neste iterasjon. 
        else 
            # Disse verdiene tas ikke med 
            println(mls[i])
            continue
        end
    end
    return lis
end


function test()
    s = [2,1,4,3,6,5]
    mls = [1,1,2,2,3,3]
    expected = lis(s, mls)
    return expected
end

println(test())
#=
### Tester ###
# Disse testene blir kjør når du kjører filen
# Du trenger ikke å endre noe her, men du kan eksperimentere!

printstyled("\n\n\n---------------\nKjører tester!!\n---------------\n"; color = :magenta)

using Test
@testset "Tester" begin
	@test lis([5,3,3,6,7],[1, 1, 1, 2, 3]) == [3,6,7]
	@test lis([2,2,2,2],[1, 1, 1, 1]) == [2]
	@test lis([100,50,25,10],[1, 1, 1, 1]) == [10]
	@test lis([0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15],[1, 2, 2, 3, 2, 3, 3, 4, 2, 4, 3, 5, 3, 5, 4, 6]) == [0,2,6,9,11,15]
	@test lis(langteks[1],langteks[2])==langteks[3]
end

println("\nFungerte alt? Prøv å kjør koden i inginious!")
println("Husk at disse testene ikke alltid sjekker alle edge-cases")
println("---------------------------------------------------------\n\n")
=#