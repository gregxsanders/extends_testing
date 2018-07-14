include: "thebase.view.lkml"
view: customera {
  extends: [thebase]
#  sql_table_name: extensions.customera ;; #this would be parameterized in production
  sql_table_name: extensions.{{ _user_attributes["customer_table_name"] }} ;;
  #dimensions programatically added through Marketo UI or as customers add custom columns in Looker
  dimension: customcol1 {
    type: string
    sql: ${TABLE}.customcol1 ;;
  }

  dimension: customcol2 {
    type: string
    sql: ${TABLE}.customcol2 ;;
  }

  measure: count {
    type: count
  }
}
