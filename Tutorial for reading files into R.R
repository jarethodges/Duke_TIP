Reading csv files into R
### The data used is the sample dataset "simul_full.csv"###

#The first step is to establish the working drive where the files are located
Refer to the "Tutorial for Working Drive" in the "R_foler"#

	setwd ("S:\\TIP\\Research\\Surveys and Data\\R_folder")

#The code below reads the file simul_full.csv into a data frame 
that it creates called MyData. 
header=TRUE specifies that this data includes a header row 
sep=”,” specifies that the data is separated by commas.

Because we have already set the working drive, 
we don't need to include the file path (the S:\\)

The format for reading CSV: read.csv(file, header = TRUE, sep = ",", quote = "\"",
dec = ".", fill = TRUE, comment.char = "", …)

quote: the set of quoting characters. To disable quoting altogether, use quote = ""
dec: the character used in the file for decimal points
fill: logical. If TRUE then in case the rows have unequal length, blank fields are implicitly added.
comment.char: character-a character vector of length one containing a single character 
or an empty string. Use "" to turn off the interpretation of comments altogether.#


	Mydata <- read.csv(file="simul_full.csv",head=TRUE,sep=",")

#The summary command provides a quick diagnostic summary#
	
	summary (Mydata)

#The View command allows you to view the Mydata. Note that View is capitalized.#

	View (Mydata)

