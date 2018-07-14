connection: "dell"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: exp_customera {
  label: "explore label for customer a"
  from: customera
}



# explore: Explore_Customer_A {
#   label: "Orders"
#   extends: [orders]
#   from: Customer_A
#
# }
#
# view: Customer_A {
#   extends: [orders]
#   sql_table_name: {{ _user_attributes["customer_table_name"] }} ;;
#   view_label: "Orders"
#   dimension: customCol1 {
#     sql: ${TABLE}.customCol1 ;;
#   }
#
#   dimension: customCol2 {
#     sql: ${TABLE}.customCol2 ;;
#   }
# }

# and the base view would look like:
# view: orders {
#  sql_table_name: {{ _user_attributes["customer_table_name"] }} ;;
