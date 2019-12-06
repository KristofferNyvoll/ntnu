from math import sqrt
GRAVITY = 9.81

def get_fall_time():
    d = int(input("Angi fallhøyde:"))
    print(sqrt((2*d)/GRAVITY))

#get_fall_time()


# Del B

def set_gravity(gravity):
    global GRAVITY
    GRAVITY = gravity
#set_gravity(9.1)

#print(get_fall_time())

'''
Jeg er generelt sett imot bruken av globale variabler. Det gjør det vanskelig å debugge og få oversikt over hva verdien til variablen er til en hver tid.
Det beste er vel om du lar funksjonen ta inn både fallhøyde og gravitasjonskonstanten, slik som under:
'''

def get_fall_time_2(distance, acceleration):
    tid = sqrt((2*distance)/acceleration)
    print(str(tid) + " sekunder.")

#get_fall_time_2(18.5,9.81)