from decimal import *

def amortization(principal,rate,term):
    # firstly we define a function which would call a function called amortization in order to populate our table.
    # We would need to define the fields that would be required from the user. (principal, rate and term)
    # Prints the amortization table for a loan.
    # Prints the amortization table for a loan given # the principal, the interest rate and the term (in months)
    payment = pmt(principal,rate,term)
    begBal = principal
    print('Pmt no'.rjust(6), '', 'Beg. bal.'.ljust(13), '',)
    print('Payment'.ljust(9), '', 'Principal'.ljust(9), '',)
    print('Interest'.ljust(9), '', 'End. bal.'.ljust(13))
    print(''.rjust(6, '-'), '', ''.ljust(13, '-'), '',)
    print(''.rjust(9, '-'), '', ''.ljust(9, '-'), '',)
    print(''.rjust(9, '-'), '', ''.ljust(13, '-'), '')

    for num in range(1, term + 1):
        interest = round(begBal * (rate/(12*100.0)),2)
        applied = round(payment - interest, 2)
        endBal = round(begBal - applied, 2)

        print(str(num).center(6), '',)
        print('{0:,.2f}'.format(begBal).rjust(13), '',)
        print('{0:,.2f}'.format(payment).rjust(9), '',)
        print('{0:,.2f}'.format(applied).rjust(9), '',)
        print('{0:,.2f}'.format(interest).rjust(9), '',)
        print('{0:,.2f}'.format(endBal).rjust(13))
        begBal = endBal

def pmt(principal,rate,term):
    ratePerTwelve = rate/(12*100.0)
    result = principal * (ratePerTwelve/(1-(1 + ratePerTwelve)**(-term)))
    result = float(result)
    result = round(result, 2)
    return result

amortization(10000,5,10)
