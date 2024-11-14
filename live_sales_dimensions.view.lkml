# The name of this view in Looker is "Live Sales Dimensions"
view: live_sales_dimensions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `skf-bq-analytics-hub.mrep_skf.live_sales_dimensions` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Client ID" in Explore.

  dimension: client_id {
    type: string
    sql: ${TABLE}.client_id ;;
  }

  dimension: thirty_minute_interval {
    type: string
    sql:
      TIMESTAMP_ADD(
        TIMESTAMP_TRUNC(${TABLE}.posted_on, HOUR),
        INTERVAL CAST(FLOOR(EXTRACT(MINUTE FROM ${TABLE}.posted_on) / 30) * 30 AS INT64) MINUTE
      ) ;;
  }


  measure: cumulative_sales {
    type: running_total
    sql:  SUM(${sales}) ;;
  }

  dimension: client_name {
    type: string
    sql: ${TABLE}.client_name ;;
  }

  dimension: depot_id {
    type: string
    sql: ${TABLE}.depot_id ;;
  }

  dimension: depot_name {
    type: string
    sql: ${TABLE}.depot_name ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: invoice {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_date ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: level0_id {
    type: string
    sql: ${TABLE}.level0_id ;;
  }

  dimension: level1_id {
    type: string
    sql: ${TABLE}.level1_id ;;
  }

  dimension: level2_id {
    type: string
    sql: ${TABLE}.level2_id ;;
  }

  dimension: level3_id {
    type: string
    sql: ${TABLE}.level3_id ;;
  }

  dimension: market_name {
    type: string
    sql: ${TABLE}.market_name ;;
  }

  dimension_group: posted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.posted_on ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_qty {
    type: sum
    sql: ${qty} ;;  }
  measure: average_qty {
    type: average
    sql: ${qty} ;;  }

  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }

  dimension: sl {
    type: number
    sql: ${TABLE}.sl ;;
  }
  dimension: order_sl {
    type: number
    sql: ${TABLE}.order_sl ;;
  }
  measure: count {
    type: count
    drill_fields: [item_name, market_name, depot_name, client_name]
  }
}
