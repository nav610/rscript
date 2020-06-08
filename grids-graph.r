library(ggplot2)
cat("Number of Grids: ") 
int<- readLines("stdin",n=1) 
int<-as.integer(int)
values <- 1:int; values
for (i in values){ 
	print(toString(i))
	nam<-paste("grid",toString(i),sep="")
	print(nam)
	file<-paste("grid",toString(i),".dat",sep="") 
	print(file)
	#print(nam,file)
	#nam<-read.table(file,skip=5)
	#names(nam)=c("distance","hill","der") 
	}
#p1<-ggplot(data,aes(x=distance,y=hill)) + geom_point() + labs(x="distance (nm)",y="kj/mol",title=plot_title) + xlim(0,16) 
#ggsave("fes-graphed.jpg",p1)

