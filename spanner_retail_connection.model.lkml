connection: "spanner_retail_connection"  # Replace with your actual connection name

include: "/*.view.lkml"  # Include all views

explore: products {
  label: "Products with Transactions and Inventory"

  # Join Transactions with Products
  join: transactions {
    relationship: one_to_many
    sql_on: ${products.product_id} = ${transactions.product_id} ;;  # This works since ProductID exists in both tables
  }

  # Join Inventory with Products
  join: inventory {
    relationship: one_to_many
    sql_on: ${products.product_id} = ${inventory.product_id} ;;
  }
}
