con <- read.csv("russia_losses_equipment.csv")


library(ggplot2)
library(ggthemes)

gg <- ggplot(con, aes(day))+
  geom_line(aes(y = tank, color="Tank"))+
  #geom_point(aes(y = tank, color="Tank"))+
  geom_line(aes(y = aircraft, color="Aircraft"))+
  geom_line(aes(y = helicopter, color="Helicopter"))+
  #geom_line(aes(y = APC, color="APC"))+
  geom_line(aes(y = field.artillery, color="Artillery Unit"))+
  #geom_line(aes(y = MRL, color="lightgreen"))+
  #geom_line(aes(y = military.auto, color="blue"))+
  #geom_line(aes(y = fuel.tank, color="orange"))+
  geom_line(aes(y = drone, color="Drone"))+
  #geom_line(aes(y = naval.ship, color="darkgreen"))+
  #geom_line(aes(y = anti.aircraft.warfare, color="brown"))
  
  theme_excel_new() + ggtitle("Losses Faced by Russian Military (Invasion of Ukraine)")+

  theme(axis.title = element_text(),
        axis.line = element_line(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  labs(y = "Losses (in Unit Numbers)\n", x = "\nDays") 



