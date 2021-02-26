library(tidyverse)

original <- tibble(x = c(1,1,1,2,2,2,4,4,4))
aggregated <- original %>% count(x)
deaggregated <- aggregated %>% uncount(weights = n)


da <- tibble(
    age = c(rep(letters[1:4],2)), 
     resistance = c(rep("yes",4),rep("no",4)),
     Freq = c(393, 362, 476, 355, 362, 393, 279, 400)) 
da

das <- da %>% uncount(weights = Freq)


#das$age2 <- as.factor(das$age)
#das$age2 <- relevel(das$age2, ref='d')


gas <- glm(as.factor(resistance) ~ age, data = 
             das, family = binomial)


#fit <- lrm(age ~ resistance, data = das,
 #          x=TRUE, y=TRUE) with rms

ndt <- tibble(
  Freq = c(93, 362, 476, 355, 362, 393, 279, 400, 377,581,453,376,174,302, 392,
            363,370,385,370,385,490,265,302,453,453,302,370,385,430,325),
  
          .Dimnames = list(age = c("2-11", "12-23", "24-35", "36-72"), sex = c("f", "um", "cm"), 
                           race = c("white", "non-white"), ethnicity = c("non-hispanic", "hispanic"),
                           bbd = c("no", "yes"), antb = c("no", "yes"), resistance = c("yes", "no")), class = "table")


structure(c(0, 0, 35, 0, 0, 0, 17, 0, 118, 154, 387, 670, 4, 
            13, 89, 3, 5, 11, 13, 0, 1, 13, 14, 0, 57, 14, 75, 192, 140, 
            80, 76, 20), .Dim = c(4L, 2L, 2L, 2L), .Dimnames = list(Class = c("1st", 
                                                                              "2nd", "3rd", "Crew"), Sex = c("Male", "Female"), Age = c("Child", 
                                                                                                                                        "Adult"), Survived = c("No", "Yes")), class = "table")