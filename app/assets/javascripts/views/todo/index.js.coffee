class App.Views.TodoIndex extends Backbone.View
  el: '#main.todo'
  templates:
    templateFilter: JST['todo/index']
    todoModal: JST['todo/todo_modal']

  events:
    'click #addTodo' : 'addTodo'

  initialize: (options = {}) ->
    @todoCollection = new App.Collections.Todos()
    @todoTable = new App.Views.TodoTableView()

  render: ->
    @$el.html(@templates.templateFilter())
    @$el.find('.todo-table-container').append(@todoTable.render())
    @setupListeners()
    @todoCollection.fetch()
    @

  setupListeners: ->
    @listenTo @todoCollection, 'add', @addToTable

  addToTable: (todoItem) ->
    @todoTable.renderTableRow(todoItem)

  getTodos: ->
    @todCollection.fetch()

  addTodo: ->
    $(@templates.todoModal()).modal()

