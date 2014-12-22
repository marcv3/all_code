'''
Created on Aug 7, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *
root = Tk()
month = StringVar()
combobox = Combobox(root, textvariable = month)
combobox.pack()
combobox.config(values = ('Jan', 'Feb', 'Mar'))
month.get()
month.set('Jan')
year = StringVar()
Spinbox(root, from_ = 1990, to = 2014, textvariable = year).pack()
year.get()
year.set('1991')

root.mainloop()