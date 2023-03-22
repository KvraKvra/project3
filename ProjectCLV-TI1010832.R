start_date <- as.Date("2020-01-01")
now_date <- Sys.Date()
customer_lifespan <- as.numeric(difftime(now_date, start_date, units = "weeks"))/52
average_purchase_value <- 6.45
purchase_frequency_rate <- 3
profit_margin <- 0.25

clv <- average_purchase_value * purchase_frequency_rate * customer_lifespan * (1 + profit_margin)
print(clv)

cat("The customer lifetime value with profit margin is $", round(clv, 2))