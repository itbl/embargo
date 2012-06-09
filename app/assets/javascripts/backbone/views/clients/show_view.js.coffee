Embargo.Views.Clients ||= {}

class Embargo.Views.Clients.ShowView extends Backbone.View
  template: JST["backbone/templates/clients/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
