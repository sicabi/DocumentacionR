par(omi = c(0, 0, 0, 0), mai = c(0, 0, 0, 0))
x_lim_neg <- -200
x_lim_pos <- 200
plot(x = 0, y = 0, xlim = c(x_lim_neg,x_lim_pos), ylim = c(0, 150), type = "n",
     xlab = "", ylab = "", axes = F)
rect(xleft = -20, ybottom = 0, xright = +20, ytop = 100,
     col = "#fffee2", border = NA)
text(x = 0, y = 57, labels = "Absorción a\n", cex = 0.70, font = 1)
text(x = 0, y = 50, labels = expression(0), cex = 0.85, font = 1)
rect(xleft = -20, ybottom = 0, xright = -25, ytop = 100,col = "#cdf3cb",
     border = NA)
rect(xleft = 20, ybottom = 0, xright = 25, ytop = 100, col = "#cdf3cb",
     border = NA)
text(x = 0, y = 140, labels = "Números \n subnormales", cex = 0.85, font = 1)
rect(xleft = -25, ybottom = 0, xright = -150, ytop = 100, col = "#d8fcd6",
     border = NA)
rect(xleft = 25, ybottom = 0, xright = 150, ytop = 100, col = "#d8fcd6",
     border = NA)
rect(xleft = -151, ybottom = 0, xright = -200, ytop = 100,
     col = "#fcdcd6", border = NA)
rect(xleft = +151, ybottom = 0, xright = 200, ytop = 100,
     col = "#fcdcd6", border = NA)
text(x = -172, y = 67, labels = "Desbordamiento a",
     cex = 0.85, font = 1)
text(x = -172, y = 55, labels = expression(-infinity),
     cex = 0.85, font = 1)
text(x = +172, y = 67, labels = "Desbordamiento a",
     cex = 0.85, font = 1)
text(x = +172, y = 55, labels = expression(+infinity),
     cex = 0.85, font = 1)
text(x = -80, y = 50, labels = "Rango utilizable", cex = 0.85, font = 1)
text(x = +80, y = 50, labels = "Rango utilizable", cex = 0.85, font = 1)
lines(x = c(x_lim_neg,x_lim_pos), y = c(0,0), lwd = 0.75)

