view: products {
  sql_table_name: products ;;  # Table name in Spanner

  dimension: product_id {
    primary_key: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension: name {
    sql: ${TABLE}.name ;;
  }

  dimension: description {
    sql: ${TABLE}.description ;;
  }

  dimension: price {
    sql: ${TABLE}.price ;;
  }

  measure: total_quantity_sold {
    type: sum
    sql: (SELECT SUM(quantity) FROM transactions WHERE transactions.product_id = ${TABLE}.product_id AND transactions.type = 'Sale') ;;
  }

  measure: total_inventory_quantity {
    type: sum
    sql: (SELECT SUM(quantity) FROM inventory WHERE inventory.product_id = ${TABLE}.product_id) ;;
  }
}
