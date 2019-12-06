# Trenger dette for å implementere kø i løsningen
using DataStructures: Queue, enqueue!, dequeue!
# For å teste lokalt:
using Pkg; Pkg.add("DataStructures")

mutable struct Node
    i::Int
    j::Int
    floor::Bool
    neighbors::Array{Node}
    color::Union{String,Nothing}
    distance::Union{Int,Nothing}
    predecessor::Union{Node,Nothing}
end
Node(i, j, floor=true) = Node(i, j, floor, [], nothing, nothing, nothing)

# Task
function bfs!(nodes, start)

    inf = typemax(Int)

    for node in nodes
        node.color = "white"
        node.distance = inf
        node.predecessor = nothing
    end

    start.color = "gray"
    start.distance = 0
    start.predecessor = nothing

    queue = Queue{Node}()
    enqueue!(queue, start)

    while length(queue) > 0
        u = dequeue!(queue)

        for v in u.neighbors
            if v.color == "white"
                v.color = "gray"
                v.distance = u.distance + 1
                v.predecessor = u
                enqueue!(queue, v)
            end
        end
        if isgoalnode(u)
            return u
        end
        u.color = "black"
    end
    return nothing
end
