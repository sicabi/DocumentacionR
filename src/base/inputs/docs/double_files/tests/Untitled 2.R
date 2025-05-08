# Function to create curly braces
# x, y position where to put the braces
# range is the widht
# position: 1 vertical, 2 horizontal
# direction: 1 left/down, 2 right/up
CurlyBraces <- function(x, y, range, pos = 1, direction = 1 ) {

      a=c(1,2,3,48,50)    # set flexion point for spline
      b=c(0,.2,.28,.7,.8) # set depth for spline flexion point

      curve = spline(a, b, n = 50, method = "natural")$y / 2

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

plot(0,0,ylim=c(-10,10),xlim=c(-10,10))
CurlyBraces(x = 2, y = 0, range = 10, pos = 1, direction = 1)
CurlyBraces(2, 0, 5,  pos = 1, direction = 2)
CurlyBraces(x = 0, y = 0, range = 3, pos = 2, direction = 1, shape = F)
CurlyBraces(1, 0, range = 5,  pos = 2, direction = 2)
