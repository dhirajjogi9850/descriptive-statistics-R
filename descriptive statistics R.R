


airquality <- datasets::airquality

###Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

######columns
airquality[50:60,c(1,2)]

df<-airquality[,-6]

#Descriptive Statistics
#1
summary(airquality[,c(4,5)]) #generate for column 2,3

airquality$Temp
airquality$Wind
airquality$Ozone

airquality$Solar.R

#1
summary(airquality$Wind)
summary(airquality$Month)

#ozone
summary(airquality$Ozone)
##########summary of the data########

summary(airquality)
summary(airquality$Wind)

######################
#visualization
#scatter plot
plot(airquality$Wind)

plot(airquality$tem,airquality$Ozone,type="l")

plot(airquality) #Scatter Matrix

# points and lines
plot(airquality$Wind, type= "l") # p: point l: lines,b: both

plot(airquality$wind, type= "b")
plot(airquality$Wind, xlab = 'ozone concentration',
     ylab = 'No of Instances', main = 'ozone levels in NY city',
     col = 'blue',type='l')

# Horizontal bar plot
barplot(airquality$Ozone, main = 'ozone concentration i air',
        ylab = 'ozone levels', col = 'blue', horiz = F,axes=T)

#Histogram
hist(airquality$Temp)
hist(airquality$Temp,
     main = 'solar Radiation values in air',
     xlab = 'solar rad.', col='blue')


#Single box plot
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)$out

boxplot.stats(airquality$Ozone)$out

# Multiple box plots

boxplot(airquality[,1:4],main='multiple')

--------------------
#margin of the grid(mar)
#no of rows and columns(mfrow),
#whether a border is to be included(bty)
#and position of the
#lables(las: 1 for the horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="0")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind) 
plot(airquality$Ozone, type= "l")  
plot(airquality$Ozone, type= "l")  
plot(airquality$Ozone, type= "l")  
barplot(airquality$Ozone, main = 'ozone concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)  
hist(airquality$Solar.R)  
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

#summary(airquality)
