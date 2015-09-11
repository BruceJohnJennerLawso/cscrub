## cscrub.py ###################################################################
## scrubs characters from text files so bookr ##################################
## displays things properly ####################################################
################################################################################
from sys import argv

if(__name__=="__main__"):
	script, filename = argv

	fileTarget = open(filename, 'r')	
	
	fileContents = fileTarget.read()
	fileContents.replace("’", "'")
	fileContents.replace("“", """"""")
	fileContents.replace("”", """"""")
	
	
	fileTarget.close()
	
	fileTarget = open(filename, 'w')
	fileTarget.write(fileContents)
	fileTarget.close()
