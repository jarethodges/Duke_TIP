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

page1 <- links(read_html("http://journals.sagepub.com/toc/edra/37/1"))
page2 <- links(read_html("http://journals.sagepub.com/toc/edra/37/2"))
page3 <- links(read_html("http://journals.sagepub.com/toc/edra/37/3"))
page4 <- links(read_html("http://journals.sagepub.com/toc/edra/37/4"))
page5 <- links(read_html("http://journals.sagepub.com/toc/edra/37/5"))
page6 <- links(read_html("http://journals.sagepub.com/toc/edra/37/6"))
page7 <- links(read_html("http://journals.sagepub.com/toc/edra/37/7"))
page8 <- links(read_html("http://journals.sagepub.com/toc/edra/37/8"))
page9 <- links(read_html("http://journals.sagepub.com/toc/edra/37/9"))
page10 <- links(read_html("http://journals.sagepub.com/toc/edra/38/1"))
page11 <- links(read_html("http://journals.sagepub.com/toc/edra/38/2"))
page12 <- links(read_html("http://journals.sagepub.com/toc/edra/38/3"))
page13 <- links(read_html("http://journals.sagepub.com/toc/edra/38/4"))
page14 <- links(read_html("http://journals.sagepub.com/toc/edra/38/5"))
page15 <- links(read_html("http://journals.sagepub.com/toc/edra/38/6"))
page16 <- links(read_html("http://journals.sagepub.com/toc/edra/38/7"))
page17 <- links(read_html("http://journals.sagepub.com/toc/edra/38/8"))
page18 <- links(read_html("http://journals.sagepub.com/toc/edra/38/9"))
page19 <- links(read_html("http://journals.sagepub.com/toc/edra/39/1"))
page20 <- links(read_html("http://journals.sagepub.com/toc/edra/39/2"))
page21 <- links(read_html("http://journals.sagepub.com/toc/edra/39/3"))
page22 <- links(read_html("http://journals.sagepub.com/toc/edra/39/4"))
page23 <- links(read_html("http://journals.sagepub.com/toc/edra/39/5"))
page24 <- links(read_html("http://journals.sagepub.com/toc/edra/39/6"))
page25 <- links(read_html("http://journals.sagepub.com/toc/edra/39/7"))
page26 <- links(read_html("http://journals.sagepub.com/toc/edra/39/8"))
page27 <- links(read_html("http://journals.sagepub.com/toc/edra/39/9"))
page28 <- links(read_html("http://journals.sagepub.com/toc/edra/40/1"))
page29 <- links(read_html("http://journals.sagepub.com/toc/edra/40/2"))
page30 <- links(read_html("http://journals.sagepub.com/toc/edra/40/3"))
page31 <- links(read_html("http://journals.sagepub.com/toc/edra/40/4"))
page32 <- links(read_html("http://journals.sagepub.com/toc/edra/40/5"))
page33 <- links(read_html("http://journals.sagepub.com/toc/edra/40/6"))
page34 <- links(read_html("http://journals.sagepub.com/toc/edra/40/7"))
page35 <- links(read_html("http://journals.sagepub.com/toc/edra/40/8"))
page36 <- links(read_html("http://journals.sagepub.com/toc/edra/40/9"))
page37 <- links(read_html("http://journals.sagepub.com/toc/edra/41/1"))
page38 <- links(read_html("http://journals.sagepub.com/toc/edra/41/2"))
page39 <- links(read_html("http://journals.sagepub.com/toc/edra/41/3"))
page40 <- links(read_html("http://journals.sagepub.com/toc/edra/41/4"))
page41 <- links(read_html("http://journals.sagepub.com/toc/edra/41/5"))
page42 <- links(read_html("http://journals.sagepub.com/toc/edra/41/6"))
page43 <- links(read_html("http://journals.sagepub.com/toc/edra/41/7"))
page44 <- links(read_html("http://journals.sagepub.com/toc/edra/41/8"))
page45 <- links(read_html("http://journals.sagepub.com/toc/edra/41/9"))
page46 <- links(read_html("http://journals.sagepub.com/toc/edra/42/1"))
page47 <- links(read_html("http://journals.sagepub.com/toc/edra/42/2"))
page48 <- links(read_html("http://journals.sagepub.com/toc/edra/42/3"))
page49 <- links(read_html("http://journals.sagepub.com/toc/edra/42/4"))
page50 <- links(read_html("http://journals.sagepub.com/toc/edra/42/5"))
page51 <- links(read_html("http://journals.sagepub.com/toc/edra/42/6"))
page52 <- links(read_html("http://journals.sagepub.com/toc/edra/42/7"))
page53 <- links(read_html("http://journals.sagepub.com/toc/edra/42/8"))
page54 <- links(read_html("http://journals.sagepub.com/toc/edra/42/9"))
page55 <- links(read_html("http://journals.sagepub.com/toc/edra/43/1"))
page56 <- links(read_html("http://journals.sagepub.com/toc/edra/43/2"))
page57 <- links(read_html("http://journals.sagepub.com/toc/edra/43/3"))
page58 <- links(read_html("http://journals.sagepub.com/toc/edra/43/4"))
page59 <- links(read_html("http://journals.sagepub.com/toc/edra/43/5"))
page60 <- links(read_html("http://journals.sagepub.com/toc/edra/43/6"))
page61 <- links(read_html("http://journals.sagepub.com/toc/edra/43/7"))
page62 <- links(read_html("http://journals.sagepub.com/toc/edra/43/8"))
page63 <- links(read_html("http://journals.sagepub.com/toc/edra/43/9"))
page64 <- links(read_html("http://journals.sagepub.com/toc/edra/44/1"))
page65 <- links(read_html("http://journals.sagepub.com/toc/edra/44/2"))
page66 <- links(read_html("http://journals.sagepub.com/toc/edra/44/3"))
page67 <- links(read_html("http://journals.sagepub.com/toc/edra/44/4"))
page68 <- links(read_html("http://journals.sagepub.com/toc/edra/44/5"))
page69 <- links(read_html("http://journals.sagepub.com/toc/edra/44/6"))
page70 <- links(read_html("http://journals.sagepub.com/toc/edra/44/7"))
page71 <- links(read_html("http://journals.sagepub.com/toc/edra/44/8"))
page72 <- links(read_html("http://journals.sagepub.com/toc/edra/44/9"))
page73 <- links(read_html("http://journals.sagepub.com/toc/edra/45/1"))
page74 <- links(read_html("http://journals.sagepub.com/toc/edra/45/2"))
page75 <- links(read_html("http://journals.sagepub.com/toc/edra/45/3"))
page76 <- links(read_html("http://journals.sagepub.com/toc/edra/45/4"))
page77 <- links(read_html("http://journals.sagepub.com/toc/edra/45/5"))
page78 <- links(read_html("http://journals.sagepub.com/toc/edra/45/6"))
page79 <- links(read_html("http://journals.sagepub.com/toc/edra/45/7"))
page80 <- links(read_html("http://journals.sagepub.com/toc/edra/45/8"))
page81 <- links(read_html("http://journals.sagepub.com/toc/edra/45/9"))
page82 <- links(read_html("http://journals.sagepub.com/toc/edra/46/1"))
page83 <- links(read_html("http://journals.sagepub.com/toc/edra/46/2"))
page84 <- links(read_html("http://journals.sagepub.com/toc/edra/46/3"))
page85 <- links(read_html("http://journals.sagepub.com/toc/edra/46/4"))
page86 <- links(read_html("http://journals.sagepub.com/toc/edra/46/5"))
page87 <- links(read_html("http://journals.sagepub.com/toc/edra/46/6"))
page88 <- links(read_html("http://journals.sagepub.com/toc/edra/46/7"))
page89 <- links(read_html("http://journals.sagepub.com/toc/edra/46/8"))
page90 <- links(read_html("http://journals.sagepub.com/toc/edra/46/9"))
page91 <- links(read_html("http://journals.sagepub.com/toc/edra/47/1"))
page92 <- links(read_html("http://journals.sagepub.com/toc/edra/47/2"))
page93 <- links(read_html("http://journals.sagepub.com/toc/edra/47/3"))
page94 <- links(read_html("http://journals.sagepub.com/toc/edra/47/4"))


ER_BASE <- bindrows (page1,
page2,
page3,
page4,
page5,
page6,
page7,
page8,
page9,
page10,
page11,
page12,
page13,
page14,
page15,
page16,
page17,
page18,
page19,
page20,
page21,
page22,
page23,
page24,
page25,
page26,
page27,
page28,
page29,
page30,
page31,
page32,
page33,
page34,
page35,
page36,
page37,
page38,
page39,
page40,
page41,
page42,
page43,
page44,
page45,
page46,
page47,
page48,
page49,
page50,
page51,
page52,
page53,
page54,
page55,
page56,
page57,
page58,
page59,
page60,
page61,
page62,
page63,
page64,
page65,
page66,
page67,
page68,
page69,
page70,
page71,
page72,
page73,
page74,
page75,
page76,
page77,
page78,
page79,
page80,
page81,
page82,
page83,
page84,
page85,
page86,
page87,
page88,
page89,
page90,
page91,
page92,
page93,
page94)

write.csv (ER_BASE, file = "ER.csv")


