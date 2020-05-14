function findMedian(x, coordinate)
    median = 0
    midIndex = (size(x,1)+1) ÷ 2
    if (size(x,1)%2==0)
        median = (x[midIndex,coordinate] + x[midIndex+1,coordinate])/2
    else
        median = x[midIndex,coordinate]
    end
    return median
end


function binaryintervalsearch(x, delta, coordinate)

    median = findMedian(x, coordinate)

    deltaL = median - delta
    deltaR = median + delta

    start = searchsortedfirst(x[1:end,coordinate], deltaL)
    last = searchsortedlast(x[1:end, coordinate], deltaR)

    if (start > last)
        return [-1, -1]

    else
        return (start, last)

    end
end

println(findMedian([1 2;3 4;5 6;7 8],1))
println(binaryintervalsearch([1 2; 2 0; 3 3; 4 4],0.25,1))