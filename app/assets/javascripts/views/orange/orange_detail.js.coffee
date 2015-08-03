class App.Views.OrangeDetail extends Backbone.View
  template: JST['orange/orange_detail']

  initialize:(options = {})->
    _.extend @ , _.pick options , 'mon'

  render: ->
    @template(model: this.model)