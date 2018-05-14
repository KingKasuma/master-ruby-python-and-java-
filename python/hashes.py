odin = {'name': 'Odin', 'age': 6000, 'height': 3*3+9/5}
odin['city'] = 'Asgard'
print(odin)

thor = {1: 'Thor',2: '2000',3: 'Asgard'}
print(thor)

del thor[2]
print(thor)

days = {
    'Sunday':
        """
        Sunday
        What a great day
        Ends the weekend
        wait I'm usually depressed since weekend is over
        """,
    'Monday':
        """
        Monday Yay
        The start of the workweek, o aaah not so great
        """,
    'Tuesday':
        """
        O hello almost done with
        half the week, getting there
        """,
    'Wednesday':
        """
        Hump day! yay!
        At the end of today only two days to go!
        """,
    'Thursday':
        """
        What a grat day
        Almost at the end of the week
        1 more day to go
        """,
    'Friyday':
        """
        I've done it!
        Partay!
        """
}

print('='*50)
print ("The start of thw week, wait which day is that?",days['Monday'])
