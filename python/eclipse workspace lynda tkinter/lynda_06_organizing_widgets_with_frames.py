'''
Created on Aug 7, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *

root = Tk()
frame = Frame(root)
frame.pack()
frame.config(height = 100, width = 200)
frame.config(relief = RIDGE)
Button(frame, text = 'Click Me').grid()
frame.config(padding = (30, 15))
LabelFrame(root, height = 100, width = 200, text = 'My Frame').pack()






root.mainloop()