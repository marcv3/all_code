'''
Created on Aug 8, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *

root = Tk()
text = Text(root, width = 40, height = 10, wrap = 'word')
text.grid(row = 0, column = 0)
scrollbar = Scrollbar(root, orient = VERTICAL, command = text.yview)
scrollbar.grid(row = 0, column = 1, sticky = 'ns')
text.config(yscrollcommand = scrollbar.set)


root.mainloop()