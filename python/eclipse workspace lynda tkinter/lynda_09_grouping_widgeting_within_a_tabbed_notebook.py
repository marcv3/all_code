'''
Created on Aug 8, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *

root = Tk()
notebook = Notebook(root)
notebook.pack()
frame1 = Frame(notebook)
frame2 = Frame(notebook)
notebook.add(frame1, text = 'One')
notebook.add(frame2, text = 'Two')
Button(frame1, text = "Click Me").pack()
frame3 = Frame(notebook)
notebook.insert(1, frame3, text = 'Three')
notebook.forget(1)
notebook.add(frame3, text = "Three")
print notebook.select()
print notebook.index(notebook.select())
notebook.select(2)
notebook.tab(1, state = 'disabled')
notebook.tab(1, state = 'hidden')
notebook.tab(1, state = 'normal')
print notebook.tab(1, 'text')
print notebook.tab(1)

root.mainloop()