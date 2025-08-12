lab_m <- c("Never Moved"=1,"Moved in last 5 years"=2,"5 years ago"=3)

data <- dat5 %>%
  mutate(migration =ifelse(migration==1 ,"Never Moved", ifelse(migration ==2 , "Moved in last 5 years",
                                                               ifelse(migration==3 ,"Moved more than 5 years ago",NA))))
data<- data %>% mutate(marriage_cat=ifelse(marriage_cat==1,"Yes","NO"))
head(data)
head(data)
dat5 <- na.omit(dat %>% select(marriage_cat , migration))


ggplot(data = data , aes(x = migration , fill = factor(marriage_cat)))+
  geom_bar(position = "dodge")+
  labs(title = "Migration and Early Marriage",
       x = "Migration",
       y = "Frequency",
       fill = "Early Marriage",
       size = 3) +
  theme(plot.title = element_text(size = 26,hjust = 0.5 ),axis.title.x = element_text(size =24),
        axis.title.y = element_text(size = 24),axis.text.x = element_text(size = 18), 
        axis.text.y.left =element_text(size = 0) , legend.text = element_text(size = 24),
        legend.title = element_text(size = 22),panel.background = element_blank(),
        legend.position = "right")


  
  