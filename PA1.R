activity <- read.csv("~/Reproducible-Research---Week-2-Project/activity.csv", stringsAsFactors=FALSE)
head(activity)
str(activity)

library(lubridate)
activity$date <- ymd(activity$date)
str(activity)

library(dplyr)
activity_grouped <- aggregate(activity$steps, by=list(Category=activity$date), FUN=sum)
str(activity_grouped)
names(activity_grouped)[1] <- "date"
names(activity_grouped)[2] <- "steps"

activity[activity$date == ymd("2012-10-08"), ]

library(ggplot2)

ggplot(activity, aes())

str(activity)
str(activity_grouped)
