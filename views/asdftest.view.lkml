view: asdftest {
  sql_table_name: [looker_test.asdftest]
    ;;

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: rn {
    type: string
    sql: ${TABLE}.rn ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [name]
  }
}
