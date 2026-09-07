# Addiction neuroscience
# data visualization
ggplot(bis_data,aes(x=group, y= tot_score))  +
  geom_boxplot(aes(fill = group))+
  labs(
    title = "bis-11 total scores by group",
    x= "Group",
    y= "Bis-11 total score"
  )+
  theme_classic()
ggplot(bis_data,aes(x= group, y=tot_score))  +
  geom_col(aes(fill = group))+
  labs(
    title = " distribution of bis-11 total scores",
    x= "group",
    y= "bis-total score"
  )+
theme_classic()

# visualization of IGT- scores by group
ggplot(bis_data,aes(x=group, y= 'IGT-I'))  +
  geom_boxplot(aes(fill = group))+
  labs(
    title = "'IGT-I' scores by group",
    x= "Group",
    y= "'IGT-I'"
  ) +
  theme_classic()
ggsave(
  " GIT by group.png",
  width = 7,
  height = 5,
  dpi = 300
)

ggplot(bis_data,aes(x= group, y=`IGT-I`))  +
  geom_col(aes(fill = group))+
  labs(
    title = " distribution of `IGT-I`",
    x= "group",
    y= "IGT-I"
  )+
  theme_classic()

# Association between craving and impulsivity
ggplot( better_analysis,aes(, x= ccqn.score,y=tot_score))  +
  geom_point()+
  geom_smooth(method = "lm",se= TRUE)
labs(
  title = "Association between craving and impulsivity",
  x= "Bis-11 total score",
  y= "ccqn.score")+
  theme_classic()
ggsave(
  " ccqn_BIS.png",
  width = 7,
  height = 5,
  dpi = 300
)
#Association between craving and decision making
ggplot( REAL_DATA,aes( x=ccqn.score ,y=`IGT-I`))  +
  geom_point()+
  geom_smooth(method = "lm",se= TRUE)
labs(
  title = "Association between craving and decision making",
  x= "craving score",
  y= "I-GTI score"
)
#Association between decision making and impulsivity
ggplot( SMALL_ANALYSIS,aes(, x= tot_score,y=`IGT-I`))  +
  geom_point()+
  geom_smooth(method = "lm",se= TRUE)
labs(
  title = "Association between decision making and impulsivity",
  x= "Bis-11 total score",
  y= `IGT-I`
  )

ggsave(
  " BIS-11_GIT.png",
  width = 7,
  height = 5,
  dpi = 300
)




