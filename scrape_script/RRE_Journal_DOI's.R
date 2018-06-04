setwd ("S:\\TIP\\Research\\Surveys and Data\\R_folder")

install.packages("XML")
library(XML)
library(rvest)
library(purrr)
library(dplyr)

links <- function(URL) 
{
    getLinks <- function() {
        links <- character()
        list(a = function(node, ...) {
                links <<- c(links, xmlGetAttr(node, "href"))
                node
             },
             links = function() links)
        }
    h1 <- getLinks()
    htmlTreeParse(URL, handlers = h1)
    h1$links()
}

page1 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rrea/32/1")))
page2 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rrea/33/1")))
page3 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rrea/34/1")))
page4 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rrea/35/1")))
page5 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rrea/36/1")))
page6 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rrea/37/1")))
page7 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rrea/38/1")))
page8 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rrea/39/1")))
page9 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rrea/40/1")))
page10 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rrea/41/1")))
page11 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rrea/42/1")))
library(dplyr)


ER_BASE <- bind_rows(page1,page2,page3,page4,page5,page6,page7,page8,page9,
page10,page11)

write.csv (ER_BASE, file = "RRE.csv")

View (ER_BASE)


