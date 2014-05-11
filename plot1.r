df <- read.table('household_power_consumption.txt', sep=';', header=T)
df <- df[df$Date %in% c('1/2/2007', '2/2/2007'),]
df$Global_active_power <- as.numeric(df$Global_active_power)
hist(df$Global_active_power / 1000,
     main='Global active power',
     xlab='Global active power (kilowatts)',
     col='red')
dev.copy(png, file='plot1.png')
dev.off()