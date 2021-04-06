str(morley)

summary(morley)

plot(morley)

plot(morley$Expt)


par(mfrow=c(3,3), mar=c(2,5,2,1), las=1, bty="n")


hist(morley$Expt, main="Histogram",col="blue")


plot(morley$Expt, morley$Speed, main="Scatterplot",
     xlab="Expt ", ylab="Speed", pch=1,
     col=c("blue", "green"))



counts <- table(morley$Expt)
barplot(counts, main="Experiment",
        xlab="no. of Expt",horiz=TRUE)


counts <- table(morley$Expt, morley$Run)
barplot(counts, main="Morley Distribution by Experiment and Speed",
        xlab="Expt", col=c("darkblue","red"),
        legend = rownames(counts))


counts <- table(morley$Expt, morley$Speed)
barplot(counts, main="Morley Distribution by Experiment number and Speed",
        xlab="Experiment", col=c("darkblue","red"),
        legend = rownames(counts), beside=TRUE)


slices <- c(10,20,30,40,50)
lbls <- c("A","B","C","D","E")
pie(slices, labels = lbls)


boxplot(Expt~Speed,data=morley, main="Light Speed data",
        xlab="Expt", ylab="Speed")


