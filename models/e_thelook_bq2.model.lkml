connection: "thelook_bigquery2"

# include all the views
include: "/views/**/*.view"

datagroup: e_thelook_bq2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: e_thelook_bq2_default_datagroup

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=7.20
# NOTE: for BigQuery specific considerations

explore: all_types {}

explore: asdftest {}

explore: connection_reg_r3 {}

explore: fake_scratch__connection_reg_r3 {}

explore: fatal_error_persist_for_five_seconds {}

explore: looker_scratch__tst_reg_963fdcc02655d76f67 {}

explore: looker_scratch__tst_reg_ebffc1deed5d25a581 {}

explore: nested_and_repeated {}

explore: order_items {
  join: orders {
    #_each
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    #_each
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: users {
    #_each
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_date_string {
  join: users {
    #_each
    type: left_outer
    sql_on: ${orders_date_string.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_date_string_test2 {
  join: users {
    #_each
    type: left_outer
    sql_on: ${orders_date_string_test2.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: partition_table_test2 {}

explore: some_junk {}

explore: testing_table {}

explore: testing_table_one {}

explore: testme {}

explore: users {}
