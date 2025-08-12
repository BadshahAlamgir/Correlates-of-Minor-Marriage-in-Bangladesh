library(haven)
wm <- read_sav("D:/Bangladesh MICS6 2019 SPSS Datasets/wm.sav")
names(wm)
attr(wm$HH1 , "label")
attr(wm , "label")
# Function to print variable names and labels
print_variable_labels <- function(wm) {
  for (col_name in names(wm)) {
    variable_label <- attr(wm[[col_name]], "label")
    if (!is.null(variable_label)) {
      cat("Variable:", col_name, " - Label:", variable_label, "\n")
    } else {
      cat("Variable:", col_name, " - No label\n")
    }
  }
}
print_variable_labels(keepdata)

fs <- read_sav("D:/Bangladesh MICS6 2019 SPSS Datasets/fs.sav")
names(fs)
print_variable_labels(mydata)

library(tidyverse)
df <- hh %>% select(HH1 , HH2 , HC1A,HHAGE,HHSEX)
df1 <- merge(wm , df , by=c("HH1" , "HH2"))
names(df1)
dim(df1)

mydata <-merge(keepmydata,df , by = c("HH1","HH2"))

dim(mydata)
dim(keepdata)
dim(df)
save(keepdata, file = "Keepdata")
save(mydata , file = "mydata.sav")


write_dta(mydata,path = "myprdata.dta",version = 14)
