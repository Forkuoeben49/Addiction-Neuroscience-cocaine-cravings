#Addiction Neuroscience Project
#02_data_cleaning
#
library(dplyr)
library(tidyr)
#Run the data import script
source("01_data_import.R")
# checking variables before merging
names(BIS)
names(cocaine_craving)
names(cognitive)
names(demographics)
names(participants)

# creating the analysis dataset
working_bis<- BIS|>
  select(rid,tot_score)

WORKING_COGNITIVE<-cognitive|>
  select(rid, group,`IGT-I`)

WORKING_DEMO<- demographics|>
  select(rid)


working_cocaine<- cocaine_craving|>
  select(rid,ccqn.score)

data_analysis<-merge(working_bis,
                     WORKING_COGNITIVE,
                     by=c("rid"),
                     all.x = TRUE)

data_analysis<- merge(data_analysis,
                      WORKING_DEMO,
                      by= c("rid"),
                      all.x=TRUE)

data_analysis<-merge(data_analysis,
                     working_cocaine,
                     by= ("rid"),
                     all.x = TRUE)

# checking dataset
dim(data_analysis)
str(data_analysis)
colSums(is.na(data_analysis))

#cleaning the variables
data_analysis$group<-factor(data_analysis$group,
                            levels = c(1,2),
                            labels = c("Control","CUD")
)
data_analysis[data_analysis=="NA"]<-NA
data_analysis[data_analysis=="Na"]<-NA
data_analysis<-data_analysis|>
  mutate(
    tot_score= as.numeric(tot_score),
    `IGT-I`=as.numeric(`IGT-I`),
    ccqn.score=as.numeric(ccqn.score)
  )

write.csv(data_analysis,"data/analysis_data.csv")
