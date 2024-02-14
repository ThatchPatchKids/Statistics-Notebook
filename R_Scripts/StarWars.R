# Lightsaber barplot

ggplot(data=dataName, aes(x=varName, groups=varName2, fill=varName2)) +
  geom_bar() +
  scale_fill_manual(values=c("red", "grey15"))

ggplot(data=starwars2, aes(x=force_users)) +
  geom_bar(fill=c("red", "grey15")) +
  scale_fill_manual()
