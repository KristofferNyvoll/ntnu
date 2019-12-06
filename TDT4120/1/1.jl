function findindexinlist(linkedlist, index)
    node = linkedlist
    count = 1
    while true
        if (count == index)
            return node.value
        end
        if (node.next == nothing)
            return -1
        end
        count += 1
        node = node.next
    end
    println("herpy derp")
end
