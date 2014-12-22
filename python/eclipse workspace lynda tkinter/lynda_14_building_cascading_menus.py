'''
Created on Aug 8, 2014

@author: Marc
'''

from Tkinter import *
root = Tk()
root.option_add('*tearOff', False)

def stuff():
    print "New File"
def stuff1():
    print 'Opening File...'
def stuff2():
    print 'Save File'
def stuff3():
    print 'Saving As...'
def stuff4():
    print 'Saving All...'

menubar = Menu(root)
root.config(menu = menubar)
file_ = Menu(menubar)
edit = Menu(menubar)
help_ = Menu(menubar)
menubar.add_cascade(menu = file_, label = "File")
menubar.add_cascade(menu = edit, label = "Edit")
menubar.add_cascade(menu = help_, label = "Help")
file_.add_command(label = "New", command = stuff)
file_.add_separator()
file_.add_command(label = 'Open...', command = stuff1)
file_.add_command(label = 'Save', command = stuff2)
file_.entryconfig('New', accelerator = 'Ctrl + N')
logo = PhotoImage(file = 'C:\Users\Marc\Desktop\classics\dilbert-00086.gif').subsample(10,10)
file_.entryconfig('Open...', image = logo, compound = 'left')
file_.entryconfig('Open...', state = 'disabled')
file_.delete('Save')
save = Menu(file_)
file_.add_cascade(menu = save, label = 'Save')
save.add_command(label = 'Save As', command = stuff3)
save.add_command(label = 'Save All', command = stuff4)
choice = IntVar()
edit.add_radiobutton(label = 'One', variable = choice, value = 1)
edit.add_radiobutton(label = 'Two', variable = choice, value = 2)
edit.add_radiobutton(label = 'Three', variable = choice, value = 3)
file_.post(400, 300)
root.mainloop()