# tables
results_summary<-data.frame(
  analysis=c("BIS-11: CUD vs Control",
             "IGT-I: CUD vs Control",
             "BIS-11 vs Cocaine craving",
             "IGT-I vs Cocaine craving",
             "IGT-I vs BIS-11",
             "Multiple regression: BIS-11 +
             IGT-I->craving"
  ),
  N  = c(112, 119,63, 62,55,54),
  Stastistic= c(
    "t = -5.604",
    "t= 0.170",
    "r = 0.176",
    "r= 0.149",
    "r=0.019",
    "F = 0.691"
  ),
  P_value = c (
    "<0.001",
    "0.865",
    "0.168",
    "0.247",
    "0.887",
    "0.506"
  ),
  Effect = c(
    "d=1.07",
    "d=0.03",
    "R^2= 0.031",
    "R^2= 0.022",
    "R^2= 0.0003",
    "R^2 = 0.0264"
  )
)
write.csv(results_summary,"results summary.csv",row.names=FALSE)

Table1.<-data.frame(
  Measure = c("BIS-11",
              "IGT-I"
  ),
  Control_mean_SD= c("45.0 +/- 14.9",
                     "10.1 +/- 20.5"),
  CUD_mean_SD =c("61.2 +/- 15.4",
                 "9.5 +/-20.8"
  ),
  Test_statistic= c("-5.604",
                    "0.169"),
  p_value = c("<0.01",
              "0.865"),
  effect_size= c("1.07",
                 "0.03")
  
)
write.csv(table1, "Table 1 .csv",row.names=FALSE)
Table2 <-data.frame(
  variables = c("BIS-11:Cocaine_craving",
                "IGT-I:Cocaine_craving",
                "IGT-I: BIS-11"),
  N=c("63","62","55"),
  r=c("0.176","0.149","0.019"),
  p_value = c("0.168","0.247","0.887")
)  
write.csv(Table2, "table 2.csv",row.names=FALSE)
Table3<- data.frame(
  Predictor= c("BIS-11","IGT-I"),
  B= c("0.388","0.189"),
  SE= c("0.400","0.298")
)
write.csv(table3,"table 3.csv",row.names=FALSE)
