##this is an example of how to create a simple violin plot. The
data being used is the trimmed SAT data file. The first step is
to load the required package and dataset. The dataset should be 
located in the R folder with this script##

library (ggplot2)



setwd ("S:\\TIP\\Research\\Surveys and Data\\R_folder")
data <- read.csv (file = "trimmed_SAT.csv")

View (data)


## Tilt_u is a created variable. The tilt variable in the data set
is the absolute value of tilt. This version is not the absolute 
value##

Tilt_u <- data_SAT$satmath - data_SAT$satverb

##Finally, here is the format of a ggplot command. The first step is 
to set the data paramters using ggplot (). In this case, I tell it that
the data being used is my data file. The aes command is used to set 
graph options. In this basic case, I am telling it that I want my X 
axis to be Sex and my Y axis to be Tilt_u. You can use the X= and Y= 
option, but ggplots assumes that the first column variable is the X 
axis and the secound is the Y axis. Finally, I tell it to display the
data using a violin plot. This violin plot has not further options as
demonstrated by the empty (). 

ggplot (data = data, aes (sex, Tilt_u)) + geom_violin()
