'''
Created on Aug 6, 2014

@author: Marc
'''
from Tkinter import *
from ttk import *
root = Tk()
label = Label(root, text = "Hello, Tkinter!")
label.pack()
label.config(text = "Howdy, Tkinter!")
label.config(text = "blah bbbbbbbbllllllllllaaaaaaaaahhhhhh")
label.config(wraplength = 150)
label.config(justify = CENTER)
label.config(foreground = 'blue', background = 'yellow')
label.config(font = ('Courier', 18, 'bold'))
label.config(text = "Howdy, Tkinter!")
logo = PhotoImage(file = "C:\Users\Marc\Desktop\classics\dilbert-00086.gif")
label.config(image = logo)
label.config(compound = 'text')
label.config(compound = 'center')
label.config(compound = 'left')
label.img = logo
label.config(image = label.img)
root.mainloop()