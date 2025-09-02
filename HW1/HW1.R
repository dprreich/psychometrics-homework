## Anything Following the pound sign is a comment in R
# Helpful Hint:  you can hit Ctrl-Enter to run the current line of code.



# the first time you install a package, you do so by removing the pound sign below and running the line. you'll want both the below.
#install.packages("psych")
#install.packages("lessR")


#While you only install a package once, you must load it each time you run R.
library("psych")
library("lessR")


rm(list=ls())   # clear out old junk, if any. 

#read in data. replace the below with the folder on your computer. note the slashes are the opposite from windows explorer!!! 
hw1Data <- read.csv("Reverse.csv")
#congrats you created an object that should appear in your R Studio workspace in the top left.


#  1. Compute the descriptive statistics for all variables using the 'summary' command and specifying the dataframe name
summary(hw1Data)

# 2. Compute the correlations among all variables using the 'cor' command
cor(hw1Data)
# correlated with all other variables and Pos4 is negative, indicating that it should be reverse coded

# 3. Recode the item that is out of whack with the others.  I'll give you the code to this one.
newData <- lessR::recode(c(Pos4), old=1:5, new=5:1, data=hw1Data) 


# 4. rerun the correlation among all variables.  I'll give you the code again.
cor(hw1Data) 
# hey, nothing happened!
# used hw1Data instead of the newData

# 5. try it again with the correct object this time.
cor(newData) 

# 6. look at the coefficient alpha in both hw1Data and newData.
alpha(newData)
alpha(hw1Data)

# alpha improves dramatically when Pos4 is reverse coded.

#Clean up
rm(list=ls())   


