# Addiction neurosicence project
source("data cleaning.R")
# impulsivity comparison between CUD and controls
bis_data<-data_analysis|>
  filter(!is.na(tot_score))|>
  select(rid,group,tot_score)
table(bis_data$group)
t.test(tot_score~group, data=bis_data)
cohens_d(
  tot_score~group,
  data = bis_data
)
#COMPARISON OF IGT-I among groups
igt_data<-data_analysis|>
  filter(!is.na(`IGT-I`))|>
  select(rid,group,`IGT-I`)
table(bis_data$group)
t.test(`IGT-I`~group, data=bis_data)
cohens_d(
  `IGT-I`~group,
  data = bis_data
) 

#comparison between ccqn_score and tot_score
better_analysis<- data_analysis|>
  select(tot_score, ccqn.score,group)|>
  filter(group== "CUD")
better_analysis<-better_analysis|>
  drop_na(tot_score,ccqn.score)

cor.test(
  better_analysis$ccqn.score,
  better_analysis$tot_score,

  method = "pearson"
)
model<-lm(ccqn.score~tot_score,
          data = better_analysis) 
summary(model)

#comparison between `IGT-I` and ccqn.score
REAL_DATA<- data_analysis|>
  select(group,ccqn.score,`IGT-I`)|>
  filter(group=="CUD")
cor.test(REAL_DATA$ccqn.score,
         REAL_DATA$`IGT-I`,
         method = "pearson" )

model2<-lm(ccqn.score~`IGT-I`,
           data = REAL_DATA)         
summary(model2) 

#comparison between tot_score and `IGT-I`
SMALL_ANALYSIS<- data_analysis|>
  select(tot_score,`IGT-I`, group)|>
  filter(group== "CUD")|>
  drop_na(tot_score,`IGT-I`)
cor.test(SMALL_ANALYSIS$tot_score,
         SMALL_ANALYSIS$`IGT-I`,
         method = "pearson"
)
model4<-lm(`IGT-I`~tot_score,
           data = SMALL_ANALYSIS)
summary(model4)

# multiple regression on variables
analysed_data <- data_analysis|>
  select(group,ccqn.score,`IGT-I`,tot_score)|>
  filter(group=="CUD")
drop_na(ccqn.score,`IGT-I`, tot_score)
model3<-lm(ccqn.score~`IGT-I`+ tot_score,
           data= analysed_data)
summary(model3) 

