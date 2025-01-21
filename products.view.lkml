view: Products {
  sql_table_name: Products ;;  # Exact case-sensitive table name in Spanner

  dimension: ProductID {
    primary_key: yes
    sql: ${TABLE}.ProductID ;;  # Use exact case
  }

  dimension: Name {
    sql: ${TABLE}.Name ;;  # Exact case for column
  }

  dimension: Description {
    sql: ${TABLE}.Description ;;  # Exact case for column
  }

  dimension: Price {
    sql: ${TABLE}.Price ;;  # Exact case for column
  }

  measure: TotalInventoryQuantity {
    type: sum
    sql: (SELECT SUM(Quantity) FROM Inventory WHERE Inventory.ProductID = ${TABLE}.ProductID) ;;
  }

  measure: TotalQuantitySold {
    type: sum
    sql: (SELECT SUM(Quantity) FROM Transactions WHERE Transactions.ProductID = ${TABLE}.ProductID AND Transactions.Type = 'Sale') ;;
  }
}
