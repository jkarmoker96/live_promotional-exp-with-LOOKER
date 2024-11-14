connection: "mrep_skf"

include: "/views/live_sales_dimensions.view.lkml"
include: "/views/bm_prinfoskf.view.lkml"
# include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
include: "/models/Live_Sales_Dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: live_sales_dimensions {
  join: bm_prinfoskf {
    type: left_outer
    relationship: many_to_one
    sql_on: ${live_sales_dimensions.item_id} = ${bm_prinfoskf.itemno} ;;
  }

  # join: users {
  #   relationship: many_to_one
  #   sql_on: ${users.id} = ${orders.user_id} ;;
  # }
}
