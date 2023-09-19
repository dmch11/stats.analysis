install.packages("readr")
library(readr)
# Load required libraries
library(dplyr)
library(ggplot2)

# Loading the dataset 
data <- read.csv("diabetes.csv")

# Summary statistics
summary(data)

# Visualization of the distribution for independent variables
# Visualize the distribution of 'Age' by 'Outcome' without 'fill' aesthetics
ggplot(data, aes(x=Age, fill=factor(Outcome))) +
  geom_histogram(binwidth=5, alpha=0.5) +
  labs(title="Age Distribution by Diabetes Outcome", x="Age")

#Pregnacies
ggplot(data, aes(x=Pregnancies, fill=factor(Outcome))) +
  geom_histogram(binwidth=5, alpha=0.5) +
  labs(title="Pregnancies Distribution by Diabetes Outcome", x="Pregnancies")

#Glucose
ggplot(data, aes(x=Glucose, fill=factor(Outcome))) +
  geom_histogram(binwidth=5, alpha=0.5) +
  labs(title="Glucose Distribution by Diabetes Outcome", x="Glucose")

#BloodPressure
ggplot(data, aes(x=BloodPressure, fill=factor(Outcome))) +
  geom_histogram(binwidth=5, alpha=0.5) +
  labs(title="BloodPressure Distribution by Diabetes Outcome", x="BloodPressure")

#Insulin
ggplot(data, aes(x=Insulin, fill=factor(Outcome))) +
  geom_histogram(binwidth=5, alpha=0.5) +
  labs(title="Insulin Distribution by Diabetes Outcome", x="Insulin")

#BMI
ggplot(data, aes(x=BMI, fill=factor(Outcome))) +
  geom_histogram(binwidth=5, alpha=0.5) +
  labs(title="BMI Distribution by Diabetes Outcome", x="BMI")

# Separate the data into two groups: with diabetes (Outcome=1) and without diabetes (Outcome=0)
with_diabetes <- data[data$Outcome == 1, ]
without_diabetes <- data[data$Outcome == 0, ]

# Perform a two-sample t-test
t_test_result <- t.test(with_diabetes$Glucose, without_diabetes$Glucose)

# Print the t-test result
print(t_test_result)









