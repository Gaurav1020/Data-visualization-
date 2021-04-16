trans.data <- data.frame(
  D_code = c(45,45,78,78,78,78,111,111,111),
  District = c("Ranipet","Ranipet","Thirupatthur","Thirupatthur","Thirupatthur","Thirupatthur","Vellore","Vellore","Vellore"),
  Transport_Mode = c("Bicycle","Bike",NA,NA,"Bicycle",NA,"Car","Bicycle","Bike"),
  Pop_total = c(73560,1634923,797818,3865125,42880,7710301,373402,27313,14525322),
  Selfdrive_total = c(2414,42902,21348,75246,1088,399041,13922,1075,557036),
  stringsAsFactors = FALSE
  )






















i<-1
x=c()
for (n in 1:length(trans.data$Selfdrive_total)){
  if (is.na(trans.data[n, 'Transport_Mode'])) {
   x[i]<-trans.data[n, 'District']
   i<-i+1
  }
}
x
length(unique(x))






















z=unique(trans.data$District)
y<-trans.data$D_code
y<-unique(y)
sdt=c(0, 0, 0)
for (p in 1:length(y)){
  for (q in 1:length(trans.data$Selfdrive_total)){
    if (trans.data$D_code[q]==y[p]) {
      sdt[p]=sdt[p]+trans.data$Selfdrive_total[q]
    }
  }
}
sdt.data <- data.frame(y,z,sdt)
sdt.data























max(trans.data$Pop_total)
min(trans.data$Pop_total)































popt=c(0, 0, 0)
for (p in 1:length(y)){
  for (q in 1:length(trans.data$Selfdrive_total)){
    if (trans.data$D_code[q]==y[p]) {
      popt[p]=popt[p]+trans.data$Pop_total[q]
    }
  }
}
sdt.data <- data.frame(y,z,sdt,popt)
sdt.data

sdtper=(sdt.data$sdt/sdt.data$popt)*100
sdt.data <- data.frame(y,z,sdt,popt,sdtper)
sdt.data

Bicy=c()
d=1
for (h in 1:9){
  if(!is.na(trans.data[h, 'Transport_Mode']) & trans.data$Transport_Mode[h]=="Bicycle"){
    Bicy[d]=trans.data$Pop_total[h]
    d<-d+1
  }
}
sdt.data <- data.frame(y,z,sdt,popt,sdtper,Bicy)
sdt.data
Bicyper=(sdt.data$Bicy/sdt.data$popt)*100
sdt.data <- data.frame(y,z,sdt,popt,sdtper,Bicy,Bicyper)
sdt.data



