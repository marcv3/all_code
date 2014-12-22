'''
Created on Aug 11, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *

root = Tk()

entry = Entry(root)
entry.pack()

def output(word):
    print word

entry.bind('<<Copy>>', lambda e: output("copy"))
entry.bind('<<Paste>>', lambda e: output("paste"))

entry.event_add('<<OddNumber>>', '1', '3', '5', '7', '9')
entry.bind('<<OddNumber>>', lambda e: output("Odd Number!"))

print(entry.event_info('<<OddNumber>>'))

entry.event_generate('<<OddNumber>>')
entry.event_generate('<<Paste>>')

entry.event_delete('<<OddNumber>>')

root.mainloop()