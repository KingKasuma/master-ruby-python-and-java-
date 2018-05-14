class Music:
    def notes(self, note):
        self.data = note

    def display(self):
        print(self.data)

x = Music()
y = Music()

x.notes("O my what a day")
y.notes("Rock n roll is still king")

x.display()
y.display()
