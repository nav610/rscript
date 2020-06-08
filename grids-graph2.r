library(ggplot2) 
cat("Enter Output Name: ")

out.name<-readLines("stdin",n=1)
cat("Enter Plot Title: ")

plot_title<-readLines("stdin",n=1)

file.names <- dir(".",pattern="grid*.dat")

print(file.names)
a<-length(file.names)-1
colours=c("coral","black","blue","red","limegreen","purple","slateblue","grey","cornflowerblue","goldenrod2","powderblue","plum4","steelblue","thistle","tomato")

p1<-ggplot() + labs(x="distance(nm)",y="kj/mol",title=plot_title)

for(i in 1:a){ 
	file.name<-paste("grid",i,sep="")
	print(file.name) 
	file.name <- read.table(file.names[i],skip=0) 
	names(file.name)=c("time","metad","der")
	print(head(file.name))
	
	p1<- p1 + geom_point(file.name,mapping=aes(x=time,y=-metad),color=colours[i])
}
ggsave(paste(out.name,".jpg",sep=""),p1)
























