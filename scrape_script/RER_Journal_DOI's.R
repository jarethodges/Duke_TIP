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

page1 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/78/1")))
page2 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/78/2")))
page3 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/78/3")))
page4 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/78/4")))
page5 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/79/1")))
page6 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/79/2")))
page7 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/79/3")))
page8 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/79/4")))
page9 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/80/1")))
page10 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/80/2")))
page11 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/80/3")))
page12 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/80/4")))
page13 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/81/1")))
page14 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/81/2")))
page15 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/81/3")))
page16 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/81/4")))
page17 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/82/1")))
page18 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/82/2")))
page19 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/82/3")))
page20 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/82/4")))
page21 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/83/1")))
page22 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/83/2")))
page23 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/83/3")))
page24 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/83/4")))
page25 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/84/1")))
page26 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/84/2")))
page27 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/84/3")))
page28 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/84/4")))
page29 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/85/1")))
page30 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/85/2")))
page31 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/85/3")))
page32 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/85/4")))
page33 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/86/1")))
page34 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/86/2")))
page35 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/86/3")))
page36 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/86/4")))
page37 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/87/1")))
page38 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/87/2")))
page39 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/87/3")))
page40 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/87/4")))
page41 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/87/5")))
page42 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/87/6")))
page43 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/88/1")))
page44 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/88/2")))
page45 <- as.data.frame(links(read_html("http://journals.sagepub.com/toc/rera/88/3")))


library(dplyr)


ER_BASE <- bind_rows(page1,page2,page3,page4,page5,page6,page7,page8,page9,
page10,page11,page12,page13,page14,page15,page16,page17,page18,page19,
page20,page21,page22,page23,page24,page25,page26,page27,page28,page29,
page30,page31,page32,page33,page34,page35,page36,page37,page38,page39,
page40,page41,page42,page43,page44,page45)

write.csv (ER_BASE, file = "RERA.csv")

View (ER_BASE)


