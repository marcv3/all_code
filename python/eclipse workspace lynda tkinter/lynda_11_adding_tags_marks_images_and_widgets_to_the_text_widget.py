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
text.tag_add('my_tag', '1.0', '1.0 wordend')
text.tag_configure('my_tag', background = 'yellow')
text.tag_remove('my_tag', '1.1', '1.3')
print text.tag_ranges('my_tag')
print text.tag_names()
print text.tag_names('1.0')
#text.replace('my_tag.first', 'my_tag.last', 'more')
text.tag_delete('my_tag')
print text.mark_names()
text.insert('insert', '_')
text.mark_set('my_mark', 'end')
text.mark_gravity('my_mark', 'right')
image = PhotoImage(file = 'C:\\Users\\Marc\\Desktop\\classics\\dilbert-00086.gif')
text.image_create('insert', image = image)
button = Button(text, text = 'Click Me')
text.window_create('insert', window = button)


root.mainloop()
