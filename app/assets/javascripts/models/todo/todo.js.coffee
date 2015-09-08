class App.Models.Todo extends Backbone.Model
  urlRoot: "/todo"
  description: ->
    @get('description')
  date:->
    @get('created_at')