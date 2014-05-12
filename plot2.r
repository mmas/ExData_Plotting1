df <- read.table('household_power_consumption.txt', sep=';', header=T)
df <- df[df$Date %in% c('1/2/2007', '2/2/2007'),]
df$Global_active_power <- as.numeric(df$Global_active_power)
df$Time <- strptime(df$Time, '%H:%M:%S')
plot(df$Global_active_power / 1000,
     type='l',
     ylab='Global active power (kilowatt)')
dev.copy(png, file='plot2.png')
dev.off()