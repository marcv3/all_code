'''
Created on Aug 12, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *

class Feedback:
    
    def __init__(self,master):
        self.frame_header = Frame(master)
        self.logo = PhotoImage(file = 'C:\Users\Marc\Desktop\classics\dilbert-00086.gif')
        Label(self.frame_header, image = self.logo)
        Label(self.frame_header, text = "Thanks for Exploring!")
        Label(self.frame_header, text = ("We're glad you cose Explore California for you recent adventure.  "
                                         "Please tell us what you thought about the 'Desert to Sea' tour."))
        self.frame_content = Frame(master)
        
        Label(self.frame_content, text = 'Name:')
        Label(self.frame_content, text = 'Email:')
        Label(self.frame_content, text = 'Comments:')
        
        self.entry_name = Entry(self.frame_content, width = 24)
        self.entry_email = Entry(self.frame_content, width = 24)
        
        self.text_comments = Text(self.frame_content, width = 50, height = 10)
        
        Button(self.frame_content, text = 'Submit')
        Button(self.frame_content, text = 'Clear')



def main():
    
    root = Tk()
    feedback = Feedback(root)
    root.mainloop()

if __name__ == "__main__": main()

