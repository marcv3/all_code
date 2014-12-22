'''
Created on Oct 12, 2014

@author: marc
'''
#########################
#
#    Homework 5 Problem 4
#
#########################

'''
Generates a histogram of all two word sequences in all files that have "spike" in them.
Sorts by number of instances, and displays percentage.
Also calculates the average number of two word sequences per file
'''

import sys # imports system specific parameters and functions, so we can use command line arguments
import time # imports time access and conversions library. This is so we can time how long the program ran
import re # imports regular expression operations library
import collections # imports high-performance container datatypes library

start = time.asctime(time.localtime(time.time())) # stores the time and date the project started in a formatted string

f = open(sys.argv[1],'r') # imports file of filenames as a list

stri = ' ' # This space will be used to separate strings
bigstring = ' ' # all words will be concatenated into this variable
FileNumber = 0 # will count number of files
for k in f: # loops through filenames
    name = k.rstrip() # strips off newline character from filename
    FileNumber = FileNumber + 1 # counts number of files
    g = open(name).read().lower() # imports entire file, makes all letters lowercase
    a = (bigstring,g) # bigstring is all past words concatenated, g is the newest file to be added.
    bigstring = stri.join(a) # contents of file added to overall string. These two strings are separated by a space

# uses regular expressions to separate string into a list of words.
#'\w+' takes combinations of the set [a-zA-Z0-9_] and makes them a word
WordList = re.findall('\w+', bigstring)

Sequence = [] # this will be a list of all two word sequences

# oldschool for loop that loops from 0 to the length of the list of words
for j in range(0,len(WordList)): 
    
    # appends a space to the end of the list of words so the index does not exceed elements in the list
    WordList.append(' ') 
    
    # assigns each word, a space, and the next word to the next element of "Sequence"
    Sequence.append(WordList[j] + ' ' + WordList[j + 1])

TotalWords = len(Sequence) # Number of two word sequences

# Takes in the list of word sequences, and returns a list of lists.
# Each element of the smaller list has two components: the word sequence, and the number of times that word sequence exists.
SortedWords = collections.Counter(Sequence).most_common(100000)

for i in SortedWords:

    # Calculates the percentage each word sequence appears in all the files
    percentage = (float(i[1]) / float(TotalWords)) * 100

    percent = "%" # so that the "%" symbol can be printed

    # prints histogram. i[0] is the first element of the two part list, i.e. the word sequence
    # i[1] is the second element, the number of times this word sequence appeared
    # the percentage that this word sequence appeared is also displayed
    print "%-25s\t%s\t%s %s" % (i[0], i[1], percentage, percent)


end = time.asctime(time.localtime(time.time())) # stores the date and time the script ended

print "started at", start # prints when the job started
print "ended at", end # prints when the job finished

WordsPerFile = float(TotalWords) / float(FileNumber) # calculates number of words per file

print "A total of %d two word sequences occured in %d files: the average number of two word sequences per file is %f" % (TotalWords, FileNumber, WordsPerFile)

f.close()