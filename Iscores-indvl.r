library("ggplot2") 
library("cowplot") 

locB <- read.csv("score_local_dockB.csv") 
locC <- read.csv("score_local_dockC.csv")
locD <- read.csv("score_local_dockD.csv")
locE <- read.csv("score_local_dockE.csv")
locF <- read.csv("score_local_dockF.csv")
locG <- read.csv("score_local_dockG.csv")

p1 <- ggplot(data=locB, aes(x=rms,y=I_sc)) + geom_point(colour="darkorange2", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(0,50),name="RMSD") + scale_y_continuous(limits=c(-50,0),name="Interface Energy", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=25)) 

p2 <- ggplot(data=locC, aes(x=rms,y=I_sc)) + geom_point(colour="darkorange2", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(0,50),name="RMSD") + scale_y_continuous(limits=c(-50,0),name="Interface Energy", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=25))


p3 <- ggplot(data=locD, aes(x=rms,y=I_sc)) + geom_point(colour="darkorange2", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(0,50),name="RMSD") + scale_y_continuous(limits=c(-50,0),name="Interface Energy", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=25))


p4 <- ggplot(data=locE, aes(x=rms,y=I_sc))  + geom_point(colour="grey", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(0,50),name="RMSD") + scale_y_continuous(limits=c(-50,0),name="Interface Energy", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=25))


p5 <- ggplot(data=locF, aes(x=rms,y=I_sc))  + geom_point(colour="grey", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(0,50),name="RMSD") + scale_y_continuous(limits=c(-50,0),name="Interface Energy", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=25))


p6 <- ggplot(data=locG, aes(x=rms,y=I_sc))  + geom_point(colour="grey", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(0,50),name="RMSD") + scale_y_continuous(limits=c(-50,0),name="Interface Energy", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=25))


#plot_grid(p1,p2,p3,p4,p6)
#cow <- plot_grid(p1,p2,p3,p4,p5,p6, labels = c('B','C','D','E','F','G'), label_size=12) 
#ggsave("cowplot.jpg",cow)



ggsave("p1.jpg",p1) 
ggsave("p2.jpg",p2)
ggsave("p3.jpg",p3)
ggsave("p4.jpg",p4)
ggsave("p5.jpg",p5)
ggsave("p6.jpg",p6)

