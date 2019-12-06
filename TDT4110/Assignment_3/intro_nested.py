def a():
    antStud = int(input('Hvor mange studenter? Svar: '))
    antFag = int(input('Hvor mage fag? Svar: '))

    for x in range(antStud):
        for y in range(antFag):
            print("Stud " + str(x + 1) + " elsker Emne " + str(y + 1),end=" ; ")
        print()

#a()


def b():
    for x in range(24):
        for y in range(60):
            print(str(x) + ":" + str(y))

#b()


def c():
    for x in range(10):
        for y in range(10):
            sum = (x + 1) * (y + 1)
            print(sum,end=" ")
        print()

#c()