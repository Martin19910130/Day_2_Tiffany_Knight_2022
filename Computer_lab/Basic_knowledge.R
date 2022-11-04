## clear your workspace 
rm(list = ls())
gc()

## load packages you may want to use
library(openxlsx)
library(dplyr)
library(ggplot2)

## we can read xlsx data with a function of openxlsx
lupin <- read.xlsx("01_PhD/Master_class/Day_2/lupine_start_data.xlsx")

## we can create data frames and define the column name like this
dat <- data.frame(column1 = c(NA, NA, 0, NA), column2 = c(NA, 0, NA, 5),
                  column3 = c(NA, 5, NA, 10), 
                  column4 = c("Fun", "R", NA, "Pirate"))

## row names can be defined like this using a vector of characters:
rownames(dat) <- c("row1", "row2", "row3", "row4")

## Matrices are easier to define but need more line of code: 
mat <- matrix(ncol = 4, nrow = 4)

## we can name rows exactly like rows from data frames
rownames(mat) <- c("row1", "row2", "row3", "row4")
## column names are similar defined just a different function
colnames(mat) <- c("col1", "col2", "col3", "col4")

## or more complex: 
Am <- matrix(
  c(
    0,   0, 0, "x",
    "x", 0, 0, "x",
    0, "x", "x", "x",
    0, "x", "x", "x"
  ),
  nrow=4, byrow=TRUE,
  dimnames=list(c("row1", "row2", "row3", "row4"),
                c("col1", "col2", "col3", "col4")))

## Throwback: 
## you can call columns and rows like this: 
dat["row3", "column1"]
dat[1:3, 1]
dat$column3
dat$column4[1]  ## I personally do not use this as I like to stay with in 
                ## one syntax

## I am going to give you an example for the table function 
## which maybe is useful today
table(economics_long$variable) 
## I use the build in tibble data set (tibble = different version of data frame)
## I want R to count each repetition of unique characters in the column variable
## table tells me exactly how many times pce, pop, psavert, uempmed and unemploy
## is given in that data set. If you want to have a closer look at the data set use Help
## Note: you can also use more arguments in table
table(esoph$alcgp, esoph$tobgp)
## this way R calculates the sum of unique combinations between every column, again 
## use help to understand the data set