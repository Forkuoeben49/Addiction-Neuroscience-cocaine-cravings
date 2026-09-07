# Addiction Neuroscience project
# descriptive statistic on variables

# IGT-I
IGT<- data_analysis|>
  filter(!is.na(`IGT-I`))
IGT |>group_by(group)|>
  summarise(
    n=n(),
    mean(`IGT-I`),
    sd = sd(`IGT-I`),
    median(`IGT-I`),
    min(`IGT-I`),
    max(`IGT-I`)
  )
# tot_score
bis_data<-data_analysis|>
  filter(!is.na(tot_score))
bis_data|>
  group_by(group)|>
  summarise(
    n=n(),
    mean(tot_score),
    sd = sd(tot_score), 
    median(tot_score),
    min(tot_score),
    max(tot_score)
  )
# CCQ_score
CCQ_DATA<-data_analysis|>
  filter(group== "CUD")|>
  filter(!is.na(ccqn.score))|>
  summarise(
    n=n(),
    mean(ccqn.score),
    sd = sd(ccqn.score), 
    median(ccqn.score),
    min(ccqn.score),
    max(ccqn.score)
  )
  
  
