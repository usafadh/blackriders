options(scipen=999)  # turn off scientific notation like 1e+06
library(ggplot2)
data("midwest", package = "ggplot2")  # load the data
# midwest <- read.csv("http://goo.gl/G1K41K") # alt source 

# Init Ggplot
ggplot(midwest, aes(x=area, y=poptotal))  # area and poptotal are columns in 'midwest'

g <- ggplot(syuzhet_tbl, aes(x=x, y=y)) + geom_point() + geom_smooth(method="lm")  
# set se=FALSE to turnoff confidence bands
g_with_labs <- g + labs(title = "Sentiment Analysis", subtitle = "Black Riders", x="intensity of sentiment", y="sentence position", caption = "sentiment by sentence" )

plot(g_with_labs)

ggsave(file="sentimentPlot.svg", plot = g_with_labs)