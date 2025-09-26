### Author: Jose Sicabi Cruz Salinas
### This code creates an independent .png file for the graph that represents 
### the interchange format of the IEEE-754-2019 binary floating-point standard, 
### as depicted in page 19 of this document. Labels are translated to Spanish.
### Date: 25-09-2025
fileName <- paste("src/base/inputs/plots/interchange.png")
png(filename = fileName, units = "cm", height = 7.5, width = 14, res = 600)
options(digits = 3)

### Plot's dimensions
par(omi = c(0.1, 0.15, 0.1, 0.05), mai = c(0, 0, 0, 0), family = "Liberation")
x_lim_inf <- -50; x_lim_sup <- 50
y_lim_inf <- 0;y_lim_sup <- 50

### Boxes' top and bottom
height <- y_lim_sup * 0.75
bottom <- y_lim_sup * 0.40

### Plot's canvas
plot(x = 0, y = 0, xlim = c(x_lim_inf, x_lim_sup), 
     ylim = c(y_lim_inf, y_lim_sup), type = "n", 
     xlab = "", ylab = "",  axes = FALSE)

### Boxes representing the fields
rect(xleft = x_lim_inf * 0.95, xright = x_lim_inf * 0.65, 
     ybottom = bottom, ytop = height, border = TRUE)
rect(xleft = x_lim_inf * 0.65, xright = x_lim_inf * 0.15, 
     ybottom = bottom, ytop = height, border = TRUE)
rect(xleft = x_lim_inf * 0.15, xright = x_lim_sup * 0.9,
     ybottom = bottom, ytop = height, border = TRUE)

### Inside labels for the boxes -- bigger
fontsize_box = 1.25
text(x = x_lim_inf * 0.80, y = height * 0.85, labels = "S", 
     cex = fontsize_box, font = 3)
text(x = x_lim_inf * 0.40, y = height * 0.85, labels = "E", 
     cex = fontsize_box,font = 3)
text(x = x_lim_sup * 0.35, y = height * 0.85, labels = "F", 
     cex = fontsize_box, font = 3)

# Inside labels for the boxes -- smaller
text(x = x_lim_inf * 0.80, y = height * 0.75, 
     labels = "(el signo)",cex = fontsize_box * 0.65)
text(x = x_lim_inf * 0.40, y = height * 0.75, labels = "(el exponente)",
     cex = fontsize_box * 0.65)
text(x = x_lim_sup * 0.35, y = height * 0.70, 
     labels = "(la parte fraccionaria \ndel significante)", 
     cex = fontsize_box * 0.65)

# Lower annotations for the boxes
## Repeat as many dots as the length of each box
text(x = x_lim_inf * 0.4, y = bottom * 0.9,
     labels = bquote(E[0] * .(strrep(".", 
                                     abs((0.65-0.15)*(x_lim_inf)))) * E[w - 1]),
     cex = fontsize_box * 0.60, font=3)
## Repeat as many dots as the length of each box
text(x = x_lim_sup * 0.38, y = bottom * 0.9,
     labels = bquote(d[0] * .(strrep(".", 
                                     abs((0.15*x_lim_inf)-(x_lim_sup*0.9)))) * d[p - 1]),
     cex = fontsize_box * 0.60, font = 3)

# Upper annotations for the boxes -- number of bits
text(x = x_lim_inf * 0.8, y = height * 1.05,
     labels = "1 dígito", 
     cex = fontsize_box * 0.60, font=3)
text(x = x_lim_inf * 0.4, y = height * 1.05,
     labels = "w dígitos",
     cex = fontsize_box * 0.60, font=3)
text(x = x_lim_sup * 0.38, y = height * 1.05,
     labels = "t = p - 1 dígitos",
     cex = fontsize_box * 0.60, font=3)

# Upper annotations for the boxes -- significant bits

text(x = c(x_lim_inf * 0.61, x_lim_inf * 0.11), 
     y = c(height * 1.05),
     labels = c("DMS"),
     cex = fontsize_box * 0.45)
text(x = c(x_lim_inf * 0.19, x_lim_sup * 0.85), 
     y = c(height * 1.05),
     labels = c("dms"),
     cex = fontsize_box * 0.45)

# Margin annotation -- significant bits

mtext(text = "DMS: dígito más significativo.", side = 1, 
     cex = fontsize_box*0.55,line = -2, adj = 0)
mtext(text = "dms: dígito menos significativo.", side = 1, 
     cex = fontsize_box*0.55,line = -1.3, adj = 0)

dev.off()
