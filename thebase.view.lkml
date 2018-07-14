# view: thebase {
#   sql_table_name: extensions.thebase ;;
#
# # and the base view would look like:
# # why? shouldn't this point to a shared customer base table with user attributes dictating data access
# # view: orders {
# #  sql_table_name: {{ _user_attributes["customer_table_name"] }} ;;
#
#
#   dimension: campaign_id {
#     type: number
#     sql: ${TABLE}.campaign_id ;;
#   }
#
#   dimension: campaign_name {
#     type: string
#     sql: ${TABLE}.campaign_name ;;
#   }
#
#   dimension: event_id {
#     type: number
#     sql: ${TABLE}.event_id ;;
#   }
#
#   dimension_group: eventdate {
#     type: time
#     timeframes: [
#       raw,
#       date,
#       week,
#       month,
#       quarter,
#       year
#     ]
#     convert_tz: no
#     datatype: date
#     sql: ${TABLE}.eventdate ;;
#   }
#
#   dimension: keyword {
#     type: string
#     sql: ${TABLE}.keyword ;;
#   }
#
#   measure: count {
#     type: count
#   }
# }
