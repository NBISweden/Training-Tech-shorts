# Create a colorful radial pattern
png("/data/example.png", width = 800, height = 800)
par(mar = c(0,0,0,0), bg = "black")

# Generate points
t <- seq(0, 20*pi, length.out = 2000)
x <- t * cos(t)
y <- t * sin(t)

# Create color gradient
colors <- colorRampPalette(c("purple", "blue", "cyan", "green", "yellow", "orange", "red"))(2000)

# Plot
plot(x, y, type = "l", col = colors[1], lwd = 2, 
     xlim = range(x), ylim = range(y), axes = FALSE, xlab = "", ylab = "")

# Add points with changing colors
for(i in 1:length(x)) {
  points(x[i], y[i], col = colors[i], pch = 16, cex = 0.5)
}

dev.off()
