'''
Created on Aug 12, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *

root = Tk()

label1 = Label(root, text = 'Label 1')
label2 = Label(root, text = 'Label 2')
label1.pack()
label2.pack()

def output(word):
    print word

label1.bind('<ButtonPress>', lambda e: output('<ButtonPress> Label'))
label1.bind('<1>', lambda e: output('<1> label'))

root.bind('<1>', lambda e: output('<1> Root'))

label1.unbind('<1>')
label1.unbind('<ButtonPress>')

root.bind_all('<Escape>', lambda e: output("Escape!"))

root.mainloop()