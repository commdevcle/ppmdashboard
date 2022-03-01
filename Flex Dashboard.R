install.packages("flexdashboard")
library(flexdashboard)

library(flexdashboard)
library (knitr)
library (DT)
install.packages("rpivotTable")
library (rpivotTable)
library(ggplot2)
install.packages("plotly")
library(plotly)
install.packages("dplyr")
library(dplyr)
install.packages("openintro")
library(oepnintro)
install.packages("highcharter")
library(highchacter)

library(odbc)
library(DBI)
library(dplyr)
library(dbplyr)
library(RODBC)
library(lubridate)
library(zoo)
library(tibble)
library(scales)
library(tidyverse)
library(hrbrthemes)
library(xfun)
library(ggpmisc)



myplot <- ggplot(mypm.completed, aes(x = reorder(ProgramType, WeekNo, fun=median), y=WeekNo, fill=ProgramType)) +
  geom_boxplot(color='#000000', lwd=0.5) +
  geom_point(pch=5, position=position_jitterdodge())+
  theme_classic() +
  xlab("Program Type") + 
  ylab("# of Weeks")  + 
  coord_flip()+
  theme(legend.position="none")

myplot


myplot1 <-ggplot(mypm.completed, aes(WeekNo, colour=ProgramType)) +
  geom_freqpoly(binwidth = 7) +
  facet_wrap(~ProgramType)+
  theme(legend.position="none")
  

myplot1
             