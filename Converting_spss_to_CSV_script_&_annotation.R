##the first step is to establish the working drive where the
files that are being converted are located and then where the
converted files will be created.##

setwd ("S:\\TIP\\Research\\Surveys and Data\\R_folder")


##the package that will be used to convert is the 'memisc' package.
R cannot read an spss file in its base configuration so a package is 
needed to do that. The "install.packages" command will bring up a list 
of servers where the package can be installed from. Which server you 
select is not important, but I like choosing the 0-cloud because
it is at the top of the list##

install.packages ("memisc")


##the next command is the library command. This tell R that you 
want to use that package and its associated commands. In essence, 
it loads the program##

library (memisc)

##this is the data reading command. It should be noted that the 
'spss.system.file' is associated with .sav spss files and the
'spss.portable.file' is associated with .por spss files. This command
converts the dataset into an an array called 'data' in R (you can 
name your array anything, but I prefer calling my data arrays 'data').##

data <- as.data.set(spss.system.file('01_SAT_data.sav'))


##this command converts the data array into a .csv file. You can 
write other files using different write commands but a .csv is akin
to a universal file that almost any program can read.##

write.csv (data, file ="SAT.csv")

##this command lets you look at your array. In the case of the SAT.csv 
file, it is nearly a quarter of a gigabyte so it will take some time
to load##

View (data)


##the following are two other data files that were converted##


data <- as.data.set(spss.system.file('02_ACT_data.sav'))

write.csv (data, file ="ACT.csv")


data <- as.data.set(spss.system.file('03_EXPLORE_data.sav'))

write.csv (data, file ="EXPLORE.csv")
