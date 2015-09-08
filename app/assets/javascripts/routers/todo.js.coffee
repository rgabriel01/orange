class App.Controllers.Todo extends Backbone.Router
  routes:
    '':'index'

  initialize: ->

  index: ->
    new App.Views.TodoIndex().render()