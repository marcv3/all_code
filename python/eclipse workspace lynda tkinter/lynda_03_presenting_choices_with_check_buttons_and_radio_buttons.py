'''
Created on Aug 6, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *

def state():
    print spam.get()

def radio_state():
    print breakfast.get()

root = Tk()
checkbutton = Checkbutton(root, text = "SPAM?")
checkbutton.pack()
spam = StringVar()
spam.set("SPAM!")
print spam.get()
checkbutton.config(variable = spam, onvalue = 'SPAM please!', offvalue = "Boo SPAM", command = state)
print spam.get()
breakfast = StringVar()
Radiobutton(root, text = "SPAM", variable = breakfast, value = "SPAM", command = radio_state).pack()
Radiobutton(root, text = "Eggs", variable = breakfast, value = "Eggs", command = radio_state).pack()
Radiobutton(root, text = "Sausage", variable = breakfast, value = "Sausage", command = radio_state).pack()
Radiobutton(root, text = "SPAM", variable = breakfast, value = "SPAM", command = radio_state).pack()
breakfast.get()
#checkbutton.config(textvariable = breakfast)

root.mainloop()