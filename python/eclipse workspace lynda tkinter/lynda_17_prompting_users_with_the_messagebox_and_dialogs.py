'''
Created on Aug 8, 2014

@author: Marc
'''

import Tkinter
import tkMessageBox
import tkFileDialog
import tkColorChooser

tkMessageBox.showinfo(title = 'A Friendly Message', message = "Hello, Tkinter!")
# showinfo(), showwarning(), and showerror() are the three types of messagebox
tkMessageBox.askyesno(title = "Hungry?", message = 'Do you want SPAM?')
# Messagebox Types: Questions askyesno(), askokcancel(), askretrycancel(), askyesnocancel(), askquestion()
filename = tkFileDialog.askopenfile()
print filename.name
# tkFileDialog types: askopenfile(mode), askopenfiles(mode), askopenfilename(), askopenfilenames()
print tkColorChooser.askcolor(initialcolor = '#FFFFFF')
