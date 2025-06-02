x <- 1/4
k <- x*32
p <- k - round(4*log(x = k, base = 2)) + 13
t <- p - 1
w <- k - t - 1
e_max <- 2^(w-1) - 1
e_max
e_min <- 1 - e_max
b <- e_max

c(W = p + w, signo = k - t - w, exp = w, m = p)

(w_s <- 1)
(w_e <- 3)
(w_m <- 4)
(sesgo <- (2^(w_e-1)) - 1)
(exp_interno <- 1:((2^w_e)) - 1)
(exp_externo = exp_interno - sesgo)
(beta_exp <- 2^exp_externo)

upper_limit <- double(length = 1)
for (i in 1:w_m) {
  upper_limit <- upper_limit + (1/2)^(i)
}
(mantissa <- seq(from = 0, to = upper_limit, 
                length.out = 2^w_m))
(mantissa <- mantissa + 1)
fp <- expand.grid(c(-1,1), beta_exp, mantissa)
fp <- fp[order(fp$Var1, decreasing = FALSE),]
colnames(fp)[1:3] <- c("decimal_sign","decimal_baseToexp","decimal_mantissa")
fp$flotante <- fp$sign*fp$baseToexp*fp$mantissa
fp <- fp[order(fp$flotante, decreasing = FALSE),]


plot(xlim = c(min(mantissa),max(mantissa)), 
     ylim = c(min(exp_externo)*1.15,max(exp_externo)*1.15), 
     x = mantissa, y = exp_externo, cex = 0.3)


valores_x <- c(-flotante[length(flotante):1],0,flotante) |>
      sort() |> unique()
valores_x <- valores_x
valores_y <- double(length = length(valores_x))
plot(x = valores_x[14:50],
     y = valores_y[14:50],
     type = "p", pch = 3, axes = F, ann = F,
     ylim = c(-0.1,1.5))
lines(x = c(valores_x[14],valores_x[50]), y = c(0,0))



segments(x0 = 0, y0 = 0,
         x1 = valores_x[((length(valores_x) - 1) / 2) + 1],
         y1 = 0.5)


segments(x0 = 0.25, y0 =0,
         x1 =((length(valores_x) - 1) / 2),
         y1 = 0.75)
segments(x0 = valores_x[((length(valores_x) - 1) / 2)], y0 =0,
         x1 = valores_x[((length(valores_x) - 1) / 2)], y1 = 0.75)


