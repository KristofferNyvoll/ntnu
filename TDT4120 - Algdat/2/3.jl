function maxofdoublelinkedlist(linkedlist)
    sum = linkedlist.value
    greatest = linkedlist
    while(linkedlist.prev != nothing)
        linkedlist = linkedlist.prev
        if(sum < linkedlist.value)
            greatest = linkedlist
            sum = greatest.value
        end
    end
    while(linkedlist.next != nothing)
        linkedlist = linkedlist.next
        if(sum < linkedlist.value)
            greatest = linkedlist
            sum = greatest.value
        end
    end
    return greatest.value
end
