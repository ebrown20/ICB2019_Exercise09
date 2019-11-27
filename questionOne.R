# Define data frame to read from
setwd("/Users/patriciabrown/BioComp/Exercise09/ICB2019_Exercise09")
file_name <- "sleepData.txt"
dat <- read.table(file = file_name, header = TRUE, sep = "\t")

# Define variables into a data set
hours_of_sleep <- dat[ ,1]
score_on_exam <- dat[ ,2]

# Plot scatterplot
plot(hours_of_sleep, score_on_exam, main = "Hours of Sleep vs Exam Score", xlab = "Hours of Sleep", ylab = "Exam Score (%)")

# Add trendline
abline(lm(score_on_exam~hours_of_sleep), col = "red")

# Source for data for sleepData.txt: http://2014statisticalstudies.wikifoundry.com/page/Sleep+vs.+Test+Performance