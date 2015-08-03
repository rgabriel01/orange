class App.Controllers.Budgeteer extends Backbone.Router
  routes:
    "": "index"

  initialize: ->

  index: ->
    new App.Views.BudgeteerIndex().render()