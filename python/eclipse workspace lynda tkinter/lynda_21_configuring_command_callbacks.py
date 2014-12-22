'''
Created on Aug 11, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *

root = Tk()

def callback(number):
    print(number)

Button(root, text = "Click Me 1", command = lambda: callback(1)).pack()
Button(root, text = "Click Me 2", command = lambda: callback(2)).pack()
Button(root, text = "Click Me 3", command = lambda: callback(3)).pack()

# widgets with command callbacks --> Button, Checkbutton, Radobutton, Spinbox, Scale, Scrollbar

root.mainloop()