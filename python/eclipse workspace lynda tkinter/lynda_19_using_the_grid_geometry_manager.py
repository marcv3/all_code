''''
Created on Aug 8, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *

root = Tk()

root.rowconfigure(0, weight = 1)
root.rowconfigure(1, weight = 3)

root.columnconfigure(2, weight = 1)

Label(root, text = "Yellow", background = 'yellow').grid(row = 0, column = 2, rowspan = 2, stick = 'nsew')
Label(root, text = "Blue", background = 'blue').grid(row = 1, column = 0, columnspan = 2, stick = 'nsew')
Label(root, text = "Green", background = 'green').grid(row = 0, column = 0, stick = 'nsew', padx = 10, pady = 10)
Label(root, text = "Orange", background = 'orange').grid(row = 0, column = 1, stick = 'nsew', ipadx = 25, ipady = 25)

#grid_slaves(), grid_configure(), grid_info(), and grid_forget() are methods usable with grid

root.mainloop()