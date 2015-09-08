class App.Views.TodoTableView extends Backbone.View
  classname: '.todo-table-container'
  templateTable: JST['todo/table']
  templateRow: JST['todo/table_row']

  render: ->
    @$el.html(@templateTable())

  renderTableRow: (model) ->
    @$el.append(@templateRow(row: model))