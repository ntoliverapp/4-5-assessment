# Directions
# Read over the code in process.py file and add comments explaining what you think each line is doing. Recall that in Python, you can specify a comment using an octothorpe (#).

# Change the script to display sales info for Monday instead of Tuesday.

log_file = open("um-server-01.txt") #this line is opening the um-server-01 text file so that the text file can be ran in python


def sales_reports(log_file): # this line is defining a function called 'sales_reports' and passing through a parameter called 'log_file' as lines of text from 'um-server-01'
    for line in log_file: #this is running the for loop command; looping the iterable 'line' through each line of text in 'log file'
        line = line.rstrip() # this line returns a right trim version of the string text
        day = line[0:3] # this lin eis describing the 'day' variable
        if day == "Tue": #this line is initializing an if statement boolean about if the day is Tuesday 'Tue'
            print(line) # this line is indented under the if statement, it will print out the lines of texts for 'Tue' if the statement above is true


sales_reports(log_file) #this is the sales_report function invoked
