---
- dashboard: skf_live_sales_dashboard
  title: SKF Live Sales Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 minute
  preferred_slug: K8sqyzhb0szkjYKEw3vOKk
  elements:
  - title: Top Brand
    name: Top Brand
    model: live_sales_new
    explore: live_sales_dimensions
    type: looker_grid
    fields: [bm_prinfoskf.brand, count_of_client_id, count_of_sl, sum_of_sales]
    filters:
      live_sales_dimensions.invoice_date: this day
    sorts: [sum_of_sales desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: live_sales_dimensions.client_id
      expression: ''
      label: Count of Client ID
      measure: count_of_client_id
      type: count_distinct
    - category: measure
      expression: ''
      label: Count of Sl
      based_on: live_sales_dimensions.sl
      _kind_hint: measure
      measure: count_of_sl
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: live_sales_dimensions.sales
      expression: ''
      label: Sum of Sales
      measure: sum_of_sales
      type: sum
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      count_of_client_id: Customer Cov.
      count_of_sl: Invoice Count
      sum_of_sales: Sales Value
    series_cell_visualizations:
      count_of_client_id:
        is_active: false
      sum_of_sales:
        is_active: true
    series_text_format:
      count_of_sl:
        align: right
      count_of_client_id:
        align: right
      bm_prinfoskf.brand:
        align: left
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 4
    col: 0
    width: 12
    height: 6
  - title: Top Individual Item
    name: Top Individual Item
    model: live_sales_new
    explore: live_sales_dimensions
    type: looker_grid
    fields: [count_of_client_id, count_of_sl, sum_of_qty, bm_prinfoskf.itemname]
    filters:
      live_sales_dimensions.invoice_date: this day
    sorts: [sum_of_qty desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: live_sales_dimensions.client_id
      expression: ''
      label: Count of Client ID
      measure: count_of_client_id
      type: count_distinct
    - category: measure
      expression: ''
      label: Count of Sl
      based_on: live_sales_dimensions.sl
      _kind_hint: measure
      measure: count_of_sl
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of QTY
      based_on: live_sales_dimensions.qty
      _kind_hint: measure
      measure: sum_of_qty
      type: sum
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      count_of_client_id: Customer Cov.
      count_of_sl: Invoice Count
      sum_of_sales: Sales Value
      bm_prinfoskf.itemname: Item Name
      sum_of_qty: Sales QTY
    series_cell_visualizations:
      count_of_client_id:
        is_active: false
      sum_of_sales:
        is_active: true
      sum_of_qty:
        is_active: true
    series_text_format:
      bm_prinfoskf.itemname:
        align: left
      count_of_client_id:
        align: right
      count_of_sl:
        align: right
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 4
    col: 12
    width: 12
    height: 6
  - title: 'Top Performer: Regional Sales Manager'
    name: 'Top Performer: Regional Sales Manager'
    model: live_sales_new
    explore: live_sales_dimensions
    type: looker_grid
    fields: [count_of_client_id, count_of_sl, sum_of_sales, live_sales_dimensions.level1_id]
    filters:
      live_sales_dimensions.invoice_date: this day
    sorts: [sum_of_sales desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: live_sales_dimensions.client_id
      expression: ''
      label: Count of Client ID
      measure: count_of_client_id
      type: count_distinct
    - category: measure
      expression: ''
      label: Count of Sl
      based_on: live_sales_dimensions.sl
      _kind_hint: measure
      measure: count_of_sl
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Sales
      based_on: live_sales_dimensions.sales
      _kind_hint: measure
      measure: sum_of_sales
      type: sum
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      count_of_client_id: Cust Cov
      count_of_sl: Inv Count
      sum_of_sales: Sales Value
      bm_prinfoskf.itemname: Item Name
      sum_of_qty: Sales QTY
      live_sales_dimensions.level3_id: MSO TR
      live_sales_dimensions.market_name: Market
      live_sales_dimensions.client_name: Customer
      live_sales_dimensions.client_id: Customer ID
      live_sales_dimensions.level1_id: RSM Code
    series_cell_visualizations:
      count_of_client_id:
        is_active: false
      sum_of_sales:
        is_active: true
        value_display: true
      sum_of_qty:
        is_active: true
    series_text_format:
      live_sales_dimensions.level1_id:
        align: center
      sum_of_sales:
        align: left
      count_of_client_id:
        align: right
      count_of_sl:
        align: right
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 10
    col: 0
    width: 12
    height: 7
  - title: Top Valuable Customers
    name: Top Valuable Customers
    model: live_sales_new
    explore: live_sales_dimensions
    type: looker_grid
    fields: [sum_of_sales, live_sales_dimensions.client_id, live_sales_dimensions.client_name,
      live_sales_dimensions.market_name, live_sales_dimensions.level3_id]
    filters:
      live_sales_dimensions.invoice_date: this day
    sorts: [sum_of_sales desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Sum of Sales
      based_on: live_sales_dimensions.sales
      _kind_hint: measure
      measure: sum_of_sales
      type: sum
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      count_of_client_id: Cust Cov
      count_of_sl: Inv Count
      sum_of_sales: Sales Value
      bm_prinfoskf.itemname: Item Name
      sum_of_qty: Sales QTY
      live_sales_dimensions.level3_id: MSO TR
      live_sales_dimensions.market_name: Market
      live_sales_dimensions.client_name: Customer
      live_sales_dimensions.client_id: Customer ID
    series_column_widths:
      live_sales_dimensions.level3_id: 102
    series_cell_visualizations:
      count_of_client_id:
        is_active: false
      sum_of_sales:
        is_active: true
      sum_of_qty:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 17
    col: 0
    width: 12
    height: 7
  - title: 'Top Performer: Field Manager'
    name: 'Top Performer: Field Manager'
    model: live_sales_new
    explore: live_sales_dimensions
    type: looker_grid
    fields: [count_of_client_id, count_of_sl, sum_of_sales, live_sales_dimensions.level2_id]
    filters:
      live_sales_dimensions.invoice_date: this day
    sorts: [sum_of_sales desc]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: live_sales_dimensions.client_id
      expression: ''
      label: Count of Client ID
      measure: count_of_client_id
      type: count_distinct
    - category: measure
      expression: ''
      label: Count of Sl
      based_on: live_sales_dimensions.sl
      _kind_hint: measure
      measure: count_of_sl
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Sales
      based_on: live_sales_dimensions.sales
      _kind_hint: measure
      measure: sum_of_sales
      type: sum
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      count_of_client_id: Cust Cov
      count_of_sl: Inv Count
      sum_of_sales: Sales Value
      bm_prinfoskf.itemname: Item Name
      sum_of_qty: Sales QTY
      live_sales_dimensions.level3_id: MSO TR
      live_sales_dimensions.market_name: Market
      live_sales_dimensions.client_name: Customer
      live_sales_dimensions.client_id: Customer ID
      live_sales_dimensions.level1_id: RSM Code
      live_sales_dimensions.level2_id: FM Code
    series_column_widths:
      count_of_sl: 101
      count_of_client_id: 119
    series_cell_visualizations:
      count_of_client_id:
        is_active: false
      sum_of_sales:
        is_active: true
      sum_of_qty:
        is_active: true
    series_text_format:
      live_sales_dimensions.level2_id:
        align: center
      count_of_client_id:
        align: right
      count_of_sl:
        align: right
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 10
    col: 12
    width: 12
    height: 7
  - title: Cumulative Sales
    name: Cumulative Sales
    model: live_sales_new
    explore: live_sales_dimensions
    type: looker_line
    fields: [live_sales_dimensions.thirty_minute_interval, live_sales_dimensions.cumulative_sales]
    filters:
      live_sales_dimensions.invoice_date: this day
    sorts: [live_sales_dimensions.thirty_minute_interval]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: substring(${live_sales_dimensions.thirty_minute_interval},12,5)
      label: Timestamp
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: timestamp
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: live_sales_dimensions.cumulative_sales,
            id: live_sales_dimensions.cumulative_sales, name: Cumulative Sales}],
        showLabels: true, showValues: true, maxValue: 80000000, minValue: 0, unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 33, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '4'
    hide_legend: false
    series_labels:
      live_sales_dimensions.cumulative_sales: Cumulative Sales
    x_axis_datetime_label: ''
    column_spacing_ratio: 0.1
    column_group_spacing_ratio: 0.1
    show_dropoff: false
    defaults_version: 1
    hidden_fields: [live_sales_dimensions.thirty_minute_interval]
    listen: {}
    row: 0
    col: 7
    width: 17
    height: 4
  - title: Live Sales Value
    name: Live Sales Value
    model: live_sales_new
    explore: live_sales_dimensions
    type: single_value
    fields: [sum_of_sales]
    filters:
      live_sales_dimensions.invoice_date: this day
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: live_sales_dimensions.sales
      expression: ''
      label: Sum of Sales
      measure: sum_of_sales
      type: sum
    - category: table_calculation
      expression: concat(round(${sum_of_sales}/10000000,2),"CR")
      label: Sales Value
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: sales_value
      _type_hint: string
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Live Sales in Crore
    hidden_fields: [sum_of_sales]
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 7
    height: 4
  - title: Top Valued Orders
    name: Top Valued Orders
    model: live_sales_new
    explore: live_sales_dimensions
    type: looker_grid
    fields: [sum_of_sales, live_sales_dimensions.client_id, live_sales_dimensions.client_name,
      live_sales_dimensions.market_name, live_sales_dimensions.level3_id, live_sales_dimensions.depot_name,
      live_sales_dimensions.depot_id, live_sales_dimensions.order_sl]
    filters:
      live_sales_dimensions.invoice_date: this day
    sorts: [sum_of_sales desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Sum of Sales
      based_on: live_sales_dimensions.sales
      _kind_hint: measure
      measure: sum_of_sales
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: concat(${live_sales_dimensions.depot_id},"-",${live_sales_dimensions.order_sl})
      label: Order Sl
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: order_sl
      _type_hint: string
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      count_of_client_id: Cust Cov
      count_of_sl: Inv Count
      sum_of_sales: Sales Value
      bm_prinfoskf.itemname: Item Name
      sum_of_qty: Sales QTY
      live_sales_dimensions.level3_id: MSO TR
      live_sales_dimensions.market_name: Market
      live_sales_dimensions.client_name: Customer
      live_sales_dimensions.client_id: Customer ID
      invoice_no: Invoice No
      live_sales_dimensions.depot_name: Branch
    series_column_widths:
      live_sales_dimensions.level3_id: 102
    series_cell_visualizations:
      count_of_client_id:
        is_active: false
      sum_of_sales:
        is_active: true
      sum_of_qty:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [live_sales_dimensions.depot_id, live_sales_dimensions.order_sl]
    listen: {}
    row: 17
    col: 12
    width: 12
    height: 7
