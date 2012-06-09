Embargo.Views.Clients ||= {}

class Embargo.Views.Clients.ClientView extends Backbone.View
  template: JST["backbone/templates/clients/client"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
