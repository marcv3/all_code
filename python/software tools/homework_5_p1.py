'''
Created on Oct 12, 2014

@author: marc
'''
#########################
#
#    Homework 5 Problem 1
#
#########################

'''
Prints all filenames with path in current directory tree
'''

import os # Miscellaneous operating system interfaces library. 
import fnmatch # Unix filename pattern matching
import time

start = time.asctime(time.localtime(time.time()))

root = os.curdir # set the root variable to the current directory

for path, dirs, files in os.walk(os.path.abspath(root)): # iterate through directories and files
    for filename in fnmatch.filter(files, '*.txt'): # iterate through files in the directory ending in .txt
        print os.path.join(path, filename) # print filename with the path included
        
end = time.asctime(time.localtime(time.time()))
print start
print end
