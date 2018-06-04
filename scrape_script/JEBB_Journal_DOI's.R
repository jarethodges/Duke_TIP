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

page1 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/33/1"))))
page2 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/33/2"))))
page3 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/33/3"))))
page4 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/33/4"))))
page5 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/34/1"))))
page6 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/34/2"))))
page7 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/34/3"))))
page8 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/34/4"))))
page9 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/35/1"))))
page10 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/35/2"))))
page11 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/35/3"))))
page12 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/35/4"))))
page13 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/35/5"))))
page14 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/35/6"))))
page15 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/36/1"))))
page16 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/36/2"))))
page17 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/36/3"))))
page18 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/36/4"))))
page19 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/36/5"))))
page20 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/36/6"))))
page21 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/37/1"))))
page22 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/37/2"))))
page23 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/37/3"))))
page24 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/37/4"))))
page25 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/37/5"))))
page26 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/37/6"))))
page27 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/38/1"))))
page28 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/38/2"))))
page29 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/38/3"))))
page30 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/38/4"))))
page31 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/38/5"))))
page32 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/38/6"))))
page33 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/39/1"))))
page34 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/39/2"))))
page35 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/39/3"))))
page36 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/39/4"))))
page37 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/39/5"))))
page38 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/39/6"))))
page39 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/40/1"))))
page40 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/40/2"))))
page41 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/40/3"))))
page42 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/40/4"))))
page43 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/40/5"))))
page44 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/40/6"))))
page45 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/41/1"))))
page46 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/41/2"))))
page47 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/41/3"))))
page48 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/41/4"))))
page49 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/41/5"))))
page50 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/41/6"))))
page51 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/42/1"))))
page52 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/42/2"))))
page53 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/42/3"))))
page54 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/42/4"))))
page55 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/42/5"))))
page56 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/42/6"))))
page57 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/43/1"))))
page58 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/43/2"))))
page59 <- unname(as.data.frame(links(read_html("http://journals.sagepub.com/toc/jebb/43/3"))))

library(dplyr)

ER_BASE <- bind_cols(page1,page2,page3,page4,page5,page6,page7,page8,page9,
page10,page11,page12,page13,page14,page15,page16,page17,page18,page19,
page20,page21,page22,page23,page24,page25,page26,page27,page28,page29,
page30,page31,page32,page33,page34,page35,page36,page37,page38,page39,
page40,page41,page42,page43,page44,page45,page46,page47,page48,page49,
page50,page51,page52,page53,page54,page55,page56,page57,page58,page59)

write.csv (ER_BASE, file = "JEBB.csv")

View (ER_BASE)


