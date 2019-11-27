# Set working directory
setwd("/Users/patriciabrown/BioComp/Exercise09/ICB2019_Exercise09")

# Define data frame to read from
file_name <- "data.txt"
dat <- read.csv(file = file_name, header = TRUE)

# Creata data frame for each of the four directions
north_data <- dat[dat[ ,1] == "north", ]
east_data <- dat[dat[ ,1] == "east", ]
south_data <- dat[dat[ ,1] == "south", ]
west_data <- dat[dat[ ,1] == "west", ]

# Extract the means of each of the four directions
mean_north <- mean(north_data[ ,2])
mean_east <- mean(east_data[ ,2])
mean_south <- mean(south_data[ ,2])
mean_west <- mean(west_data[ ,2])

# Create a barplot of the means
means <- c(mean_north, mean_east, mean_south, mean_west)
barplot(means, main = "Region vs Observations", xlab = "Region", ylab = "Number of Observations", names.arg = c("North", "East", "South", "West"), col = "red")

# Create x values for the scatterplot for each data set
x_north <- (1:nrow(north_data))
x_east <- (1:nrow(east_data))
x_south <- (1:nrow(south_data))
x_west <- (1:nrow(west_data))

# Create scatterplot
plot(x_south, south_data[ ,2], main = "Number of Observations vs Region", xlab = "Region", ylab = "Number of Observations")
points(east_data[ ,2], col="red")
points(north_data[ ,2], col="green")
points(west_data[ ,2], col="blue")

# Add key
legend(0,31,legend=c("South","East","North","West"),col= c("black","red","green","blue"), lty = 1)

# The barplot of the means makes it appear as if there is roughly the same number of observations
# within all of the regions. However, the scatterplot shows that there is a distinct difference
# in observations throughout the regions. The east and west regions show an equal spread of data
# between about 5 observations and 30 observations. The north region shows very little variation,
# and each of its points hovers around 15 observations. The south region shows high variation,
# showing no points in the middle, but only at the two extremes (around 5 and around 30 observations).
# The reason that the bar plot of the means indicates that the data are similar, and the scatter plot
# shows that the data are actually quite different is because the mean is very susceptible to
# outliers and skew in data. The mean does not give a good overall picture of the trend of the data.
# However the scatterplot does give a good picture of the overall trend of the data.

