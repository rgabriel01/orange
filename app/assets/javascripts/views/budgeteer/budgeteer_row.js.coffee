class App.Views.BudgeteerRow extends Backbone.View
  tagName: "tr"
  template: JST['budgeteer/row']

  initialize: ->

  render: ->
    @$el.html(@template(model: @model))
    @$el