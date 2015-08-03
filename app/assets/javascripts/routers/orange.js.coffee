class App.Controllers.Oranges extends Backbone.Router

  routes:
    "": "index"

  initialize: (options) ->

  index: (params)->
    @index = new App.Views.OrangesIndex({mon: '123'})
    @index.render()
