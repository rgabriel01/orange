class App.Views.BudgeteerIndex extends Backbone.View
  el: '#budgeeter-main'
  template: JST['budgeteer/index']
  events:
    'click #submit':'saveBudget'

  initialize: ->
    @budgets = new App.Collections.Budgets()

  render: ->
    @$el.html(@template())
    @setupListeners()
    @getBudget()
    @

  setupListeners: ->
    @listenTo @budgets, 'add' , @renderBudgetTable
    @SetupBudgetFormValidator()

  renderBudgetTable: (budgetItem) ->
    debugger
    $('.budgeteer-table').append(new App.Views.BudgeteerRow(model: budgetItem).render())

  getBudget: ->
    @budgets.fetch()

  SetupBudgetFormValidator: ->
    @$('#budgeteer-form').validate 
      submitHandler: ->


  saveBudget: (event) ->
    debugger
    budget = new App.Models.Budget()
    raw = $('#budgeteer-form').serializeArray()
    data = {}
    data['budgeteer'] = {}
    _.each raw, (field) ->
      data['budgeteer'][field.name] = field.value

    budget.save data,
      success: (model , response) ->
        debugger
      error: (model , response)->
        debugger