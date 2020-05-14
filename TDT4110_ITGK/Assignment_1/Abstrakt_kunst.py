from turtle import *
import time

def a():
    # velger farger
    user_inputbg = input("Choose a color for the background. See any compatible color here: https://www.tcl.tk/man/tcl8.4/TkCmd/colors.htm")
    user_inputsq = input("Choose a color for the square")
    bgcolor(user_inputbg)
    color(user_inputsq)

    # setter opp tegnevinduet
    setup(330, 330, 0, 0)
    screensize(315, 315)
    goto(-60, 150)

    # tegner den indre firkanten
    begin_fill()
    right(10)  # tilter den 10 grader nedover
    forward(200)
    right(90)
    forward(200)
    right(90)
    forward(200)
    right(90)
    forward(200)
    end_fill()

    time.sleep(10)  # Gjør at vinduet med tegningen ikke lukkes med én gang, men er oppe i 10 sekunder
#a()