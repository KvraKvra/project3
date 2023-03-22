# Import the csv customer data file
customer_data <- read.csv("customer_eval.csv")

# Using variables
start_date <- as.Date("2020-01-01")
today_date <- Sys.Date()
customer_lifespan <- as.numeric(difftime(today_date, start_date, units = "weeks"))/52
profit_margin <- 0.25

# Calculate customer lifetime value for each customer
customer_data$CLV <- customer_data$average_purchase_value * customer_data$purchase_frequency_rate * customer_lifespan * (1 + profit_margin)

# Print customer lifetime value for each customer
print(customer_data$CLV)