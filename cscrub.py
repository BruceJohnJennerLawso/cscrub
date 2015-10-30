# -*- coding: utf-8 -*-
## cscrub.py ###################################################################
## scrubs characters from text files so bookr ##################################
## displays things properly ####################################################
################################################################################
from sys import argv

if(__name__=="__main__"):
	script, filename = argv

	fileTarget = open(filename, 'r')	
	
	fileContents = fileTarget.read()
	fileContents = fileContents.replace("’", "'")
	fileContents = fileContents.replace("“", '"')
	fileContents = fileContents.replace("”", '"')
	fileContents = fileContents.replace("—", '-')	
	fileContents = fileContents.replace("è", 'e')
	fileContents = fileContents.replace("é", 'e')
	fileContents = fileContents.replace("‘", "'")	
	## think there must be a better option available than this, but I havent
	## tested bookrs support for non-english special characters
	
	## fixing the double quotes is already a huge boost in readability
	## as far as I am concerned	
	fileContents = fileContents.replace("…", '...')	
	
	fileTarget.close()
	
	fileTarget = open(filename, 'w')
	fileTarget.write(fileContents)
	fileTarget.close()
