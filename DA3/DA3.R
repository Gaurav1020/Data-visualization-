library(ggplot2)
library(dplyr)
library(plotly)
library(hrbrthemes)
library(rlang)
library(tidyr)
library(gridExtra)
books <- read.csv("C:\\Users\\DELL\\Desktop\\Data Vis\\Lab\\DA\\DA3\\books.csv")


View(books)


#1
                #Method1
books<-na.omit(books, na.action = "omit", cols="call_class")
                #Method2
books<-subset(books,!is.na(call_class))
View(books)




















#2
p1<- ggplot(books, aes(tot_chkout)) + geom_bar()
p1



















#3
subcol=c("juvenile", "special collections", "reserves")
newset<- subset(books, tot_chkout>10 & subCollection %in% subcol )
p2<- ggplot(newset, aes(x=call_class,y=tot_chkout, color=subCollection)) + geom_boxplot()
p2



















#4
subcol=c("juvenile", "special collections", "reserves","general collection")
newset<- subset(books, tot_chkout>10 & subCollection %in% subcol)
p3<- ggplot(newset, aes(x=call_class,y=tot_chkout)) + 
  geom_bar(aes(fill=subCollection),position="dodge",stat="identity")
p3)



















subcol=c("juvenile", "special collections", "reserves","general collection")
newset<- subset(books, tot_chkout>10 & subCollection %in% subcol)
p4<- ggplot(newset, aes(x=call_class,y=tot_chkout)) + 
  geom_bar(aes(fill=subCollection),position="stack",stat="identity")
p4






















#5
p5<- ggplot(books, aes(subCollection)) + 
  geom_bar(aes(fill=subCollection))
p5<- p5+facet_wrap( ~format, nrow=1,ncol=3)
p5
















#6
p1<- p1+ggtitle("P1")+theme(axis.title.x = element_text(color="blue", size=14, face="bold"), axis.title.y = element_text(color="blue", size=14, face="bold"))
p2<- p2+ggtitle("P2")+theme(axis.title.x = element_text(color="blue", size=14, face="bold"), axis.title.y = element_text(color="blue", size=14, face="bold"))
p3<- p3+ggtitle("P3")+theme(axis.title.x = element_text(color="blue", size=14, face="bold"), axis.title.y = element_text(color="blue", size=14, face="bold"))
p4<- p4+ggtitle("P4")+theme(axis.title.x = element_text(color="blue", size=14, face="bold"), axis.title.y = element_text(color="blue", size=14, face="bold"))
p5<- p5+ggtitle("P5")+theme(axis.title.x = element_text(color="blue", size=14, face="bold"), axis.title.y = element_text(color="blue", size=14, face="bold"))
grid.arrange(p1, p2, p3, p4, p5, nrow=3,ncol=2)  














