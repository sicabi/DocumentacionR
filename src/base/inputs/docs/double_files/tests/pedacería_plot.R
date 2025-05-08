# Basada en la función de Sharon en
# https://stackoverflow.com/questions/6178763/how-to-add-braces-to-a-graph/
CurlyBraces <- function(x, y, range, pos = 1, direction = 1, depth = 1) {
  a=c(1,2,3,48,50)    # set flexion point for spline
  b=c(0,.2,.28,.7,.8) # set depth for spline flexion point
  curve = spline(a, b, n = 50, method = "natural")$y*depth
  curve = c(curve,rev(curve))
  a_sequence = rep(x,100)
  b_sequence = seq(y-range/2,y+range/2,length=100)
  # direction
  if(direction==1)
    a_sequence = a_sequence+curve
  if(direction==2)
    a_sequence = a_sequence-curve
  # pos
  if(pos==1)
    lines(a_sequence,b_sequence) # vertical
  if(pos==2)
    lines(b_sequence,a_sequence) # horizontal
}




rect(xleft = 85, ybottom = 85, xright = 220, ytop = 145,border = FALSE,
     col = "#f9f9f9", lty = 1, lwd = 0.25)
rect(xleft = 151.5, ybottom = 110, xright = 153.5, ytop = 120 ,border = FALSE,
     col = "grey25", lty = 1, lwd = 0.25)
segments(x0 = 151.25, y0 = 119.75, x1 = 151.25, y1 = 110.25, lwd = 0.25, lty = 1, 
         col = "grey25")
segments(x0 = 153.75, y0 = 119.75, x1 = 153.75, y1 = 110.25, lwd = 0.25, lty = 1, 
         col = "grey25")
segments(x0 = 150.250, y0 = 119.75, x1 = 150.250, y1 = 110.25, lwd = 0.25, lty = 1, 
         col = "grey25")
segments(x0 = 154.75, y0 = 119.75, x1 = 154.75, y1 = 110.25, lwd = 0.25, lty = 1, 
         col = "grey25")
segments(x0 = 148.0, y0 = 119.75, x1 = 148.0, y1 = 110.25, lwd = 0.25, lty = 1, 
         col = "grey25")
segments(x0 = 157, y0 = 119.75, x1 = 157, y1 = 110.25, lwd = 0.25, lty = 1, 
         col = "grey25")
segments(x0 = 144.0, y0 = 119.75, x1 = 144.0, y1 = 110.25, lwd = 0.25, lty = 1, 
         col = "grey25")
segments(x0 = 161, y0 = 119.75, x1 = 161, y1 = 110.25, lwd = 0.25, lty = 1, 
         col = "grey25")
segments(x0 = 130.0, y0 = 119.75, x1 = 130.0, y1 = 110.25, lwd = 0.25, lty = 1, 
         col = "grey25")
segments(x0 = 175, y0 = 119.75, x1 = 175, y1 = 110.25, lwd = 0.25, lty = 1, 
         col = "grey25")

segments(x0 = 90, y0 = 115, x1 = 215, y1 = 115, lwd = 0.25, lty = 1)