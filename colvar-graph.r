library(ggplot2)
cat("Enter Plot Title: ")

plot_title<-readLines("stdin",n=1)
data<-read.table("COLVAR", skip=1) 
names(data)=c("time","distance","bias") 
p1<-ggplot(data,aes(y=distance,x=time)) + geom_point() + labs(y="distance (nm)",x="time(ps)",title=plot_title) + ylim(0,14) 
ggsave("COLVAR-graphed.jpg",p1)

