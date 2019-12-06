def is_leap_year ( year ):
    if year % 400 == 0:
        return True
    elif year % 100 == 0:
        return False
    elif year % 4 == 0:
        return True
    return False

def weekday_newyear(year):
    # Liste med alle dagene
    days = ['mandag', 'tirsdag', 'onsdag', 'torsdag', 'fredag', 'lørdag', 'søndag']
    y = 0
    # Looper gjennom hvert år, printer ut første dag i hvert år.
    for x in range (1900,1920):
        if not is_leap_year(x):
            print(str(x) + " " + days[(y % 7)])
            y += 1
        else:
            print(str(x) + " " + days[(y % 7)])
            y += 2
#weekday_newyear(1905)

# b) -----------------------------------------------------------------------
def is_workday(index):
    if (index % 7) <= 4:
        return True
    elif (index % 7) <= 6:
        return False
#is_workday(46)

# c) -----------------------------------------------------------------------

def firstday_of_year(year):
    days = ['mandag', 'tirsdag', 'onsdag', 'torsdag', 'fredag', 'lørdag', 'søndag']
    y = 0
    # finner indexen til den første dagen i året som blir definert med funksjonen.
    for x in range (1900,year):
        if not is_leap_year(x):
            y += 1
        else:
            y += 2
    return y
#print(firstday_of_year(1907))


def workdays_in_year():
    for f in range(1900,1920):
        workdays = 0
        print(f, end=" ")
        # sjekker om det er skuddår, hvis det er skuddår, er det en ekstra dag i året. 
        if is_leap_year(f):
            # Looper gjennom hver dag
            y = firstday_of_year(f)
            for z in range(0,367):
                    if is_workday(y):
                        workdays += 1
                        
                    else:
                        workdays += 0
                    y += 1

        else:
            # Looper gjennom hver dag
            y = firstday_of_year(f)
            for z in range(0, 366):
                if is_workday(y):
                    workdays += 1

                else:
                    workdays += 0
                y += 1
        print(workdays)
    return workdays

#workdays_in_year()