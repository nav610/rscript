library("ggplot2") 
library("cowplot") 

doc <- read.csv("score_local_dock.csv") 

p1 <- ggplot(data=doc, aes(x=rms,y=I_sc)) + geom_point(colour="darkorange2", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(0,50),name="RMSD") + scale_y_continuous(limits=c(-50,0),name="Interface Energy", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=25)) 


#plot_grid(p1,p2,p3,p4,p6)
#cow <- plot_grid(p1,p2,p3,p4,p5,p6, labels = c('B','C','D','E','F','G'), label_size=12) 
#ggsave("cowplot.jpg",cow)



ggsave("p1.jpg",p1) 
