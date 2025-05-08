options(digits = 7, scipen = 3)
# Parameters
b <- 10
e <- -2
m <- 3.14
p <- nchar(sub(pattern = ".", replacement = "", x = m))
p
(fp_number <- m * b ^ e)
real_number <- 0.0314159
ulp_error = (abs(m - (real_number/(b^e))))*(b^(p-1))
(relative_error <- (real_number - fp_number)/real_number)
ulp_error
((b/2)*(b^(-p)))*(b^e)
(lower_half_ulp <- ((1/2)*(b^(-p))))
(half_ulp <- ((b/2)*(b^(-p)))*(b^e))
(upper_half_ulp <- ((b/2)*(b^(-p))))
(machine_epsilon <- ((b/2)*(b^(-p))))
(ulp <- half_ulp*2)
fp_number
real_number
(error_epsilon <- (relative_error/machine_epsilon))
b^(-p)
b^(-p+1)

# Accuracy of fp operations
options(digits = 21, scipen = 3)
x <- 4.3
y <- 2.7
(x^2) - (y^2)
(x + y)*(x - y)

## Guard Digits
options(digits = 22, scipen = 999)
formatC(x = 2.5e12, digits = 30, format = "f")
2.5e12 - 1.25e-5
install.packages("Rmpfr")
library("Rmpfr")

## Cancellation in quadractic formula

b <- 3.34
a <- 1.22
c <- 2.28

x <- b^2 - 4*a*c
x1 <- round(b^2,1) - round(4*a*c,1)
x
x1

x1 - x


## Cancellation calculating the area of a triangle

a <- 9
b <- c <- 4.53
s <- (a + b + c)/2
s
triangle_area <- sqrt(s*(s-a)*(s-b)*(s-c))
triangle_area

triangle_area <- sqrt((((1*a+(b+c))*(c-(a-b)))*((c+(a-b))*(a+(b-c)))))/4
triangle_area
T