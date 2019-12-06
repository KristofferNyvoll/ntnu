from turtle import *

def a():
    ant_loops = int(input('Hvor mange repetisjoner vil du gjennomføre? '))

    for i in range(ant_loops):
        adj = input("Beskriv deg selv med et adjektiv? ")
        print("Hah, du", adj + "!? Jeg er mye", adj + "ere!")
    print("Takk for nå!")
#a()

def b():
    fortsette = input('Vil du fortsette? Trykk Enter uten å skrive noe for å terminere :)')
    while fortsette != "":
        adj = input("Beskriv deg selv med et adjektiv? ")
        print("Hah, du", adj + "!? Jeg er mye", adj + "ere!")
        fortsette = input('Vil du fortsette? Trykk Enter for å terminere :)')
    print("Takk for nå!")

#b()


def c():
    ant_bokstaver = 42

    while ant_bokstaver > 0:
        if ant_bokstaver == 1:
            print("Du har ", ant_bokstaver , " bokstav til disposisjon.")
        else:
            print("Du har ", ant_bokstaver , " bokstaver til disposisjon.")
        adj = input("Beskriv deg selv med et adjektiv: ")
        print("Hah, du", adj + "!? Jeg er mye", adj + "ere!")
        ant_bokstaver -= len(adj)
    print("Takk for nå!")

#c()


def d():
    print("Oddetallene fra 1 til 20:")
    for number in range(1, 20, 2):
        print(number, end=" ")
    print()
    print()

    print("Tallene i 3-gangen mellom 12 og 25:")
    for number in range(12, 25, 3):
        print(number, end=" ")
    print()
    print()

    print("Tallene i 5-gangen mellom 20 og 81:")
    for number in range(20, 81, 5):
        print(number, end=" ")
    print()
    print()

    print("Tallsekvensen 48, 56, 64, 72, 80")
    for number in range(48, 81, 8):
        print(number, end=" ")
    print()
    print()

    print("Telle baklengs fra 100 til 80, med intervall på -3, dvs. 100, 97, ...:")
    for number in range(100, 80, -3):
        print(number, end=" ")
    print()

d()


def e():
    for i in range(1, 6):
        print(i, end=" ")

#e()


def f():
    for j in range(15, 0, -1):
        print(j, end=" ")

#f()


def g():
    vinkel = int(input("Oppgi antall grader (anbefaler fra 120-150 grader): "))
    while True:
        forward(50000/ vinkel)
        left(vinkel)

#g()