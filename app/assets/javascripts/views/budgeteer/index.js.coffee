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
    $('.budgeteer-table').append(new App.Views.BudgeteerRow(model: budgetItem).render())

  getBudget: ->
    @budgets.fetch()

  SetupBudgetFormValidator: ->
    @$('#budgeteer-form').validate
      errorPlacement: (event, element) ->
        return
      rules:
        description:
          required: true
        amount:
          required: true


  saveBudget: (event) ->
    return unless $('#budgeteer-form').valid()
    budget = new App.Models.Budget()
    raw = $('#budgeteer-form').serializeArray()
    data = {}
    data['budgeteer'] = {}
    _.each raw, (field) ->
      data['budgeteer'][field.name] = field.value

    budget.save data,
      success: (model , response) ->
        # todo add handler 
      error: (model , response)->
        # todo add handler