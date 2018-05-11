
setwd ("S:\\TIP\\Research\\Surveys and Data\\R_folder")
Kids = read.csv ("tree2.csv")

library(data.tree)
library (treemap)
library (tidyr)
library (plyr)


test$pathString <- with(Kids, paste("Kids", Sex, Autism, Count, sep="/"))
plot(tree)

test$pathString <- with(Kids, paste("Kids", Autism, Sex, Count, sep="/"))
plot(tree)




test$pathString <- with(Kids, paste("Kids", Sex, Autism, Count, sep="/"))
(tree <- as.Node(test)) 
SetGraphStyle(tree, rankdir = "TB")
SetEdgeStyle(tree, arrowhead = "vee", color = "grey35", penwidth = 2)
SetNodeStyle(tree, style = "filled,rounded", shape = "box", fillcolor = "Lightblue", 
            fontname = "helvetica", tooltip = GetDefaultTooltip)
plot(tree)

test$pathString <- with(Kids, paste("Kids", Autism, Sex, Count, sep="/"))
(tree <- as.Node(test)) 
SetGraphStyle(tree, rankdir = "TB")
SetEdgeStyle(tree, arrowhead = "vee", color = "grey35", penwidth = 2)
SetNodeStyle(tree, style = "filled,rounded", shape = "box", fillcolor = "Lightblue", 
            fontname = "helvetica", tooltip = GetDefaultTooltip)
plot(tree)

