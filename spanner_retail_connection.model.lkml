connection: "spanner_retail_connection"  # Replace with your actual connection name

include: "/*.view.lkml"  # Include all views

explore: Products {
  label: "Products with Transactions and Inventory"

  # Join Transactions with Products
  join: Transactions {
    relationship: one_to_many
    sql_on: ${Products.ProductID} = ${Transactions.ProductID} ;;  # Use exact case for table and column
  }

  # Join Inventory with Products
  join: Inventory {
    relationship: one_to_many
    sql_on: ${Products.ProductID} = ${Inventory.ProductID} ;;  # Use exact case for table and column
  }
}
