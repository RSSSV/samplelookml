view: inventory {
  sql_table_name: inventory ;;

  dimension: product_id {
    sql: ${TABLE}.product_id ;;
  }

  dimension: location {
    sql: ${TABLE}.location ;;
  }

  measure: total_stock {
    type: sum
    sql: ${TABLE}.quantity ;;
  }
}
