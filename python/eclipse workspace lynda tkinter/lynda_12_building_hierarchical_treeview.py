'''
Created on Aug 8, 2014

@author: Marc
'''
from Tkinter import *
from ttk import *

root = Tk()
treeview = Treeview(root)
treeview.pack()
treeview.insert('', '0', 'item1', text = 'First Item')
treeview.insert('', '1', 'item2', text = 'Second Item')
treeview.insert('', 'end', 'item3', text = 'Third Item')
logo = PhotoImage(file = 'C:\Users\Marc\Desktop\classics\dilbert-00086.gif').subsample(10,10)
treeview.insert('item2', 'end', 'python', text = 'Python', image = logo)
treeview.config(height = 5)
treeview.move('item2', 'item1', 'end')
treeview.item('item1', open = True)
print treeview.item('item1', 'open')
treeview.detach('item3')
treeview.move('item3', 'item2', '0')
treeview.delete('item3')

root.mainloop()