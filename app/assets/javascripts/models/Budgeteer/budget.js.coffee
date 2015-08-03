class App.Models.Budget extends Backbone.Model
  urlRoot: "/budgeteer"

  description: ->
    @get('description')
  amount: ->
    @get('amount')
  date:->
    @get('created_at')