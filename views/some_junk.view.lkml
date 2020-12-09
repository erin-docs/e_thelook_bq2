view: some_junk {
  sql_table_name: [looker_test.some_junk]
    ;;

  dimension: col {
    type: number
    sql: ${TABLE}.col ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }
}
