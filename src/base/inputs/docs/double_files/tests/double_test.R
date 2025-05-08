w <- 3
sesgo <- (2^(w-1)) - 1
exp_interno <- 1:((2^w) - 2)
exp_externo = exp_interno - sesgo
valor <- 2^exp_externo
esquema <- data.frame(exp_interno, exp_externo, valor)
mantissa <- seq(from = 1, to = 2, length.out = length(valor))
counter <- 1
flotante <- double()
for (i in 1:length(mantissa)) {
      for (j in 1:length(valor)) {
            flotante[counter] <- valor[j]*mantissa[i]
            counter <- counter + 1
      }
}

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


