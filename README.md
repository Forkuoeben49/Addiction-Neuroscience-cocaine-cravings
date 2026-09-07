# Addiction-Neuroscience-cocaine-cravings
# Association Between Cocaine Craving, Impulsivity, and Decision-Making in Cocaine Use Disorder
## Overview
This project presents an exploratory analysis examining the relationships between cocaine craving, impulsivity, and cognitive decision-making in individuals with cocaine use disorder (CUD).
The analysis was conducted using R and focuses on understanding whether higher levels of cocaine craving are associated with greater impulsivity and differences in cognitive decision-making.
## Research Question
Is cocaine craving associated with impulsivity and cognitive decision-making in individuals with cocaine use disorder?
## Objectives
1. Compare impulsivity between individuals with CUD and healthy controls.
2. Compare cognitive decision-making between individuals with CUD and healthy controls.
3. Examine the association between impulsivity and cocaine craving among individuals with CUD.
4. Examine the association between cognitive decision-making and cocaine craving among individuals with CUD.
5. Examine the relationship between impulsivity and cognitive decision-making.
6. Determine whether impulsivity and decision-making jointly explain variation in cocaine craving.
## Dataset
The analysis uses data from the **SUDMEX-CONN** dataset, which contains clinical, cognitive, demographic, and neuroimaging data from individuals with cocaine use disorder and healthy controls.
Participant-level raw data are not included in this repository.
## Key Variables
| Variable | Measure |
| `tot_score` | Barratt Impulsiveness Scale (BIS-11) total score |
| `IGT-I` | Iowa Gambling Task decision-making index |
| `ccqn.score` | Cocaine Craving Questionnaire General score |
| `group` | Control or cocaine use disorder |
## Statistical Analysis
The analysis was performed using R and included:
- Descriptive statistics
- Group comparisons using Welch's t-test
- Pearson correlation analysis
- Simple linear regression
- Multiple linear regression
- Effect-size estimation
- Regression diagnostics
- Data visualization
## Main Findings
### 1. Impulsivity: CUD vs Control
Individuals with CUD demonstrated substantially higher BIS-11 scores than healthy controls.
- CUD: Mean = 61.19, SD = 15.4
- Controls: Mean = 44.98, SD = 14.9
- Welch's t-test: t = -5.60, p < .001
- Cohen's d = 1.07
This represents a large group difference in impulsivity.

### 2. Cognitive Decision-Making: CUD vs Control
There was little evidence of a difference in IGT-I scores between individuals with CUD and healthy controls.
- CUD: Mean = 9.50, SD = 20.8
- Controls: Mean = 10.15, SD = 20.5
- Welch's t-test: t = 0.17, p = .865
- Cohen's d = 0.03
The effect size was negligible.

### 3. Cocaine Craving and Impulsivity
Among individuals with CUD, cocaine craving showed a weak positive association with BIS-11 scores.
- Pearson's r = .176
- p = .168
- n = 63
The association was not statistically significant.
### 4. Cocaine Craving and Cognitive Decision-Making
Among individuals with CUD, cocaine craving showed a weak positive association with IGT-I scores.
- Pearson's r = .149
- p = .247
- n = 62
The association was not statistically significant.
### 5. Impulsivity and Cognitive Decision-Making
Among individuals with CUD, BIS-11 scores showed a weak positive association with IGT-I scores.
- Pearson's r = .1492
- p = .247
- n = 55
The association was not statistically significant.
### 6. Multiple Regression

A multiple linear regression model examined whether BIS-11 and IGT-I jointly predicted cocaine craving.

- R² = .026
- Adjusted R² = -.012
- F(2, 51) = 0.69
- p = .506

Neither BIS-11 nor IGT-I was a statistically significant predictor of cocaine craving when both variables were included in the model.

## Interpretation
The findings demonstrate a clear difference in impulsivity between individuals with CUD and healthy controls, with the CUD group showing substantially higher BIS-11 scores.
However, within the CUD group, the observed relationships between cocaine craving, impulsivity, and cognitive decision-making were weak and did not reach statistical significance.
Similarly, the relationship between impulsivity and IGT-I decision-making performance was weak and statistically non-significant.
The multiple regression model explained only a small proportion of the variance in cocaine craving, suggesting that BIS-11 impulsivity and IGT-I decision-making, considered together, did not adequately explain individual differences in craving in this sample.
These findings should not be interpreted as evidence that craving has no relationship with impulsive behaviour or decision-making. Rather, the present dataset did not provide strong statistical evidence for these associations.
Because the analysis is cross-sectional, causal relationships cannot be established.

## Limitations
- The cross-sectional design limits causal interpretation.
- Missing data resulted in different sample sizes across analyses.
- Craving, impulsivity, and decision-making were assessed using specific psychometric and behavioural measures.
- The dataset does not directly measure real-world drug-seeking behaviours or decisions such as selling personal possessions to obtain cocaine.
- The analysis is exploratory and should be interpreted accordingly.
- The relatively modest sample size for some analyses may limit statistical power to detect small associations.

## Research Significance
Understanding the relationship between craving, impulsivity, and decision-making may help clarify behavioural mechanisms involved in substance use disorders.
Although the present analysis did not identify statistically significant associations between these measures within the CUD group, the findings provide an exploratory assessment of their relationships in this dataset.
Future research could combine behavioural measures with longitudinal assessments and neuroimaging approaches to investigate how craving, self-control, decision-making, and reward-related brain processes interact over time.

## Reproducibility
The R scripts used for data import, data cleaning, descriptive analysis, inferential statistics, and visualization are provided in the `R/` directory.
The analysis follows a structured workflow from data preparation through statistical analysis and visualization.

## Skills Demonstrated

- R programming
- Data cleaning and preparation
- Exploratory data analysis
- Descriptive statistics
- Statistical hypothesis testing
- Welch's t-test
- Pearson correlation
- Linear regression
- Multiple linear regression
- Effect-size interpretation
- Regression diagnostics
- Data visualization
- Scientific interpretation of statistical results
- Research project organization using GitHub


