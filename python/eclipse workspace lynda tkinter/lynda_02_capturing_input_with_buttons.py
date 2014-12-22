'''
Created on Aug 6, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *

root = Tk()
button = Button(root, text = "Click Me")
button.pack()

def callback():
    print('Clicked!')

button.config(command = callback)
button.invoke()
button.state(['disabled'])
print button.instate(['disabled'])
button.state(["!disabled"])
print button.instate(["!disabled"])
logo = PhotoImage(file = "C:\Users\Marc\Desktop\classics\dilbert-00086.gif")
button.config(image = logo, compound = LEFT)
small_logo = logo.subsample(5,5)
button.config(image = small_logo)

root.mainloop()