'''
Created on Oct 11, 2014

@author: marc
'''

#########################
#
#    Homework 5 Problem 3
#
#########################

'''
Generates a histogram of all words in all files that have "spike" in them.
Sorts by number of instances, and displays percentage.
Also calculates the average number of words per file
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

TotalWords = len(WordList) # saves length of the list of all words

# Takes in the list of words, and returns a list of lists.
# Each element of the smaller list has two components: the word, and the number of times that word exists.
SortedWords = collections.Counter(WordList).most_common(100000)

for i in SortedWords: # loops through the list of lists
    
    # Calculates the percentage each word appears in all the files
    percentage = (float(i[1]) / float(TotalWords)) * 100

    percent = "%" # so that the "%" symbol can be printed
    
    # prints histogram. i[0] is the first element of the two part list, i.e. the word
    # i[1] is the second element, the number of times this word appeared
    # the percentage that this word appeared is also displayed
    print "%-25s\t%s\t%s %s" % (i[0], i[1], percentage, percent)


end = time.asctime(time.localtime(time.time())) # stores the date and time the script ended

print "started at", start # prints when the job started
print "ended at", end # prints when the job finished

WordsPerFile = float(TotalWords) / float(FileNumber) # calculates number of words per file

print "A total of %d words occured in %d files: the average number of words per file is %f" % (TotalWords, FileNumber, WordsPerFile)

f.close()