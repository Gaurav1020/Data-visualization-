library(plotly)
Econdata <- read.csv("C:\\Users\\DELL\\Desktop\\Data Vis\\Lab\\DA\\DA2\\EconomistData.csv")
Econdata
View(Econdata)


p = plot_ly(data=Econdata,
            x=~Region,
            y=~HDI,
            type = "bar" 
)
p


p = plot_ly(data=Econdata,
            x=~CPI,
            y=~HDI,
            type = "scatter"
)
p



p = plot_ly(data=Econdata,
            x=~CPI,
            y=~HDI,
            type = "scatter",
            mode="markers",
            color=I("green")
)
p



p = plot_ly(data=Econdata,
            x=~CPI,
            y=~HDI,
            type = "scatter",
            mode="markers",
            color=~as.factor(Region)
)
p


p = plot_ly(data=Econdata,
            x=~CPI,
            y=~HDI,
            type = "scatter",
            mode="markers",
            color=~as.factor(Region),
            marker=list(size = 4)
)
p



p = plot_ly(data=Econdata,
            x=~CPI,
            y=~HDI,
            type = "scatter",
            mode="markers",
            color=~as.factor(Region),
            marker=list(size = ~HDI.Rank/10)
)
p





p = plot_ly(data=Econdata,
            x=~CPI,
            y=~HDI,
            type = "scatter",
            mode="markers",
            color=~as.factor(Region),
            text = ~paste("HDI Rank: ", HDI.Rank),
            symbol=~Region,
            symbols=c('diamond','x','triangle-up-dot','square','circle-dot','star'),
            marker=list(size = 7)
)
p




p = plot_ly(data=Econdata,
            x=~CPI,
            y=~HDI,
            type = "scatter",
            mode="markers",
            color=~as.factor(Region),
            text = ~paste("HDI Rank: ", HDI.Rank),
            symbol=~Region,
            symbols=c('diamond','x','triangle-up-dot','square','circle-dot','star'),
            marker=list(size = 7)
)
p





p = plot_ly(data=Econdata,
            x=~CPI,
            y=~HDI,
            type = "scatter",
            mode="markers",
            color=~as.factor(Region),
            text = ~paste("HDI Rank: ", HDI.Rank),
            symbol=~Region,
            symbols=c('diamond','x','triangle-up-dot','square','circle-dot','star'),
            marker=list(size = 7)
            )%>%
layout(title="Economists data",
       xaxis=list(title="CPI"),
       yaxis=list(title="HDI"))
p










p = plot_ly(data=Econdata,
            x=~CPI,
            y=~HDI,
            type = "scatter",
            mode="markers",
            color=~as.factor(Region),
            text = ~paste("HDI Rank: ", HDI.Rank, "Country: ", Country),
            symbol=~Region,
            symbols=c('diamond','x','triangle-up-dot','square','circle-dot','star'),
            marker=list(size = 7)
)%>%
  layout(title="Economists data",
         xaxis=list(title="CPI"),
         yaxis=list(title="HDI"))%>%
  add_annotations(
    x=Econdata$CPI[which.max(Econdata$HDI.Rank)],
    y=Econdata$HDI[which.max(Econdata$HDI.Rank)],
    text="Lowest Ranking",
    showarrow=T)%>%
  add_annotations(
    x=Econdata$CPI[which.min(Econdata$HDI.Rank)],
    y=Econdata$HDI[which.min(Econdata$HDI.Rank)],
    text="Highest Ranking",
    showarrow=T)
p




p = plot_ly(data=Econdata,
            x=~CPI,
            y=~HDI,
            type = "scatter",
            mode="markers",
            color=~as.factor(Region),
            text = ~paste("HDI Rank: ", HDI.Rank, "Country: ", Country),
            symbol=~Region,
            symbols=c('diamond','x','triangle-up-dot','square','circle-dot','star'),
            marker=list(size = 7)
)%>%
  layout(title="Economists data",
         xaxis=list(title="CPI"),
         yaxis=list(title="HDI"))%>%
  add_annotations(
    x=Econdata$CPI[Econdata$Country=="India"],
    y=Econdata$HDI[Econdata$Country=="India"],
    text="India",
    showarrow=T)
p











jpeg("rplot.jpg")
 p =plot_ly(data=Econdata,
            x=~CPI,
            y=~HDI,
            type = "scatter",
            mode="markers",
            color=~as.factor(Region),
            text = ~paste("HDI Rank: ", HDI.Rank, "Country: ", Country),
            symbol=~Region,
            symbols=c('diamond','x','triangle-up-dot','square','circle-dot','star'),
            marker=list(size = 7)
)%>%
  layout(title="Economists data",
         xaxis=list(title="CPI"),
         yaxis=list(title="HDI"))%>%
  add_annotations(
    x=Econdata$CPI[Econdata$Country=="India"],
    y=Econdata$HDI[Econdata$Country=="India"],
    text="India",
    showarrow=T)
p
dev.off()