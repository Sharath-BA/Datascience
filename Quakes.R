quakes<-datasets::quakes
quakes
head(quakes)
tail(quakes)

quakes[,1]
quakes$mag

#Summary of Quakes DS

summary(quakes)
summary(quakes$depth)

#Plot 

plot(quakes$lat)
plot(quakes$lat,quakes$long)
plot(quakes)

plot(quakes$depth,type = 'l' ) #lines
plot(quakes$depth,type = 'p' ) #points
plot(quakes$depth,type = 'b' ) #both

plot(quakes$mag, xlab = 'Index',ylab = 'Magnitude',main = 'Magnitude of Earth Quake', col='Green')

# Bar Plot
barplot(quakes$mag, xlab = 'Index',ylab = 'Magnitude',main = 'Magnitude of Earth Quake', col='red',horiz = T)

#Histogram

hist(quakes$lat, main = 'Latitude', col='blue')


#Box Plot

boxplot(quakes$stations)

boxplot(quakes[,1:4],main = 'Multiple')

#Multiple Graphs

par(mfrow=c(3,3),mar=c(3,3,4,2),las=0, bty='o')
plot(quakes$lat)
plot(quakes$long)
plot(quakes$depth)
plot(quakes$mag, quakes$stations)
plot(quakes$lat,quakes$long)
barplot(quakes$mag, xlab = 'Index',ylab = 'Magnitude',main = 'Magnitude of Earth Quake', col='red',horiz = T)
boxplot(quakes[,1:4],main = 'Multihist(quakes$lat, main = 'Latitude', col='blue')
hist(quakes$lat, main = 'Latitude', col='blue')
