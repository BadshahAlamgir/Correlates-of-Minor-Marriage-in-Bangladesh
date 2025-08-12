library(sf)
remotes::install_github('r-tmap/tmap')
install.packages("ggmap")
install.packages("remotes")
install.packages("sf")
install.packages("ggplot2")
remotes::install_github("ovirahman/bangladesh")
library(bangladesh)
library(ggplot2)
library(tmap)
library(ggmap)
division <- get_map("division")
earlymarriage <- c(56.95,45.38,49.18,67.41,55.19,69.25,60,34.80)

df <- data.frame(earlymarriage, ADM1_EN = division_centroids$Division)
my_df <- merge(dff,df , by = "ADM1_EN")
View(my_df)


division_centroids <- bangladesh::get_coordinates(level = "division")

install.packages("viridis")

library(ggplot2)
ggplot(data = my_df) +
  geom_sf(aes(fill = earlymarriage) , col = "black")+
  theme_void()+
  viridis::scale_fill_viridis(trans = "log",begin = 0.2, option = "H" ,name="%Early Marriage",
                              labels = scales::unit_format(unit = "%", scale = 1)) +
  labs(
    title = "Bangladesh Early Marriage Map")+
  theme(plot.title = element_text(size = 26,hjust = 0.5 ), legend.text = element_text(size = 24),legend.title = element_text(size = 22))
library(viridis)
View(dff)
View(division_centroids)

dff<- read_sf("bangladesh_geojson_adm1_8_divisions_bibhags.json")

map1 <- ggplot(my_df)+
  geom_sf(aes(fill=Division))+labs(title="Divisional Fragments",x="lon",y="lat")+
  theme(legend.position = "None")


