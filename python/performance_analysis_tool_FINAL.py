'''
Created on Aug 12, 2014

@author: Marc
'''

from Tkinter import *
from ttk import *
import tkMessageBox

class PerformanceAnalysis:
    
    def __init__(self,master):
        
        self.Criteria0Score0Input = ['assaults co-workers', 'steals money', 'lies to the public', 'sells drugs to co-workers', 'screams profanity']
        self.Criteria0Score1Input = ['smells bad', 'messy hair', 'farts in public', 'drinks alcohol at work', 'is very loud']
        self.Criteria0Score2Input = ['answers phone', 'only 5 mins late', 'shirt tucked in', 'does not belch on phone', 'smokes outdoors']
        self.Criteria0Score3Input = ['greets customer', 'only takes 1 lunch break', 'is sober', 'does not fall asleep', 'flushes toilet']
        self.Criteria0Score4Input = ['sells stuff', 'collects money', 'works past midnight', 'never complains', 'listens']
        
        self.Criteria1Score0Input = ['assaults co-workers', 'steals money', 'lies to the public', 'sells drugs to co-workers', 'screams profanity']
        self.Criteria1Score1Input = ['smells bad', 'messy hair', 'farts in public', 'drinks alcohol at work', 'is very loud']
        self.Criteria1Score2Input = ['answers phone', 'only 5 mins late', 'shirt tucked in', 'does not belch on phone', 'smokes outdoors']
        self.Criteria1Score3Input = ['greets customer', 'only takes 1 lunch break', 'is sober', 'does not fall asleep', 'flushes toilet']
        self.Criteria1Score4Input = ['sells stuff', 'collects money', 'works past midnight', 'never complains', 'listens']        

        self.Criteria2Score0Input = ['assaults co-workers', 'steals money', 'lies to the public', 'sells drugs to co-workers', 'screams profanity']
        self.Criteria2Score1Input = ['smells bad', 'messy hair', 'farts in public', 'drinks alcohol at work', 'is very loud']
        self.Criteria2Score2Input = ['answers phone', 'only 5 mins late', 'shirt tucked in', 'does not belch on phone', 'smokes outdoors']
        self.Criteria2Score3Input = ['greets customer', 'only takes 1 lunch break', 'is sober', 'does not fall asleep', 'flushes toilet']
        self.Criteria2Score4Input = ['sells stuff', 'collects money', 'works past midnight', 'never complains', 'listens']

        self.Criteria3Score0Input = ['assaults co-workers', 'steals money', 'lies to the public', 'sells drugs to co-workers', 'screams profanity']
        self.Criteria3Score1Input = ['smells bad', 'messy hair', 'farts in public', 'drinks alcohol at work', 'is very loud']
        self.Criteria3Score2Input = ['answers phone', 'only 5 mins late', 'shirt tucked in', 'does not belch on phone', 'smokes outdoors']
        self.Criteria3Score3Input = ['greets customer', 'only takes 1 lunch break', 'is sober', 'does not fall asleep', 'flushes toilet']
        self.Criteria3Score4Input = ['sells stuff', 'collects money', 'works past midnight', 'never complains', 'listens']

        self.Criteria4Score0Input = ['assaults co-workers', 'steals money', 'lies to the public', 'sells drugs to co-workers', 'screams profanity']
        self.Criteria4Score1Input = ['smells bad', 'messy hair', 'farts in public', 'drinks alcohol at work', 'is very loud']
        self.Criteria4Score2Input = ['answers phone', 'only 5 mins late', 'shirt tucked in', 'does not belch on phone', 'smokes outdoors']
        self.Criteria4Score3Input = ['greets customer', 'only takes 1 lunch break', 'is sober', 'does not fall asleep', 'flushes toilet']
        self.Criteria4Score4Input = ['sells stuff', 'collects money', 'works past midnight', 'never complains', 'listens']

        self.Criteria5Score0Input = ['assaults co-workers', 'steals money', 'lies to the public', 'sells drugs to co-workers', 'screams profanity']
        self.Criteria5Score1Input = ['smells bad', 'messy hair', 'farts in public', 'drinks alcohol at work', 'is very loud']
        self.Criteria5Score2Input = ['answers phone', 'only 5 mins late', 'shirt tucked in', 'does not belch on phone', 'smokes outdoors']
        self.Criteria5Score3Input = ['greets customer', 'only takes 1 lunch break', 'is sober', 'does not fall asleep', 'flushes toilet']
        self.Criteria5Score4Input = ['sells stuff', 'collects money', 'works past midnight', 'never complains', 'listens']
        
        self.Criteria = ['Resolution: fulfillment of the goal of call',
                         'Accuracy of information relayed',
                         'Attention to detail: covered all required information',
                         'Clarity and tone: pleasant to speak with',
                         'Engagement: good connection with Client',
                         'Focused call control: directed call efficiently to resolution in minimum time']
        
        self.Score0Name = '0'
        self.Score1Name = '1 - Very poor'
        self.Score2Name = '2 - Poor'
        self.Score3Name = '3 - Adequate'
        self.Score4Name = '4 - Outstanding'
        
        self.AgentName = "Agent"
        self.CallNumberName = "Call #"
        self.AssessmentDateName = "Assessment date"
        self.CallDateName = "Call date and time"
        self.DurationOfCallName = "Duration of call"
        self.CallTypeName = "Call type"
        
        self.OtherEntryName = "Other"
        self.PositiveEntryName = "Positive comments:"
        self.NegativeEntryName = "Points for improvement:"

        self.CallLogName = "Call log"
        self.OtherNotesName = "Other notes"
        self.HardSkillsName = "Hard skills"
        self.SoftSkillsName = "Soft skills"
        
        self.CallNumberStart = 1

        self.FileName = "call_review.txt"
        
        master.title('Call Review')
        master.resizable(False, False)
        
        self.Font = 8 #this will set the font for all the text
        
        self.style = Style()
        self.style.configure("TLabel", font = ('TkDefaultFont',self.Font))
        self.style.configure("TCheckbutton", font = ('TkDefaultFont',self.Font))
        self.style.configure("TRadiobutton", font = ('TkDefaultFont',self.Font))
        
        self.TopFrame = Frame(master)
        self.TopFrame.grid(row = 0, column = 0, columnspan = 2)
        
        self.MiddleFrame = Frame(master)
        self.MiddleFrame.grid(row = 1, column = 0, columnspan = 2)
        
        def CurrentFile():
            Label(self.TopFrame, text = self.FileName).grid(row = 1, column = 7, sticky = 'w')


        
        #---------------------top text boxes--------------------
        def TopTextBoxes():
            Label(self.TopFrame, text = self.AgentName).grid(row = 0, column = 0, sticky = 'e')
            self.Agent = Entry(self.TopFrame, width = 24)
            self.Agent.grid(row = 0, column = 1)

            Label(self.TopFrame, text = self.AssessmentDateName).grid(row = 1, column = 0, sticky = 'e')
            self.AssessmentDate = Entry(self.TopFrame, width = 24)
            self.AssessmentDate.grid(row = 1, column = 1)
            
            Label(self.TopFrame, text = self.CallNumberName).grid(row = 0, column = 2, sticky = 'e')
            self.CallNumber = Entry(self.TopFrame, width = 24)
            self.CallNumber.grid(row = 0, column = 3)            

            Label(self.TopFrame, text = self.CallTypeName).grid(row = 1, column = 2, sticky = 'e')
            self.CallType = Entry(self.TopFrame, width = 24) 
            self.CallType.grid(row = 1, column = 3) 
    
            Label(self.TopFrame, text = self.CallDateName).grid(row = 0, column = 4, sticky = 'e')
            self.CallDate = Entry(self.TopFrame, width = 24)
            self.CallDate.grid(row = 0, column = 5) 
            
            Label(self.TopFrame, text = self.DurationOfCallName).grid(row = 1, column = 4, sticky = 'e')
            self.DurationOfCall = Entry(self.TopFrame, width = 24) 
            self.DurationOfCall.grid(row = 1, column = 5)         
    
            
            Label(self.MiddleFrame, text = self.CallLogName).grid(row = 0, column = 1, columnspan = 2, sticky = 'w')
            self.CallLog = Text(self.MiddleFrame, width = 40, height = 3, wrap = 'word')
            self.CallLog.grid(row = 1, column = 1, columnspan = 2, sticky = 'w')

            Label(self.MiddleFrame, text = self.OtherNotesName).grid(row = 0, column = 5, columnspan = 2, sticky = 'w')
            self.OtherNotes = Text(self.MiddleFrame, width = 40, height = 3, wrap = 'word')
            self.OtherNotes.grid(row = 1, column = 5, columnspan = 2, sticky = 'w')             
            
            Label(self.MiddleFrame, text = self.HardSkillsName, font = "TkDefaultFont 8 bold").grid(row = 2, column = 1, columnspan = 2)
            Label(self.MiddleFrame, text = self.PositiveEntryName).grid(row = 3, column = 1, columnspan = 2)
            self.HardPositiveComments = Entry(self.MiddleFrame, width = 80)
            self.HardPositiveComments.grid(row = 4, column = 1, columnspan = 2)
            Label(self.MiddleFrame, text = self.NegativeEntryName).grid(row = 5, column = 1, columnspan = 2)
            self.HardNegativeComments = Entry(self.MiddleFrame, width = 80)
            self.HardNegativeComments.grid(row = 6, column = 1, columnspan = 2)

            Label(self.MiddleFrame, text = self.SoftSkillsName, font = "TkDefaultFont 8 bold").grid(row = 2, column = 5, columnspan = 2)
            Label(self.MiddleFrame, text = self.PositiveEntryName).grid(row = 3, column = 5, columnspan = 2)
            self.SoftPositiveComments = Entry(self.MiddleFrame, width = 80)
            self.SoftPositiveComments.grid(row = 4, column = 5, columnspan = 2)
            Label(self.MiddleFrame, text = self.NegativeEntryName).grid(row = 5, column = 5, columnspan = 2)
            self.SoftNegativeComments = Entry(self.MiddleFrame, width = 80)
            self.SoftNegativeComments.grid(row = 6, column = 5, columnspan = 2)            
        
        TopTextBoxes()
        self.CallNumber.insert(1,str(self.CallNumberStart))
        
        
        #--------------------place criteria 0 - 5 frames----------------------
        self.Criteria0Frame = LabelFrame(master, text = self.Criteria[0])
        self.Criteria0Frame.grid(row = 2, column = 0)
        self.Criteria1Frame = LabelFrame(master, text = self.Criteria[1])
        self.Criteria1Frame.grid(row = 3, column = 0)
        self.Criteria2Frame = LabelFrame(master, text = self.Criteria[2])
        self.Criteria2Frame.grid(row = 4, column = 0)
        self.Criteria3Frame = LabelFrame(master, text = self.Criteria[3])
        self.Criteria3Frame.grid(row = 2, column = 1)
        self.Criteria4Frame = LabelFrame(master, text = self.Criteria[4])
        self.Criteria4Frame.grid(row = 3, column = 1)
        self.Criteria5Frame = LabelFrame(master, text = self.Criteria[5])
        self.Criteria5Frame.grid(row = 4, column = 1)

        #----------------Function for all radio buttons, returns score as int-----------------
        def RadioButtons(Frame):                    
            
            score = [0]
            
            def output01():
                print Score.get()
                score[0] = Score.get()
                print score

            Score = IntVar() 

            Radiobutton(Frame, text = self.Score0Name, variable = Score, value = '0', command = output01
                        ).grid(row = 0, column = 0, sticky = 'w')
            Radiobutton(Frame, text = self.Score1Name, variable = Score, value = '1', command = output01
                        ).grid(row = 0, column = 1, sticky = 'w')
            Radiobutton(Frame, text = self.Score2Name, variable = Score, value = '2', command = output01
                        ).grid(row = 0, column = 2, sticky = 'w')
            Radiobutton(Frame, text = self.Score3Name, variable = Score, value = '3', command = output01
                        ).grid(row = 0, column = 3, sticky = 'w')
            Radiobutton(Frame, text = self.Score4Name, variable = Score, value = '4', command = output01
                        ).grid(row = 0, column = 4, sticky = 'w')
            
            return score
            
        #----------------------column of 5 checkboxes. Returns list.---------------------
        def CheckBoxes(Frame, Column, Box):
        
            def output1():                
                print Check[0].get()
                Output[0] = Check[0].get()
                print Output


            def output2():             
                print Check[1].get()
                Output[1] = Check[1].get()
                print Output

            def output3():                
                print Check[2].get()
                Output[2] = Check[2].get()
                print Output

            def output4():              
                print Check[3].get()
                Output[3] = Check[3].get()
                print Output

            def output5():            
                print Check[4].get()
                Output[4] = Check[4].get()
                print Output
       
            Check = [StringVar(),StringVar(),StringVar(),StringVar(),StringVar()]

            Output = [' ', ' ', ' ' ,' ' ,' ']
        
            Checkbutton(Frame, text = Box[0], variable = Check[0], onvalue = Box[0], offvalue = "none", command = output1
                        ).grid(row = 1, column = Column, sticky = 'w')
            Checkbutton(Frame, text = Box[1], variable = Check[1], onvalue = Box[1], offvalue = "none", command = output2
                        ).grid(row = 2, column = Column, sticky = 'w')
            Checkbutton(Frame, text = Box[2], variable = Check[2], onvalue = Box[2], offvalue = "none", command = output3
                        ).grid(row = 3, column = Column, sticky = 'w')
            Checkbutton(Frame, text = Box[3], variable = Check[3], onvalue = Box[3], offvalue = "none", command = output4
                        ).grid(row = 4, column = Column, sticky = 'w')
            Checkbutton(Frame, text = Box[4], variable = Check[4], onvalue = Box[4], offvalue = "none", command = output5
                        ).grid(row = 5, column = Column, sticky = 'w')

            return Output
        #-------------------------places checkboxes and calls functions for checkboxes and other comment---------------
        def Refresh():

            self.Criteria0Output = [" "," "," "," "," "]
            self.Criteria1Output = [" "," "," "," "," "]
            self.Criteria2Output = [" "," "," "," "," "]
            self.Criteria3Output = [" "," "," "," "," "]
            self.Criteria4Output = [" "," "," "," "," "]
            self.Criteria5Output = [" "," "," "," "," "]
            
            self.Criteria0Radio = RadioButtons(self.Criteria0Frame)
            self.Criteria0Output[0] = [' ',' ',' ',' ',' ']
            self.Criteria0Output[1] = CheckBoxes(self.Criteria0Frame, 1, self.Criteria0Score1Input)
            self.Criteria0Output[2] = CheckBoxes(self.Criteria0Frame, 2, self.Criteria0Score2Input)
            self.Criteria0Output[3] = CheckBoxes(self.Criteria0Frame, 3, self.Criteria0Score3Input)
            self.Criteria0Output[4] = CheckBoxes(self.Criteria0Frame, 4, self.Criteria0Score4Input)
            #Other comment box
            Label(self.Criteria0Frame, text = self.OtherEntryName).grid(row = 7, column = 1, sticky = 'e')
            self.OtherCriteria0 = Entry(self.Criteria0Frame, width = 85)
            self.OtherCriteria0.grid(row = 7, column = 2, columnspan = 3, sticky = 'w')

            self.Criteria1Radio = RadioButtons(self.Criteria1Frame)
            self.Criteria1Output[0] = [' ',' ',' ',' ',' ']
            self.Criteria1Output[1] = CheckBoxes(self.Criteria1Frame, 1, self.Criteria1Score1Input)
            self.Criteria1Output[2] = CheckBoxes(self.Criteria1Frame, 2, self.Criteria1Score2Input)
            self.Criteria1Output[3] = CheckBoxes(self.Criteria1Frame, 3, self.Criteria1Score3Input)
            self.Criteria1Output[4] = CheckBoxes(self.Criteria1Frame, 4, self.Criteria1Score4Input)
            #Other comment box
            Label(self.Criteria1Frame, text = self.OtherEntryName).grid(row = 7, column = 1, sticky = 'e')
            self.OtherCriteria1 = Entry(self.Criteria1Frame, width = 85)
            self.OtherCriteria1.grid(row = 7, column = 2, columnspan = 3, sticky = 'w')            
            
            self.Criteria2Radio = RadioButtons(self.Criteria2Frame)
            self.Criteria2Output[0] = [' ',' ',' ',' ',' ']
            self.Criteria2Output[1] = CheckBoxes(self.Criteria2Frame, 1, self.Criteria2Score1Input)
            self.Criteria2Output[2] = CheckBoxes(self.Criteria2Frame, 2, self.Criteria2Score2Input)
            self.Criteria2Output[3] = CheckBoxes(self.Criteria2Frame, 3, self.Criteria2Score3Input)
            self.Criteria2Output[4] = CheckBoxes(self.Criteria2Frame, 4, self.Criteria2Score4Input)
            #Other comment box
            Label(self.Criteria2Frame, text = self.OtherEntryName).grid(row = 7, column = 1, sticky = 'e')
            self.OtherCriteria2 = Entry(self.Criteria2Frame, width = 85)
            self.OtherCriteria2.grid(row = 7, column = 2, columnspan = 3, sticky = 'w')
            
            self.Criteria3Radio = RadioButtons(self.Criteria3Frame)
            self.Criteria3Output[0] = [' ',' ',' ',' ',' ']
            self.Criteria3Output[1] = CheckBoxes(self.Criteria3Frame, 1, self.Criteria3Score1Input)
            self.Criteria3Output[2] = CheckBoxes(self.Criteria3Frame, 2, self.Criteria3Score2Input)
            self.Criteria3Output[3] = CheckBoxes(self.Criteria3Frame, 3, self.Criteria3Score3Input)
            self.Criteria3Output[4] = CheckBoxes(self.Criteria3Frame, 4, self.Criteria3Score4Input)
            #Other comment box
            Label(self.Criteria3Frame, text = self.OtherEntryName).grid(row = 7, column = 1, sticky = 'e')
            self.OtherCriteria3 = Entry(self.Criteria3Frame, width = 85)
            self.OtherCriteria3.grid(row = 7, column = 2, columnspan = 3, sticky = 'w')

            self.Criteria4Radio = RadioButtons(self.Criteria4Frame)
            self.Criteria4Output[0] = [' ',' ',' ',' ',' ']
            self.Criteria4Output[1] = CheckBoxes(self.Criteria4Frame, 1, self.Criteria4Score1Input)
            self.Criteria4Output[2] = CheckBoxes(self.Criteria4Frame, 2, self.Criteria4Score2Input)
            self.Criteria4Output[3] = CheckBoxes(self.Criteria4Frame, 3, self.Criteria4Score3Input)
            self.Criteria4Output[4] = CheckBoxes(self.Criteria4Frame, 4, self.Criteria4Score4Input)
            #Other comment box
            Label(self.Criteria4Frame, text = self.OtherEntryName).grid(row = 7, column = 1, sticky = 'e')
            self.OtherCriteria4 = Entry(self.Criteria4Frame, width = 85)
            self.OtherCriteria4.grid(row = 7, column = 2, columnspan = 3, sticky = 'w')

            self.Criteria5Radio = RadioButtons(self.Criteria5Frame)
            self.Criteria5Output[0] = [' ',' ',' ',' ',' ']
            self.Criteria5Output[1] = CheckBoxes(self.Criteria5Frame, 1, self.Criteria5Score1Input)
            self.Criteria5Output[2] = CheckBoxes(self.Criteria5Frame, 2, self.Criteria5Score2Input)
            self.Criteria5Output[3] = CheckBoxes(self.Criteria5Frame, 3, self.Criteria5Score3Input)
            self.Criteria5Output[4] = CheckBoxes(self.Criteria5Frame, 4, self.Criteria5Score4Input)
            #Other comment box
            Label(self.Criteria5Frame, text = self.OtherEntryName).grid(row = 7, column = 1, sticky = 'e')
            self.OtherCriteria5 = Entry(self.Criteria5Frame, width = 85)
            self.OtherCriteria5.grid(row = 7, column = 2, columnspan = 3, sticky = 'w')
         
        Refresh()

        #--------creates first line of each new file, i.e. the categories that will be output---------------
        def StartLine():
            files = open(self.FileName, 'a')
            files.close()
            files = open(self.FileName, 'r')
            self.FirstFive = files.read(5)
            files.close()
            if (self.FirstFive != "Agent"):            
                files = open(self.FileName, "a")
                files.write("Agent\tAssessment date\tCall number\tCall Type\tCall date and time\tCall duration\t"
                            "Call log\tOther notes\t"
                            "Hard skills positive comments\tHard skills points for improvement\t"
                            "Soft skills positive comments\tSoft skills points for improvement\t"
                            "resolution score\tresolution criteria\t\t\t\t\tother\t"
                            "accuracy score\taccuracy criteria\t\t\t\t\tother\t"
                            "attention to detail score\tattention to detail criteria\t\t\t\t\tother\t"
                            "clarity and tone score\tclarity and tone criteria\t\t\t\t\tother\t"
                            "engagement score\tengagement criteria\t\t\t\t\tother\t"
                            "focused call control score\tfocused call control criteria\t\t\t\t\tother\t\n")
                files.close()


        StartLine()
        
        #----------this function is called when "submit" button is pressed, all output to file is done here------
        def WriteToFile():
            print "Agent:", self.Agent.get()
            print "Assessment date:", self.AssessmentDate.get()
            print "Call #:", self.CallNumber.get()
            print "Call type:", self.CallType.get()
            print "Date / Time:", self.CallDate.get()
            print "Duration:", self.DurationOfCall.get()
            print "Call log:", self.CallLog.get('1.0','end')
            print "Other Notes:", self.OtherNotes.get('1.0', 'end')
            
            '''
            print "Criteria0"
            print "Score:", self.Criteria0Radio
            print "Other comment:", self.OtherCriteria0.get()
            print ""
            print "Criteria1"
            for i in self.Criteria1Output:
                print i
            print "Score:", self.Criteria1Radio
            print "Other comment:", self.OtherCriteria1.get()
            '''

            
            files = open(self.FileName, "a")
            #files.truncate()
            files.write(self.Agent.get())
            files.write("\t")
            files.write(self.AssessmentDate.get())
            files.write("\t")            
            files.write(self.CallNumber.get())
            files.write("\t")
            files.write(self.CallType.get())
            files.write("\t")
            files.write(self.CallDate.get())
            files.write("\t")
            files.write(self.DurationOfCall.get())
            files.write("\t")
            
            self.CallLogText = self.CallLog.get('1.0', 'end')
            self.CallLogOutput = []
            for i in self.CallLogText:
                if i != (("\n") or ("\t")):
                    self.CallLogOutput.append(i)
            self.CallLogOutput = ''.join(self.CallLogOutput)
            files.write(self.CallLogOutput)        
            files.write("\t")
            
            self.OtherNotesText = self.OtherNotes.get('1.0','end')
            self.OtherNotesOutput = []
            for i in self.OtherNotesText:
                if i != (("\n") or ("\t")):
                    self.OtherNotesOutput.append(i)
            self.OtherNotesOutput = ''.join(self.OtherNotesOutput)
            files.write(self.OtherNotesOutput)
            files.write("\t")
            
            files.write(self.HardPositiveComments.get())
            files.write("\t")
            files.write(self.HardNegativeComments.get())
            files.write("\t")
            files.write(self.SoftPositiveComments.get())
            files.write("\t")
            files.write(self.SoftNegativeComments.get())
            files.write("\t")

            def WriteData(Score, List, Other):
                files.write(str(Score[0]))
                files.write("\t")
                for i in List[Score[0]]:
                        files.write(i)
                        files.write("\t")
                files.write(Other.get())
                files.write("\t")                              
            
            WriteData(self.Criteria0Radio, self.Criteria0Output, self.OtherCriteria0)            
            WriteData(self.Criteria1Radio, self.Criteria1Output, self.OtherCriteria1)
            WriteData(self.Criteria2Radio, self.Criteria2Output, self.OtherCriteria2)
            WriteData(self.Criteria3Radio, self.Criteria3Output, self.OtherCriteria3)
            WriteData(self.Criteria4Radio, self.Criteria4Output, self.OtherCriteria4)
            WriteData(self.Criteria5Radio, self.Criteria5Output, self.OtherCriteria5)

            files.write("\n")            
            files.close()            
            Refresh()
            self.LastAgent = self.Agent.get()
            self.LastAssessmentDate = self.AssessmentDate.get()
            self.CallNumberStart = self.CallNumber.get()
            self.CallNumberStart = int(self.CallNumber.get())
            
            TopTextBoxes()
            
            self.Agent.insert(0, self.LastAgent)
            self.AssessmentDate.insert(0, self.LastAssessmentDate)
            self.CallNumberStart = self.CallNumberStart + 1
            self.CallNumber.insert(1,str(self.CallNumberStart))
                    
        self.SubmitButton = Button(master, text = "Submit", command = WriteToFile)
        self.SubmitButton.grid(row = 5, column = 0, columnspan = 2)              
        
        #--------"name of file" code here-------------
        def NewFile():
            self.FileName = self.FileNameEntry.get()
            StartLine()
            CurrentFile()                    
        
        Label(self.TopFrame, text = "Name of file").grid(row = 0, column = 6, sticky = 'e')
        self.FileNameEntry = Entry(self.TopFrame, width = 24)
        self.FileNameEntry.grid(row = 0, column = 7)
        self.FileNameEntry.insert(0, "call_review.txt")        

        self.FileNameButton = Button(self.TopFrame, text = "Use file", command = NewFile)
        self.FileNameButton.grid(row = 0, column = 8)
        
        Label(self.TopFrame, text = "Current file:").grid(row = 1, column = 6, sticky = 'e')
        Label(self.TopFrame, text = self.FileName).grid(row = 1, column = 7, sticky = 'w')                        
        
def main():
    root = Tk()
    performance_analysis = PerformanceAnalysis(root)
    root.mainloop() 

if __name__ == "__main__": main()