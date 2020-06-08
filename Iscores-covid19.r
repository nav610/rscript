library("ggplot2") 
library("cowplot") 

cov1_hace2 <- read.csv("cov1-hum-dock-score.csv") 
cov2_hace2 <- read.csv("cov2-hum-dock-score.csv")
mers_hace2 <- read.csv("mers-hum-dock-score.csv")
cov1_bace2 <- read.csv("cov1-bat-dock-score.csv") 
cov2_bace2 <- read.csv("cov2-bat-dock-score.csv") 
mers_bace2 <- read.csv("mers-bat-dock-score.csv") 


p1 <- ggplot(data=cov1_hace2, aes(x=rms,y=I_sc)) + geom_point(colour="darkorange2", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(0,50),name="RMSD") + scale_y_continuous(limits=c(-50,0),name="Interface Energy", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=12)) + ggtitle("COV1-hACE2") 

p2 <- ggplot(data=cov2_hace2, aes(x=rms,y=I_sc)) + geom_point(colour="darkorange2", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(0,50),name="RMSD") + scale_y_continuous(limits=c(-50,0),name="Interface Energy", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=12)) + ggtitle("COV2-hACE2")

p3 <- ggplot(data=mers_hace2, aes(x=rms,y=I_sc)) + geom_point(colour="darkorange2", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(0,50),name="RMSD") + scale_y_continuous(limits=c(-50,0),name="Interface Energy", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=12)) + ggtitle("MERS-hACE2") 

p4 <- ggplot(data=cov1_bace2, aes(x=rms,y=I_sc)) + geom_point(colour="slateblue4", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(0,50),name="RMSD") + scale_y_continuous(limits=c(-50,0),name="Interface Energy", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=12)) + ggtitle("COV1-bACE2")

p5 <- ggplot(data=cov2_bace2, aes(x=rms,y=I_sc)) + geom_point(colour="slateblue4", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(0,50),name="RMSD") + scale_y_continuous(limits=c(-50,0),name="Interface Energy", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=12)) + ggtitle("COV2-bACE2")
																										
p6 <- ggplot(data=mers_bace2, aes(x=rms,y=I_sc)) + geom_point(colour="slateblue4", show.legend=FALSE) + scale_x_continuous(expand=c(0,0),limits=c(0,50),name="RMSD") + scale_y_continuous(limits=c(-50,0),name="Interface Energy", expand=c(0,0)) + theme(axis.line=element_line(color="black", size=1,linetype="solid"),axis.title=element_text(size=12)) + ggtitle("MERS-bACE2")

#plot_grid(p1,p2,p3,p4,p6)
cow <- plot_grid(p1,p2,p3,p4,p5,p6) 
ggsave("covid19.jpg",cow)


#ggsave("p1.jpg",p1) 
#ggsave("p2.jpg",p2)
#ggsave("p3.jpg",p3)

