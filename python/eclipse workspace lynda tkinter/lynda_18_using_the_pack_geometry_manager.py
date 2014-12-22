'''
Created on Aug 8, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *

root = Tk()
'''
Label(root, text = "Hello, Tkinter!", 
      background = 'yellow').pack(fill = BOTH, expand = True)
Label(root, text = "Hello, Tkinter!", 
      background = 'blue').pack(fill = BOTH)
Label(root, text = "Hello, Tkinter!", 
      background = 'green').pack(fill = BOTH, expand = True)
'''

label = Label(root, text = "Hello, Tkinter!", 
      background = 'yellow')
label.pack(side = LEFT, anchor = 'nw')
print label


Label(root, text = "Hello, Tkinter!", 
      background = 'blue').pack(side = LEFT, padx = 10, pady = 10)
Label(root, text = "Hello, Tkinter!", 
      background = 'green').pack(side = LEFT, ipadx = 10, ipady = 10)

for widget in root.pack_slaves():
    widget.pack_configure(fill = BOTH, expand = True)
    print (widget.pack_info())

label.pack_forget()

root.mainloop()