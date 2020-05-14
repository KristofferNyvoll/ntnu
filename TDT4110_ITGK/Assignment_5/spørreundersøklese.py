from sys import exit

antall_kvinner = 0
antall_menn = 0
antall_fag = 0
antall_ITGK = 0
antall_timer_lekser = 0
fortsett = True

def sjekk_svar(spm):
    if spm == "hade":
        exit()
    elif spm == "j" or "J":
        antall_kvinner += 1
    elif spm == "m" or "M":
        antall_menn += 1
    elif


while fortsett == True:
    print("Velkommen til spørreundersøkelsen! ")
    print()
    spm = input("Hvilket kjønn er du? [f/m]: ")