# Correlates of Minor Marriage in Bangladesh

## 📌 Overview
This project analyzes the determinants of early marriage among women in Bangladesh using the Multiple Indicator Cluster Survey (MICS) 2019 dataset. The goal was to identify key socio-economic and demographic factors influencing early marriage patterns.

## 📂 Dataset
- **Source:** UNICEF MICS 2019 (Bangladesh)
- **Size:** ~64,000 observations
- **Type:** National household survey data

## 🛠 Methodology
1. **Data Cleaning & Preprocessing** – Removing missing values, recoding variables, handling categorical data.
2. **Exploratory Data Analysis (EDA)** – Descriptive statistics & visualization (R, Power BI).
3. **Modeling** – Logistic Regression to estimate the effect of socio-economic variables.
4. **Visualization** – ggplot2 & Power BI dashboards for interactive insights.

## 📊 Key Insights
- Rural residence, lower education levels, and lower wealth index are significant predictors of early marriage.
- Urban women with higher education show substantially lower risk.
- Policy implication: Interventions should focus on rural education programs.

## 💻 Tech Stack
R | Power BI | ggplot2 | dplyr | Logistic Regression

## 📊 Logistic Regression Results

| Variable (Reference Category)                     | Category Compared To Ref. | Odds Ratio (OR) | 95% CI              | p-value | Significance |
| -------------------------------------------------- | -------------------------- | --------------- | ------------------- | ------- | ------------ |
| **Age (15–19)**                                    | 20–24                      | 2.516           | (2.353, 2.690)      | <0.001  | ***          |
|                                                    | 25–29                      | 2.203           | (2.054, 2.363)      | <0.001  | ***          |
|                                                    | 30–34                      | 2.578           | (2.400, 2.769)      | <0.001  | ***          |
|                                                    | 35–39                      | 2.941           | (2.739, 3.159)      | <0.001  | ***          |
|                                                    | 40–44                      | 3.447           | (3.192, 3.722)      | <0.001  | ***          |
|                                                    | 45–49                      | 3.049           | (2.815, 3.302)      | <0.001  | ***          |
| **Division (Sylhet)**                              | Barishal                   | 2.720           | (2.489, 2.973)      | <0.001  | ***          |
|                                                    | Chattogram                 | 1.850           | (1.712, 1.998)      | <0.001  | ***          |
|                                                    | Dhaka                      | 1.903           | (1.764, 2.053)      | <0.001  | ***          |
|                                                    | Khulna                     | 4.409           | (4.069, 4.778)      | <0.001  | ***          |
|                                                    | Mymensingh                  | 2.302           | (2.082, 2.547)      | <0.001  | ***          |
|                                                    | Rajshahi                   | 4.927           | (4.522, 5.369)      | <0.001  | ***          |
|                                                    | Rangpur                    | 2.909           | (2.678, 3.161)      | <0.001  | ***          |
| **Wealth (Richest)**                               | Poorest                    | 1.127           | (1.048, 1.213)      | 0.001   | **           |
|                                                    | Poor                       | 1.089           | (1.018, 1.166)      | 0.014   | *            |
|                                                    | Middle                     | 1.127           | (1.057, 1.202)      | <0.001  | ***          |
|                                                    | Rich                       | 1.098           | (1.033, 1.168)      | 0.003   | **           |
| **Uses Computer/Tablet (No)**                      | Yes                        | 0.607           | (0.541, 0.681)      | <0.001  | ***          |
| **Own a Phone (No)**                               | Yes                        | 1.303           | (1.249, 1.360)      | <0.001  | ***          |
| **Area (Urban)**                                   | Rural                      | 1.062           | (1.011, 1.115)      | 0.016   | *            |
| **Migration (Never Moved)**                        | Moved <5 years ago         | 2.250           | (2.123, 2.385)      | <0.001  | ***          |
|                                                    | Moved 5+ years ago         | 2.272           | (2.175, 2.374)      | <0.001  | ***          |
| **Ethnicity (Bangali)**                            | Others                     | 0.527           | (0.458, 0.606)      | <0.001  | ***          |
| **Religion (Muslim)**                              | Non-Muslim                 | 0.703           | (0.661, 0.747)      | <0.001  | ***          |
| **Sex of Household Head (Female)**                 | Male                       | 1.194           | (1.125, 1.268)      | <0.001  | ***          |
| **Education (Secondary or Lower)**                 | Higher Secondary+          | 0.189           | (0.178, 0.201)      | <0.001  | ***          |
| **Exposed to Mass Media (No)**                     | Yes                        | 0.956           | (0.916, 0.999)      | 0.043   | *            |
| **Age of Household Head (15–29)**                  | 30–44                      | 0.572           | (0.533, 0.615)      | <0.001  | ***          |
|                                                    | 45–59                      | 0.487           | (0.452, 0.525)      | <0.001  | ***          |
|                                                    | 60–74                      | 0.494           | (0.456, 0.536)      | <0.001  | ***          |
|                                                    | 75+                        | 0.398           | (0.347, 0.455)      | <0.001  | ***          |
| **Husband’s Age (≤10 Years Older)**                | >10 Years Older            | 0.962           | (0.925, 1.000)      | 0.048   | *            |
| **Constant**                                       |                            | 0.501           | (0.412, 0.608)      | <0.001  | ***          |

**Note:** OR > 1 means higher odds of early marriage; OR < 1 means lower odds.  
Significance: `*** p < 0.001`, `** p < 0.01`, `* p < 0.05`.

## 📈 Visualizations
## Visualization

### Rate of Early Marriage All Over the Country

![Description of Graph 1](Plots/Rplot01(2).png)
### Migration
![Description of Graph 1](Plots/Barplotfor_migration.png)

### Age Distribution Household Head 

![Description of Graph 2](Plots/hh.png)

