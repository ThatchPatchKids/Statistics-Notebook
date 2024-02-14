

# Use the starwars data set to create a meaningful histogram and supporting numerical summaries.
hist(starwars$height, xlab="Average Height in a Galaxy Far Far Away", main="StarWars Episodes 1-9", col="red")

# Use the starwars data set to create a meaningful boxplot (preferably side-by-side boxplots) and supporting numerical summaries.
starwars2 <- starwars # Create a new dataset that we can add columns too.
# Create an imperfect list of jedis and siths from episodes 1-9 that are in the name column.
jedi_sith_list <- c("Luke Skywalker", "Darth Vader", "Obi-Wan Kenobi", "Anakin Skywalker", "Yoda", "Palpatine", "Qui-Gon Jinn", "Darth Maul", "Ayla Secura", "Mace Windu", "Ki-Adi-Mundi", "Kit Fisto", "Plo Koon", "Dooku", "Rey")
# Create a new column, filtering by the jedi_sith_list.
starwars2 <- starwars2 %>%
  +     mutate(jedi_sith = name %in% jedi_sith_list)

# How do I change the FALSE and TRUE names? 
boxplot(height ~ jedi_sith, data=starwars2, xlab="Force Users", ylab="Average Height in a Galaxy Far Far Away", main="Star Wars Episodes 1-9", col=c("blue", "green"))

# Use the starwars data set to change your boxplot from above to a dot plot. Which is more meaningful for the data you selected?
# This one still needs work.
stripchart(jedi_sith ~ height, data=starwars2)

# Use the starwars data set to create a meaningful scatterplot and compute the correlation of the data shown in the plot.
# This one still needs work.
plot(mass ~ height, data=starwars2, xlab="Average Height in a Galaxy Far Far Away", ylab="Average Mass in a Galaxy Far Far Away", main="Star Wars Episodes 1-9")

# Use the starwars data set to create a meaningful bar chart and produce a table of counts to support the plot.

# Rename jedi_sith to force_users, how do I delete columns?
starwars2$force_users <- starwars2$jedi_sith

# What should I call the labels?
barplot(table(starwars2$force_users), xlab="Force Users", ylab="Count?", main="Star Wars Episodes 1-9", col=c("red", "blue"))
