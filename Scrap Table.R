#Webscraping

#Use below R code you can scrap table content from any website

#install rvest package
install.packages("rvest")
library(rvest)

#read web content using read_html
content <- read_html("https://www.digit.in/top-products/best-android-phones-2.html")

#scrap the table content using below r code
productdtl <- content %>% html_nodes("table") %>% html_table()

View(productdtl)
