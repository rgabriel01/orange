class App.Views.OrangesIndex extends Backbone.View

  el: "#main-orange"
  template: JST["orange/base"]

  initialize:(options) ->
    @orangeCollection = new App.Collections.Oranges()

  render: ->
    @$el.append(@template())
    @setupListeners()
    @getOrange()
    @

  setupListeners: ->
    @listenTo @orangeCollection, 'add', @renderOrangeDetails

  getOrange: ->
    @orangeCollection.fetch()

  renderOrangeDetails: (orangeDetail) ->
    orangeDetailView = new App.Views.OrangeDetail(model: orangeDetail, mon: '123')
    @$el.append(orangeDetailView.render())
