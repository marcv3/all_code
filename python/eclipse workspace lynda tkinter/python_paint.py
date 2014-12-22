import Tkinter
import turtle 
import sys

def main():
    
    root = Tkinter.Tk()
    
    cv = Tkinter.Canvas(root, width=600, height=600)
    
    cv.pack(side = Tkinter.LEFT)
    
    root.title("Draw!")
    
    t = turtle.RawTurtle(cv)
    
    screen = t.getscreen()
    
    screen.setworldcoordinates(0,0,600,600)
    
    frame = Tkinter.Frame(root)
    frame.pack(side = Tkinter.RIGHT, fill = Tkinter.BOTH)
    screen.tracer(0)
    
    def quitHandler():
        print("Goodbye")
        sys.exit(0)
    
    quitButton = Tkinter.Button(frame,text="Quit",command=quitHandler)
    quitButton.pack()
    
    textLab = Tkinter.Label(frame,text="Text to Write")
    textLab.pack()
        
    textVar = Tkinter.StringVar()
    textVar.set("Hello World")
    textEntry = Tkinter.Entry(frame,textvariable=textVar)
    textEntry.pack()
    
    def writeHandler():
        t.write(textVar.get())
    
    writeButton = Tkinter.Button(frame,text="Write Text",command=writeHandler)
    writeButton.pack()
    
    
    def clickHandler(x,y):
        t.goto(x,y)
        screen.update()
    
    screen.onclick(clickHandler)
    
    def dragHandler(x,y):
        t.goto(x,y)
        screen.update()
    
    t.ondrag(dragHandler)
    
    
    Tkinter.mainloop()

if __name__ == "__main__":
    main()