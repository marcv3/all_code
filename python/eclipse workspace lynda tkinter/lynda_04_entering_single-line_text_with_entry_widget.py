'''
Created on Aug 6, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *

root = Tk()
entry = Entry(root, width = 30)
entry.pack()
entry.get()
entry.delete(0, 1)
entry.insert(0, "Enter your password")
entry.config(show = '*')
entry.state(['disabled'])
entry.state(['!disabled'])
entry.state(['readonly'])

root.mainloop()