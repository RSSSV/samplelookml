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

  measure: total_sales {
    type: sum
    sql: ${TABLE}.sales_quantity ;;  # Replace `sales_quantity` with your actual column
  }
}
