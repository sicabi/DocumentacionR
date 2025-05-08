fileName <- paste("double.png")
png(filename = fileName, units = "cm", height = 5.5, width = 12, res = 600)
options(digits = 3)
par(omi = c(0.1, 0, 0, 0), mai = c(0, 0, 0, 0), family = "Liberation", cex = 0.5)
x_lim_neg <- -225
x_lim_pos <- 225
y_lim_pos <- 50
y_lim_neg <- 20
plot(x = 0, y = 0, xlim = c(x_lim_neg,x_lim_pos), ylim = c(0, 200), type = "n", xlab = "", ylab = "", axes = FALSE)
rect(xleft = -20, ybottom = y_lim_neg, xright = +20, ytop = y_lim_pos,
     col = "#fffee2", border = NA)
rect(xleft = -20, ybottom = y_lim_neg, xright = -30, ytop = y_lim_pos, col = "#DAF7A6",
     border = NA)
rect(xleft = 20, ybottom = y_lim_neg, xright = 30, ytop = y_lim_pos, col = "#DAF7A6",
     border = NA)
rect(xleft = -30, ybottom = y_lim_neg, xright = -140, ytop = y_lim_pos, col = "#d8fcd6",
     border = NA)
rect(xleft = +30, ybottom = y_lim_neg, xright = +140, ytop = y_lim_pos, col = "#d8fcd6",
     border = NA)
rect(xleft = -140, ybottom = y_lim_neg, xright = x_lim_neg, ytop = y_lim_pos,
     col = "#fcdcd6", border = NA)
rect(xleft = +140, ybottom = y_lim_neg, xright = x_lim_pos, ytop = y_lim_pos,
     col = "#fcdcd6", border = NA)
text(x = 0, y = y_lim_pos*0.65, labels = "Absorción\n al 0", font = 1)
text(x = 0, y = 2, labels = "Números \n anormales", font = 1)
text(x = -80, y = y_lim_pos*0.70, labels = "Numeros\n normales", font = 1)
text(x = +80, y = y_lim_pos*0.70, labels = "Números\n normales", font = 1)
text(x = -182, y = y_lim_pos*0.70, labels = "Desbordamiento a\n", font = 1)
text(x = -182, y = y_lim_pos*0.60, labels = expression(-infinity), font = 1)
text(x = +182, y = y_lim_pos*0.70, labels = "Desbordamiento a\n", font = 1)
text(x = +182, y = y_lim_pos*0.60, labels = expression(+infinity), font = 1)
text(x = c(0,30,40,140),
     y = seq(from = y_lim_pos*1.15, to = y_lim_pos*3.75, length.out = 4),
     labels= c(expression(0),expression(4.94%*%10^-324),expression(2.2%*%10^-308),
               expression(1.79%*%10^308)))
text(x = c(0,43,43,140),y = seq(from = y_lim_pos, to = y_lim_pos*3.55, length.out = 4),
     labels= c("","anormal_mínimo","normal_mínimo","normal_máximo"))
text(x = c(0,-37,-40,-140),
     y = seq(from = y_lim_pos*1.15, to = y_lim_pos*3.75, length.out = 4),
     labels= c(expression(0),expression(-4.94%*%10^-324),expression(-2.2%*%10^-308),expression(-1.79%*%10^308)))
text(x = c(0,-40,-40,-140),y = seq(from = y_lim_pos, to = y_lim_pos*3.55, length.out = 4),
     labels= c("","— anormal_mínimo","— normal_mínimo","— normal_máximo"))
arrows(x0 =x_lim_neg, x1 = x_lim_pos, y0 = 50, y1= 50,lwd = 0.55, code = 3,
       length = 0.05)
float_lines <- function(from = 0, to = 10, by = 0.5, lwd =0.5) {
      x_neg <- seq(from, to, by)
      x_pos <- sort(x_neg * -1)
      x <- c(x_neg,x_pos)
      segments(x0 = x, y0 = rep(46, length(x)), x1 = x, 
               y1 = rep(53,length(x)), lwd = lwd, col = "#a0a0a0")
}
float_lines(from = 0, to = 0, by = 0,lwd = 0.25)
float_lines(from = -20, to = -30, by = -0.5,lwd = 0.25)
float_lines(from = -30, to = -50, by = -0.5,lwd = 0.45)
float_lines(from = -50, to = -70, by = -0.5,lwd = 0.45)
float_lines(from = -70, to = -90, by = -1.5,lwd = 0.35)
float_lines(from = -91, to = -120, by = -2.5,lwd = 0.35)
float_lines(from = -121, to = -140, by = -9.5,lwd = 0.35)
float_lines(from = -140, to = -140, by = 0,lwd = 0.25)
float_lines(from = 140, to = 140, by = 0,lwd = 0.25)
segments(x0 = c(20,30,140),x1 = c(20,30,140),
         y0 = c(50,50,50),
         y1= seq(from = y_lim_pos*0.85, to = y_lim_pos*3.45, length.out = 4)[2:4],
         lwd = 0.45, col = "blue", lty = 1)
segments(x0 = c(-20,-30,-140),x1 = c(-20,-30,-140),
         y0 = c(50,50,50), y1= seq(from = y_lim_pos*0.85, to = y_lim_pos*3.45, length.out = 4)[2:4],
         lwd = 0.45, col = "red", lty = 1)
segments(x0 = c(-20,20), y0 = c(2,2), x1 = c(-25,25),
         y1 = c(2,2), lwd = 0.45)
arrows(x0 = c(-25,25), x1 = c(-25,25), y0 = c(2,2), y1= c(19,19),
       lwd = 0.45, code = 2,length = 0.015)
x_segments <- c(-140,-30,-20,0,20,30,140); 
y0_segments <- rep(53, length(x_segments));
y1_segments <- rep(46, length(x_segments))
segments(x0 = x_segments, y0 = y0_segments, x1 = x_segments,
         y1 = y1_segments, lwd = 0.75)
dev.off()


















