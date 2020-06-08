library("ggplot2") 
library("cowplot") 

data <- read.csv("cov2-bat_hum_pan-ddG.csv") 

p1 <- ggplot(data=data, aes(x=Bat,y=Pan)) + geom_point(colour="firebrick3", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(-5,50),name="ddG Bat") + scale_y_continuous(limits=c(-5,50),name="ddG Pangolin", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=25)) + geom_hline(yintercept=0, linetype = "dashed", color = "gray") + geom_vline(xintercept=0,linetype="dashed",color="gray")

p2 <- ggplot(data=data, aes(x=Bat,y=Hum)) + geom_point(colour="forestgreen", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(-5,50),name="ddG Bat") + scale_y_continuous(limits=c(-5,50),name="ddG Human", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=25)) + geom_hline(yintercept=0, linetype = "dashed", color = "gray") + geom_vline(xintercept=0,linetype="dashed",color="gray")

p3 <- ggplot(data=data, aes(x=Pan,y=Hum)) + geom_point(colour="darkslateblue", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(-5,50),name="ddG Pangolin") + scale_y_continuous(limits=c(-5,50),name="ddG Human", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=25)) + geom_hline(yintercept=0, linetype = "dashed", color = "gray") +geom_vline(xintercept=0,linetype="dashed",color="gray")

plot_grid(p1,p2,p3)
cow <- plot_grid(p1,p2,p3, labels = c('A','B','C'), label_size=12) 
ggsave("cowplot.jpg",cow)

ggsave("p1.jpg",p1)
ggsave("p2.jpg",p2)
ggsave("p3.jpg",p3)
