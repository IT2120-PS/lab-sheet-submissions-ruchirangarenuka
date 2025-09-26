# 1. Calculate population mean and population standard deviation
setwd("C:\\Users\\user\\OneDrive\\Desktop\\IT24100627")  

# Import dataset
data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE) 
attach(data) 

# Population mean
popmean <- mean(Weight.kg.)  
# Population standard deviation
popsd <- sd(Weight.kg.) * sqrt((length(Weight.kg.)-1)/length(Weight.kg.)) 

popmean   # Population Mean
popsd      # Population SD


# 2. Draw 25 random samples of size 6 (with replacement)
#    and calculate the sample mean and sample SD for each

set.seed(42)   # reproducibility

s.means <- numeric(25)
s.sds <- numeric(25)

for (i in 1:25) {
  samp <- sample(Weight.kg., size=6, replace=TRUE)
  s.means[i] <- mean(samp)
  s.sds[i] <- sd(samp)
}

# Display the 25 sample means and SDs
s.means
s.sds

# 3. Calculate mean and SD of the 25 sample means
#    and compare with population values

mean_of_sample_means <- mean(s.means) 
sd_of_sample_means <- sd(s.means)

mean_of_sample_means  # Mean of Sample Means
sd_of_sample_means     # SD of Sample Means

# Show population vs sample comparison
popmean              # Population Mean
mean_of_sample_means  # Mean of Sample Means
popsd             # Population SD
sd_of_sample_means     # SD of Sample Means
