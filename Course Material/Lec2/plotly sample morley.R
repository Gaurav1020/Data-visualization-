library(plotly)


str (morley)


morley


p = plot_ly(data=morley,
            x=~Expt,
            y=~Speed,
            type = "scatter",
            mode = "markers"
)
p


p = plot_ly(data=morley,
            x=~Expt,
            y=~Speed,
            type = "scatter",
            mode = "markers",
            color = I("Black")
)
p


p = plot_ly(data=morley,
            x=~Expt,
            y=~Speed,
            type = "scatter",
            mode = "markers",
            marker = list(color="red", size=10)
)
p


p = plot_ly(data=morley,
            x=~Expt,
            y=~Speed,
            type = "scatter",
            mode = "markers",
            marker = list(size = 10,
                          color = 'rgba(255, 0, 0, 1)',
                          line = list(color = 'rgba(0, 0, 0, 0.5)',
                                      width = 2))
)
p

p = plot_ly(data=morley,
            x=~Run,
            y=~Speed,
            type = "scatter",
            mode = "markers",
            color = ~as.factor(Expt))

p
