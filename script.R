
# Data source: https://www.kaggle.com/tunguz/data-on-covid19-coronavirus

# Load libraries
# Preparation for the magic...

install.packages("data.table")
install.packages("tidyverse")
install.packages("funModeling")
install.packages("Hmisc")
library(data.table)
library(funModeling) 
library(Hmisc)
library(ggplot2)


#####################
#### Read data    ###
#####################
dt <- fread("data/covid-data.csv")


####################
##    View data  ###
####################
View(dt)


####################################################################
# 1. Checking missing values, zeros, data type, and unique values
####################################################################

# total rows, total columns and column names
nrow(dt)
ncol(dt)


# basic profiling
df_status(dt)
dt[, lapply(.SD, function(x) sum(is.na(x))/ nrow(dt))]

# profiling categorical variables
freq(dt)


# profiling numerical variables
plot_num(dt)


####################################################################
# 2. Select data of interest
####################################################################

# Filter data for India, UK, and France
compare_data <- dt[location %in% c("India", "United Kingdom", "France")]

# Select relevant columns
compare_data <- compare_data[, .(iso_code, location, date, total_vaccinations, 
                                 people_vaccinated_per_hundred, 
                                 people_fully_vaccinated_per_hundred)]

# Clean NA values
compare_data <- compare_data[!is.na(people_vaccinated_per_hundred)]
compare_data <- compare_data[complete.cases(compare_data)]

####################################################################
# 3. Visualization
####################################################################

# Plot: % of people vaccinated per hundred (at least one dose)
p1 <- ggplot(data = compare_data, 
             aes(x = date, y = people_vaccinated_per_hundred, color = location)) +
  geom_line(size = 1.2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60), labels = scales::comma) +
  labs(title = '% of vaccinated people in India, UK, and France',
       x = 'Date',
       y = '% vaccinated people')

p1

