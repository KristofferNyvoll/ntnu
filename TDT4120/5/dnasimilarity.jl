function dnasimilarity(s1, s2)
    len = (length(s1) < length(s2)) ? s1 : s2
    count = 0
    for i=1:length(len)
        if (s1[i] == s2[i])
            count += 1
        else
            continue
        end
    end
    return count
end

println(dnasimilarity("TCGACCCG", "TGGAGG"))