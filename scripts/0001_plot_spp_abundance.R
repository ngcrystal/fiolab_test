### Figure of spp abundances ####

## Library ####

library(ggplot2)

## Load data ####

All.abundance.spp<- read.csv("data/spp_abundance.csv")
head(All.abundance.spp)


## Plot spp abundances ####

limits <- aes(ymax = TotalCounts+ se, ymin=TotalCounts-se)  # create the error bars

ggplot(All.abundance.spp, aes(x=Year, y=TotalCounts, colour=Genusspecies)) + 
  geom_line(size=.75)+
  geom_point(size = 2)+
  geom_errorbar(limits, width=0.1) +
  facet_grid(Group~Concession, scales="free_y")+
  ylab('Mean number of individuals per Transect')+
  theme(strip.text.x = element_text(size = 15))+
  theme(strip.text.y = element_text(size = 15))+
  theme(axis.title.x = element_text(size = 15))+
  theme(axis.title.y = element_text(size = 15))+  
  theme(axis.text.y = element_text(size = 15))+  
  theme(axis.text.x = element_text(size = 15))+  
  theme(legend.position="right",legend.title=element_text(size=20), legend.text=element_text(size=20))

