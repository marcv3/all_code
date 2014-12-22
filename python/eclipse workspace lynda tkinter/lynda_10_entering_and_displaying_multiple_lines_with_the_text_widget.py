'''
Created on Aug 8, 2014

@author: Marc
'''

from Tkinter import *

root = Tk()
text = Text(root, width = 40, height = 10)
text.insert(INSERT, "hello world\n\n\nhello sun")
text.pack()
text.config(wrap = 'word')
print text.get('1.0', 'end')
print text.get('1.0', '1.end')
text.insert('1.0 + 2 lines', 'Inserted message')
text.insert('1.0 + 2 lines lineend', ' and\nmore and\nmore...')
text.delete('1.0')
text.delete('1.0', '1.0 lineend')
text.delete('1.0', '3.0 lineend + 1chars')
#text.replace('1.0', '1.0 lineend', 'This is the first line.')
text.config(state = 'disabled')
text.delete('1.0', 'end')
text.config(state = 'normal')

root.mainloop()