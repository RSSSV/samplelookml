view: inventory {
  sql_table_name: inventory ;;

  dimension: product_id {
    sql: ${TABLE}.product_id ;;
  }

  dimension: location {
    sql: ${TABLE}.location ;;
  }

  measure: stock_level {
    type: sum
    sql: ${TABLE}.quantity ;;
  }
}
