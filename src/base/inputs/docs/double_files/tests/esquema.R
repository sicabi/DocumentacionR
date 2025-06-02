
m_values <- (1:2^11)
m_values
e_values <- (1:2^5)
e_values

test <- expand.grid("significant" = m_values,"exponent" =e_values)
test

plot(x = test$exponent, y = test$significant)

test$value = test$significant * test$exponent

range <- lapply(minifloat, fivenum)

plot(y = c(0,0,0,0,0), x = range[[15]])
