'''
Created on Aug 11, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *

root = Tk()

def key_press(event):
    print("type: {}".format(event.type))
    print("widget: {}".format(event.widget))
    print("char: {}".format(event.char))
    print("keysym: {}".format(event.keysym))
    print("keycode: {}".format(event.keycode))

def shortcut(action):
    print(action)

root.bind('<Control-c>', lambda e: shortcut('Copy'))
root.bind('<Control-v>', lambda e: shortcut('Paste'))

root.mainloop()

#keyboard Events
#<Key>, <KeyPress>   --> User pressed any key
#<KeyPress-Delete>   --> User pressed Delete key
#<KeyRelease-Right>  --> User released Right Arrow key
#a,b,c, etc. and 
#<space>, <less>     --> User pressed a "printable" key
#<Sift_L>, <F5>, <Up>--> User pressed a "special" key
#<Return>            --> User pressed the ENter key
#<Control-Alt-Next>  --> User pressed Ctrl+Alt+Page Down keys