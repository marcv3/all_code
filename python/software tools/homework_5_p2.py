'''
Created on Oct 10, 2014

@author: marc
'''
#########################
#
#    Homework 5 Problem 2
#
#########################

'''
Counts the number of files that have the word "spike" in them.
Takes one argument, which is a file with a filename on each line.
This program also outputs a file with filenames that contain "spike"
'''


import sys # imports system specific parameters and functions, so we can use command line arguments
import time # imports time access and conversions library. This is so we can time how long the program ran

start = time.asctime(time.localtime(time.time())) # stores the time and date the project started in a formatted string

'''
print 'number of arguments:', len(sys.argv), 'arguments.'
print 'Argument List:', str(sys.argv)
print "argument 1", sys.argv[1]
'''

f = open(sys.argv[1],'r') # imports file of filenames as a list
#f.readline()
#f.read()
count = 0 # This variable will count the number of files with "spike"
for k in f: # loops through file names
    name = k.rstrip() # this will remove the newline character from each line

    g = open(name,'r') # opens file. Takes in filename with newline character stripped off
    cont = 0 # this will be used to exit the loop once a single instance of "spike" is found
    for i in g: # loops through each line of the current file
        words = i.split() # splits each line into a list of words (delimited by spaces)   
        
        for j in words: # loops through each word
            word = j 
            word = word.rstrip('.,!?;:\\/\(\)[]{}`~-_\'<>+=*&^%$#@') # strips punctuation from word

            if 'spike' in word: # evaluates true if spike is in the word, i.e. "spiker" and "spiked" will be true
                count = count + 1 # counts the file containing "spike"
                h = open('file_names_with_spike.txt', 'a') # opens output file, will append to file
                h.write(name) # appends name of file containing spike
                h.write('\n') # and a newline character
                h.close()

                cont = 1 # this will allow us to exit the loop once a single instance of "spike" is found
                break # exit for loop
        if cont == 1: # if "spike" is found, exit this for loop as well
            break

localtime = time.asctime(time.localtime(time.time())) # saves time when script is finished
end = localtime
print "started at", start # print start time
print "ended at", end # print end time
print "A total of %d files contained the word 'spike'" % (count) # prints number of files with "spike"
    
g.close() # close individual files
f.close() # close file of filenames