view: testme {
  sql_table_name: [looker_test.testme]
    ;;

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: yesnofield {
    type: yesno
    sql: ${TABLE}.yesnofield ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [name]
  }
}
