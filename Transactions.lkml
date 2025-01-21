view: transactions {
  sql_table_name: transactions ;;

  dimension: transaction_id {
    primary_key: yes
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: type {
    sql: ${TABLE}.type ;;  # 'Sale' or 'Restock'
  }

  measure: total_quantity {
    type: sum
    sql: ${TABLE}.quantity ;;
  }

  dimension_group: transaction_time {
    type: time
    sql: ${TABLE}.timestamp ;;
  }
}
