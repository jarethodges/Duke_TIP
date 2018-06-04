install.packages("purrr")
install.packages("rvest")

library(rvest)
library(purrr)
library(dplyr)

doc<-read_html("http://journals.sagepub.com/doi/full/10.3102/0013189X17737739")
author <- html_text(html_nodes(doc, '.art_authors'))
year <- html_text(html_nodes(doc, '.year'))
journalName <- html_text(html_nodes(doc, '.journalName'))
art_title <- html_text(html_nodes(doc, '.art_title'))
volume <- html_text(html_nodes(doc, '.volume'))
page <- html_text(html_nodes(doc, '.page'))
email <- html_text(html_nodes(doc, xpath = "//a[@class = 'email']"))
email2 <- html_text(html_nodes(doc, xpath = "//a[@class = 'ext-link']"))
    Author = ifelse(length(author)==0, NA, author)
    Year = ifelse(length(year)==0, NA, year)
    Journal_Name = ifelse(length(journalName)==0, NA, journalName) 
    Art_Title = ifelse(length(art_title)==0, NA, art_title)
    Volume = ifelse(length(volume)==0, NA, volume)
    Page = ifelse(length(page)==0, NA, page)
    Email = ifelse(length(email)==0, NA, 
	ifelse(length(email)==1, email, paste(email, collapse=" ; ")))
    Email2 = ifelse(length(email2)==0, NA, 
	ifelse(length(email2)==1, email2, paste(email2, collapse=" ; ")))
row<-cbind(Author, Year, Journal_Name, Art_Title, Volume, Page, Email, Email2)
View (row)






page2<-read_html("http://journals.sagepub.com/doi/full/10.3102/0013189X18778559")
author <- html_text(html_nodes(page2, '.art_authors'))
year <- html_text(html_nodes(page2, '.year'))
journalName <- html_text(html_nodes(page2, '.journalName'))
art_title <- html_text(html_nodes(page2, '.art_title'))
volume <- html_text(html_nodes(page2, '.volume'))
page <- html_text(html_nodes(page2, '.page'))
email <- html_text(html_nodes(page2, xpath = "//a[@class = 'email']"))
    Author = ifelse(length(author)==0, NA, author)
    Year = ifelse(length(year)==0, NA, year)
    Journal_Name = ifelse(length(journalName)==0, NA, journalName) 
    Art_Title = ifelse(length(art_title)==0, NA, art_title)
    Volume = ifelse(length(volume)==0, NA, volume)
    Page = ifelse(length(page)==0, NA, page)
    Email = ifelse(length(email)==0, NA, email)
row2<-cbind(Author, Year, Journal_Name, Art_Title, Volume, Page, Email)


S:\TIP\Research\Surveys and Data\R_folder

data<- read.csv ("link_test.csv")
final_table <- list()

for(i in 1:10) {
doc<-read_html(paste0("http://journals.sagepub.com/doi/full/10.3102/0013189X08317501",   data$link[i]))
author <- html_text(html_nodes(doc, '.art_authors'))
year <- html_text(html_nodes(doc, '.year'))
journalName <- html_text(html_nodes(doc, '.journalName'))
art_title <- html_text(html_nodes(doc, '.art_title'))
volume <- html_text(html_nodes(doc, '.volume'))
page <- html_text(html_nodes(doc, '.page'))
email <- html_text(html_nodes(doc, xpath = "//a[@class = 'email']"))
    Author = ifelse(length(author)==0, NA, author)
    Year = ifelse(length(year)==0, NA, year)
    Journal_Name = ifelse(length(journalName)==0, NA, journalName) 
    Art_Title = ifelse(length(art_title)==0, NA, art_title)
    Volume = ifelse(length(volume)==0, NA, volume)
    Page = ifelse(length(page)==0, NA, page)
    Email = ifelse(length(email)==0, NA, email)
row<-cbind(Author, Year, Journal_Name, Art_Title, Volume, Page, Email)
}
print(i)


data<- read.csv ("link_ER.csv")
urls <- as.character(data$link_all)
View (urls)

data<- c("http://journals.sagepub.com/doi/abs/10.3102/0013189X037001060", 
"http://journals.sagepub.com/doi/abs/10.3102/0013189X037002102",
"http://journals.sagepub.com/doi/abs/10.3102/0013189X037002104",
"http://journals.sagepub.com/doi/full/10.3102/0013189X18778559")

scrape <- function(x){
doc<-read_html(x)
author <- html_text(html_nodes(doc, '.art_authors'))
year <- html_text(html_nodes(doc, '.year'))
journalName <- html_text(html_nodes(doc, '.journalName'))
art_title <- html_text(html_nodes(doc, '.art_title'))
volume <- html_text(html_nodes(doc, '.volume'))
page <- html_text(html_nodes(doc, '.page'))
email <- html_text(html_nodes(doc, xpath = "//a[@class = 'email']"))
email2 <- html_text(html_nodes(doc, xpath = "//a[@class = 'ext-link']"))
    Author = ifelse(length(author)==0, NA, author)
    Year = ifelse(length(year)==0, NA, year)
    Journal_Name = ifelse(length(journalName)==0, NA, journalName) 
    Art_Title = ifelse(length(art_title)==0, NA, art_title)
    Volume = ifelse(length(volume)==0, NA, volume)
    Page = ifelse(length(page)==0, NA, page)
    Email = ifelse(length(email)==0, NA, 
	ifelse(length(email)==1, email, paste(email, collapse=" ; ")))
    Email2 = ifelse(length(email2)==0, NA, 
	ifelse(length(email2)==1, email2, paste(email2, collapse=" ; ")))
row<-cbind(Author, Year, Journal_Name, Art_Title, Volume, Page, Email, Email2)
}

y <- lapply (as.character(urls), scrape)
df <- do.call(rbind, y)
df <- as.data.frame(df, stringsAsFactors = FALSE)
write.csv (df, file = "ER_SCRAPE2.csv")



scrape <- function(x){
doc<-read_html(x)
author <- html_text(html_nodes(doc, '.art_authors'))
year <- html_text(html_nodes(doc, '.year'))
journalName <- html_text(html_nodes(doc, '.journalName'))
art_title <- html_text(html_nodes(doc, '.art_title'))
volume <- html_text(html_nodes(doc, '.volume'))
page <- html_text(html_nodes(doc, '.page'))
email <- html_text(html_nodes(doc, xpath = "//a[@class = 'email']"))
row<-cbind(Author, Year, Journal_Name, Art_Title, Volume, Page, Email)
}

y <- lapply (as.character(data), scrape)
df <- do.call(rbind, y)
df <- as.data.frame(df, stringsAsFactors = FALSE)
View (df)