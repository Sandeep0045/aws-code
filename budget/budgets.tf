#locals {
#  name = "budget"
#}

#resource "aws_budgets_budget" "budget" {
#  name              = "tax"
#  budget_type       = "COST"
#  limit_amount      = "var.limit_amount"
#  limit_unit        = var.limit_unit
#  time_period_end   = "2087-06-15_00:00"
#  time_period_start = "2017-07-01_00:00"
#  time_unit         = "MONTHLY"

#  notification {
#    comparison_operator        = "GREATER_THAN"
#    threshold                  = 80
#    threshold_type             = "PERCENTAGE"
#    notification_type          = "FORECASTED"
#    subscriber_email_addresses = var.subscriber_email_addresses
#  }
#}


resource "aws_budgets_budget" "month" {

    name              = "budget-monthly"
    budget_type       = "COST"
    limit_amount      =  var.limit
    time_unit         = "MONTHLY"
    time_period_end   = "2087-06-15_00:00"
    time_period_start = "2017-07-01_00:00"
    limit_unit        = "USD"
  
    notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 80
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = ["sandeep4597mac@gmail.com"]
  }
}
