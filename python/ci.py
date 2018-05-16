def compound_interest():
    principal = int(input('Please enter your initial deposit: $'))
    rate = float(input('Please enter the expect interest rate: '))
    rate = rate/100
    time = int(input('Please enter the number of years it will be saved: '))
    time = time + 1
    compound = int(input('How many times is the interest compounded yearly?: '))

    print("Year %21s" % "Amount on deopsit")

    for time in range(1,time):
        formula = principal * (1.0 + rate)** time
        print("%4d%21.2f" % (time,formula))

def start():
    print("Lets start compounding your interest")
    compound_interest()

def ejemplo():
    num1 = input("Ingrese un numero: ")
    num2 = input("Ingrese otro numero: ")
    suma = float(num1) + float(num2)
    print(suma)

start()
