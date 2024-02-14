# How to make a histogram of lightsabers, custom looking boxplots, barplots, etc. 

#-----------------------------------------------------------------------
# E.g. histogram with bars of different colors:
# Notes:


x =  c(1:10)
y = c(11:15, 15:11)
z = sample(c("A", "B", "C"), 10, replace = TRUE)
df = data.frame(x = x, y = y, z = z)

library(ggplot2)
df$z = as.factor(df$z)
ggplot(data = df) +
  geom_col(aes(x = x, y = y, fill = z), colour = "black")

#-----------------------------------------------------------------------
# E.g. histogram with bars of different colors, different approach:
# Notes: 


# make the numeric data
x = sample(c(1:10), 50, replace = TRUE)
# initialize empty vector for categorical variables
z = vector(mode = "character", length = 50)
# im making 3 groups that i've randomly decided to group
for(i in 1:length(x)){
  z[i] = ifelse(x[i] %in% c(1,3,5,7,9), # if x is an odd number, z=A
                "A",
                ifelse(x[i] %in% c(2,4,6), # if x in (2,4,6), z=B, if not, z=C
                       "B", "C"))
}
#turn into dataframe
df = data.frame(x = x, z = z)

df$z = as.factor(df$z)
ggplot(data = df) +
  geom_histogram(aes(x = x, fill = z), colour = "black")


#----------------------------------------------------------------------------
# E.g. this changes the color based on "cyl":
# Notes:


ggplot(mtcars, aes(disp)) + geom_histogram(aes(fill=factor(cyl)))



















