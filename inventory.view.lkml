view: Inventory {
  sql_table_name: Inventory ;;  # Exact case-sensitive table name in Spanner

  dimension: ProductID {
    sql: ${TABLE}.ProductID ;;  # Use exact case
  }

  dimension: Location {
    sql: ${TABLE}.Location ;;  # Exact case for column
  }

  measure: TotalStock {
    type: sum
    sql: ${TABLE}.Quantity ;;  # Exact case for column
  }
}
