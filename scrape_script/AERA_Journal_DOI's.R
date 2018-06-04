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

page1 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/45/1"))))
page2 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/45/2"))))
page3 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/45/3"))))
page4 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/45/4"))))
page5 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/46/1"))))
page6 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/46/2"))))
page7 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/46/3"))))
page8 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/46/4"))))
page9 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/47/1"))))
page10 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/47/2"))))
page11 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/47/3"))))
page12 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/47/4"))))
page13 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/48/1"))))
page14 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/48/2"))))
page15 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/48/3"))))
page16 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/48/4"))))
page17 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/48/5"))))
page18 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/48/6"))))
page19 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/49/1"))))
page20 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/49/2"))))
page21 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/49/3"))))
page22 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/49/4"))))
page23 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/49/5"))))
page24 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/49/6"))))
page25 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/50/1"))))
page26 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/50/2"))))
page27 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/50/3"))))
page28 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/50/4"))))
page29 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/50/5"))))
page30 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/50/6"))))
page31 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/51/1"))))
page32 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/51/2"))))
page33 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/51/3"))))
page34 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/51/4"))))
page35 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/51/5"))))
page36 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/51/6"))))
page37 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/52/1"))))
page38 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/52/2"))))
page39 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/52/3"))))
page40 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/52/4"))))
page41 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/52/5"))))
page42 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/52/6"))))
page43 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/53/1"))))
page44 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/53/2"))))
page45 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/53/3"))))
page46 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/53/4"))))
page47 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/53/5"))))
page48 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/53/6"))))
page49 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/54/1"))))
page50 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/54/2"))))
page51 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/54/3"))))
page52 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/54/4"))))
page53 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/54/5"))))
page54 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/54/6"))))
page55 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/55/1"))))
page56 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/55/2"))))
page57 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/aer/55/3"))))


library(dplyr)

ER_BASE <- bind_cols(page1,page2,page3,page4,page5,page6,page7,page8,page9,
page10,page11,page12,page13,page14,page15,page16,page17,page18,page19,
page20,page21,page22,page23,page24,page25,page26,page27,page28,page29,
page30,page31,page32,page33,page34,page35,page36,page37,page38,page39,
page40,page41,page42,page43,page44,page45,page46,page47,page48,page49,
page50,page51,page52,page53,page54,page55,page56,page57)

write.csv (ER_BASE, file = "AERA.csv")

View (ER_BASE)


