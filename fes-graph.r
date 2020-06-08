library(ggplot2)
cat("Enter Output Name: ")

out.name<-readLines("stdin",n=1)

cat("Enter Plot Title: ")

plot_title<-readLines("stdin",n=1)
data<-read.table("grid4.dat", skip=5) 
names(data)=c("distance","hill","der") 
p1<-ggplot(data,aes(x=distance,y=hill)) + geom_point() + labs(x="distance (nm)",y="kj/mol",title=plot_title) + xlim(0,16) 
ggsave("fes-graphed.jpg",p1)

