# papertheme function
# version 2020
# Kim De Paepe

### Input of function
#ggplot object without any formatting 

### WHAT THIS FUNCTION DOES
# Removes grey background
# Puts black axis ticks
# Remove grid lines
# Size of axis labels (going together with the axis ticks)
# Size of axis titles

### Arguments of function
# only the input object

papertheme <- function(ggplotobject,sizeselect=12){
  ggplotnewobject <- ggplotobject + ggplot2::theme_update(axis.ticks.x = element_line(colour = "black"), 
                                                 axis.ticks.y =element_line(colour = "black"),
                                                 panel.background = element_rect(fill = "white"),
                                                 legend.position = "bottom",
                                                 panel.grid.major=element_blank(),
                                                 panel.grid.minor=element_blank(),
                                                 axis.line.x  = element_line(colour = "black"),
                                                 axis.line.y=element_line(colour="black"),
                                                 axis.line=element_line(colour="black"),
                                                 axis.text.x = element_text(size = sizeselect,family='sans',angle=0),
                                                 axis.text.y = element_text(size = sizeselect,family='sans',angle=0),
                                                 axis.title.x = element_text(size = sizeselect,family='sans',angle=0),
                                                 axis.title.y = element_text(size = sizeselect,family='sans',angle=90),
                                                 legend.text = element_text(size = sizeselect,family='sans',angle=0),
                                                 legend.title = element_text(size = sizeselect,family='sans',angle=0),
                                                 strip.background = element_rect(colour="white", fill="white"),
                                                 panel.border = element_rect(colour = "white",fill=NA),
                                                 strip.text = element_text(size = sizeselect,angle=0,family='sans'),
                                                 legend.key.size = unit(1.5, 'lines'),
                                                 plot.title=element_text(size= sizeselect,family='sans',angle=0,hjust=0.5),
                                                 legend.justification="center",
                                                 legend.key=element_rect(fill=NA,color=NA))
  
  return(ggplotnewobject)  }