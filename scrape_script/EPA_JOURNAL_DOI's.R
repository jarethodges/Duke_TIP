setwd ("S:\\TIP\\Research\\Surveys and Data\\R_folder")

install.packages("XML")
library(XML)

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

page1 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/30/1"))))
page2 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/30/2"))))
page3 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/30/3"))))
page4 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/30/4"))))
page5 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/31/1"))))
page6 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/31/2"))))
page7 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/31/3"))))
page8 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/31/4"))))
page9 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/32/1"))))
page10 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/32/2"))))
page11 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/32/3"))))
page12 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/32/4"))))
page13 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/33/1"))))
page14 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/33/2"))))
page15 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/33/3"))))
page16 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/33/4"))))
page17 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/34/1"))))
page18 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/34/2"))))
page19 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/34/3"))))
page20 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/34/4"))))
page21 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/35/1"))))
page22 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/35/2"))))
page23 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/35/3"))))
page24 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/35/4"))))
page25 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/36/1"))))
page26 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/36/2"))))
page27 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/36/3"))))
page28 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/36/4"))))
page29 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/37/1"))))
page30 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/37/2"))))
page31 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/37/3"))))
page32 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/37/4"))))
page33 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/38/1"))))
page34 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/38/2"))))
page35 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/38/3"))))
page36 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/38/4"))))
page37 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/39/1"))))
page38 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/39/2"))))
page39 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/39/3"))))
page40 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/39/4"))))
page41 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/40/1"))))
page42 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/epa/40/2"))))


View (page1)

library(dplyr)

ER <- bind_rows(page1, page2)


ER_BASE <- bind_rows(page1,page2,page3,page4,page5,page6,page7,page8,page9,
page10,page11,page12,page13,page14,page15,page16,page17,page18,page19,
page20,page21,page22,page23,page24,page25,page26,page27,page28,page29,
page30,page31,page32,page33,page34,page35,page36,page37,page38,page39,
page40,page41,page42)

write.csv (ER_BASE, file = "EEPA.csv")

View (ER_BASE)


