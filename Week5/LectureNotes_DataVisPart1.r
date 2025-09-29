
data <- read.table('/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/Week5/Mat_Docs/DatasaurusDozen.tsv',sep="\t",header=T)
data

head(data)
table(data$dataset)

ggplot(data=data) + geom_point(aes(x=x,y=y)) + facet_wrap(~dataset)
mean(data$x[data$dataset=="circle"])
mean(data$x[data$dataset=="star"])
mean(data$x[data$dataset=="away"])
mean(data$x[data$dataset=="dots"])
mpg
cars

ggplot(data = mpg) + geom_point(aes(x=displ,y=hwy))
table(mpg$class)

# save multiple plots at once in either png or pdf
png("/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/Week5/Mat_Docs/plot_Test.png")
ggplot(data = mpg) + geom_point(aes(x=displ,y=hwy)) + xlim(c(0,5)) + ylim(c(0,30)) + ylab("HWY MPG") + xlab("Engine Displacement")

ggplot(data = mpg) + geom_point(aes(x=displ,y=hwy)) + xlim(c(0,5)) + ylim(c(20,30)) + ylab("HWY MPG") + xlab("Engine Displacement")

ggplot(data = mpg) + geom_point(aes(x=displ,y=hwy)) + xlim(c(0,5)) + ylim(c(0,30)) + ylab("HWY MPG") + xlab("Engine Displacement")

ggplot(data = mpg) + geom_point(aes(x=displ,y=hwy)) + xlim(c(0,5)) + ylim(c(20,30)) + ylab("HWY MPG") + xlab("Engine Displacement")
dev.off()

ggsave("/Users/cannon/Documents/___UHD_Docs/R_Programming_CS5301/Week5/Mat_Docs/plot1.png", width=5, height = 5, units = "in", dpi=300)

#size of points based on the class of the car belongs to 
ggplot(data = mpg) + geom_point(aes(x=displ,y=hwy,size=class))
# transparency of points based on the class the car belongs 
ggplot(data = mpg) + geom_point(aes(x=displ,y=hwy,alpha=class))
# shape of the points based on the class the car belongs to
ggplot(data = mpg) + geom_point(aes(x=displ,y=hwy,shape=class))
# color of all points = blue
ggplot(data = mpg) + geom_point(aes(x=displ,y=hwy),color="blue", size=3)

typeof(mpg$class)

table(mpg$class)

ggplot(data = mpg) + geom_point(aes(x=displ,y=hwy)) +
  geom_line(aes(x=displ,y=hwy,color=class))

ggplot(data=mpg) + geom_line(aes(x=displ,y=hwy)) + xlab("engine displacement") + ylab("highway mpg")


ggplot(data=mpg) + geom_line(aes(x=displ,y=hwy))

ggplot(data=mpg) + geom_line(aes(x=displ,y=hwy)) + geom_point(aes(x=displ,y=hwy))

ggplot(data=mpg) + geom_point(aes(x=displ,y=hwy)) + facet_wrap(~class)

ggplot(data=mpg) + geom_point(aes(x=displ,y=hwy)) + facet_wrap(~class,nrow=1)

ggplot(data=mpg) + geom_point(aes(x=displ,y=hwy)) + facet_wrap(~class,nrow=2) +
  geom_line(aes(x=displ,y=hwy))


table(mpg$cyl)
table(mpg$drv)

mpg[mpg$drv == "4" & mpg$cly=="4"]

ggplot(data=mpg) + geom_point(aes(x=displ,y=hwy)) + facet_grid(drv ~ cyl)



table(cars$class)

diamonds

table(diamonds$cut)

ggplot(data=diamonds) + geom_bar(aes(x=cut))

ggplot(data=diamonds) + geom_bar(aes(x=cut,y=..prop..,group = 1))
pg < ggolot_build(y)

ggplot(data = diamonds) +
  geom_bar(aes(x = cut, fill = clarity),position="dodge")

ggplot(data=diamonds) + geom_bar(aes(x=carat))

# lecture Part2
ggplot(data=diamonds) + geom_histogram((aes(x=carat)))

ggplot(data=diamonds) + 
  geom_histogram(aes(x=carat,y=..density..)) +
  geom_density(aes(x=carat))

ggplot(data=diamonds) +
  geom_density(aes(x=carat))


ggplot(data=mpg) + geom_boxplot(aes(x=class,y=hwy), outlier.shape = NA,na.rm=TRUE) +
  scale_y_continuous(limits = c(10,38)) + coord_flip()

ggplot(data = diamonds) +
  geom_boxplot( aes(x=cut, y=price,fill = color))

ggplot(data = diamonds) +
  geom_boxplot( aes(x=color, y=price,fill = cut))


ggplot(data = diamonds) +
  geom_boxplot(aes(x=cut, y=price)) +
  facet_wrap(~color,nrow=2)
