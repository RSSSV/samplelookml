view: Transactions {
  sql_table_name: Transactions ;;  # Exact case-sensitive table name in Spanner

  dimension: ProductID {
    sql: ${TABLE}.ProductID ;;  # Use exact case
  }

  dimension: TransactionID {
    primary_key: yes
    sql: ${TABLE}.TransactionID ;;  # Exact case for column
  }

  dimension: Type {
    sql: ${TABLE}.Type ;;  # 'Sale' or 'Restock'
  }

  measure: TotalQuantity {
    type: sum
    sql: ${TABLE}.Quantity ;;  # Exact case for column
  }

  dimension_group: TransactionTime {
    type: time
    sql: ${TABLE}.Timestamp ;;  # Exact case for column
  }
}
